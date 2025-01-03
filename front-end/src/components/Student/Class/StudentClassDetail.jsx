/* eslint-disable react-hooks/exhaustive-deps */
import { useState, useEffect } from "react";
import axios from "axios";
import { DataGrid } from "@mui/x-data-grid";
import {
  Box,
  Typography,
  Tabs,
  Tab,
  Grid,
  IconButton,
  Accordion,
  AccordionSummary,
  AccordionDetails,
  Button
} from "@mui/material";
import { useParams, useNavigate } from "react-router-dom";
import moment from "moment";
import {} from "@mui/x-data-grid-pro";
import { baseUrl } from "../../../util/constant";
import { Visibility, Download } from "@mui/icons-material";
import ExpandMoreIcon from "@mui/icons-material/ExpandMore";
import Swal from "sweetalert2";

const StudentClassDetail = () => {
  const [activeTab, setActiveTab] = useState(0); // Track active tab index
  const [classDetails, setClassDetails] = useState(null); // Class details data
  const [students, setStudents] = useState([]); // Students data
  const [topics, setTopics] = useState([]); // Opened topics data
  const [materials, setMaterials] = useState([]); // Class study materials
  const [loading, setLoading] = useState(false); // Loading state
  const token = localStorage.getItem("token"); // Retrieve JWT token
  const { id } = useParams(); // Get class ID from URL
  const user = JSON.parse(localStorage.getItem("userInfo"));
  const navigate = useNavigate();
  useEffect(() => {
    fetchClassDetails();
  }, []);

  useEffect(() => {
    if (activeTab === 0) {
      fetchStudents();
    } else if (activeTab === 1) {
      fetchTopics();
    } else {
      fetchMaterials();
    }
  }, [activeTab]);

  const fetchClassDetails = async () => {
    try {
      const response = await axios.get(baseUrl + `class/${id}`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      setClassDetails(response.data);
      if (response.data.status === 0) {
        Swal.fire({
          title: 'Không thể truy cập',
          text: 'Lớp học này chưa bắt đầu và không thể được truy cập.',
          icon: 'warning',
          confirmButtonText: 'OK',
        }).then(() => {
          navigate('class'); // Navigate back to the class list
        });
      }

      if (response.data.status === 2) {
        Swal.fire({
          title: 'Không thể truy cập',
          text: 'Lớp học này đã kết thúc và không thể được truy cập.',
          icon: 'warning',
          confirmButtonText: 'OK',
        }).then(() => {
          navigate('class'); // Navigate back to the class list
        });
      }
    } catch (error) {
      console.error("Error fetching class details:", error);
    }
  };

  const fetchStudents = async () => {
    setLoading(true);
    try {
      const response = await axios.get(baseUrl + `class/${id}/students`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      setStudents(response.data);
    } catch (error) {
      console.error("Error fetching students:", error);
    } finally {
      setLoading(false);
    }
  };

  const fetchTopics = async () => {
    setLoading(true);
    try {
      const response = await axios.get(baseUrl + `class/${id}/topics`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      setTopics(response.data);
    } catch (error) {
      console.error("Error fetching topics:", error);
    } finally {
      setLoading(false);
    }
  };

  const handleExerciseClick = (exerciseId) => {
    if (user.position === "Student") {
      // Navigate to exercise for student
      navigate(`/class/${id}/exercise/${exerciseId}`);
    } else if (user.position === "Admin" || user.position === "Teacher") {
      // Navigate to exercise detail for Admin/Teacher
      navigate(`/class/${id}/exerciseDetail/${exerciseId}`);
    }
  };
  const handleDownloadMaterial = async (materialId) => {
    try {
      const response = await axios.get(
        baseUrl + `studymaterial/download/${materialId}`,
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
          responseType: "blob", // Important for downloading files
        }
      );

      const url = window.URL.createObjectURL(new Blob([response.data]));
      const link = document.createElement("a");
      link.href = url;
      link.setAttribute("download", "material.pdf"); // or extract the filename from response headers
      document.body.appendChild(link);
      link.click();
      link.remove();
    } catch (error) {
      console.error("Error downloading material:", error);
      Swal.fire({
        title: "Lỗi",
        text: "Không thể tải xuống tài liệu.",
        icon: "error",
        confirmButtonText: "OK",
      });
    }
  };
  const handleViewStudent = (studentId) => {
    navigate(`/class/${id}/student/${studentId}`);
  };

  const fetchMaterials = async () => {
    setLoading(true);
    try {
      const response = await axios.get(baseUrl + `class/${id}/studymaterials`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      setMaterials(response.data);
    } catch (error) {
      console.error("Error fetching materials:", error);
    } finally {
      setLoading(false);
    }
  };

  // Columns for DataGrid
  const studentColumns = [
    { field: "studentIdString", headerName: "Mã sinh viên", flex: 1 },
    { field: "name", headerName: "Họ và tên", flex: 1.5 },
    { field: "exercisesDone", headerName: "Số bài tập đã làm", flex: 1.5 },
    { field: "exercisesCorrect", headerName: "Số bài tập làm đúng", flex: 1.5 },
    {
      field: "action",
      headerName: "Action",
      flex: 1,
      renderCell: (params) => (
        <IconButton
          color="primary"
          onClick={() => handleViewStudent(params.row.id)}
          sx={{ mr: 1 }}
        >
          <Visibility /> {/* View icon */}
        </IconButton>
      ),
    },
  ];

  const exerciseColumns = [
    { field: "title", headerName: "Tên bài tập", flex: 1 },
    { field: "difficulty", headerName: "Độ khó", flex: 1 },
    {
      field: "status",
      headerName: "Trạng thái",
      flex: 1,
      renderCell: (params) => {
        const statusColors = {
          "-1": "gray", // Not done
          0: "green", // AC
          1: "red", // WA
          2: "red", // RE
          3: "yellow", // TLE
        };
        const statusLabels = {
          "-1": "Chưa làm",
          0: "AC",
          1: "WA",
          2: "RE",
          3: "TLE",
        };
        return (
          <span style={{ color: statusColors[params.value] || "inherit" }}>
            {statusLabels[params.value] || "Unknown"}
          </span>
        );
      },
    },
    {
      flex: 1,
      renderCell: (params) => (
        <IconButton
          color="primary"
          onClick={() => handleExerciseClick(params.row.id)}
          sx={{ mr: 1 }}
        >
          <Visibility /> {/* View icon */}
        </IconButton>
      ),
    },
  ];

  const materialColumns = [
    { field: "title", headerName: "Tiêu đề tài liệu", flex: 1 },
    {
      field: "createdAt",
      headerName: "Ngày tạo",
      flex: 1,
      valueGetter: (value) => {
        if (!value) {
          return "N/A";
        }
        return moment(value).format("DD/MM/YYYY");
      },
    },
    {
      field: "openDate",
      headerName: "Ngày mở",
      flex: 1,
      valueGetter: (value) => {
        if (!value) {
          return "N/A";
        }
        return moment(value).format("DD/MM/YYYY");
      },
    },
    {
      flex: 1,
      renderCell: (params) => (
        <Button onClick={() => handleDownloadMaterial(params.row.id)}>
          <Download style={{ color: "#1976d2" }} />
        </Button>
      ),
    },
  ];

  return (
    <div
      className="content-container"
      style={{ padding: "20px", width: "80%", margin: "0 auto" }}
    >
      <Typography variant="h5" component="h2" gutterBottom align="center">
        Chi tiết lớp học
      </Typography>
      <Grid container spacing={3}>
        {/* Left Column (Class Details) */}
        <Grid item xs={12} sm={4}>
          <Box
            sx={{
              p: 2,
              mb: 3,
              mt: 3,
              border: "1px solid #ccc",
              borderRadius: "8px",
              backgroundColor: "#f9f9f9",
            }}
          >
            {classDetails ? (
              <>
                <Typography variant="h6" gutterBottom>
                  {classDetails.name}
                </Typography>
                <Typography variant="body1">
                  <strong>Môn học:</strong> {classDetails.subjectName}
                </Typography>
                <Typography variant="body1">
                  <strong>Giảng viên:</strong> {classDetails.teacherName}
                </Typography>
                <Typography variant="body1">
                  <strong>Ngày bắt đầu:</strong>{" "}
                  {moment(classDetails.startDate).format("DD/MM/YYYY")}
                </Typography>
                <Typography variant="body1">
                  <strong>Ngày kết thúc:</strong>{" "}
                  {moment(classDetails.endDate).format("DD/MM/YYYY")}
                </Typography>
                <Typography variant="body1">
                  <strong>Sĩ số:</strong> {classDetails.numberOfStudent}
                </Typography>
              </>
            ) : (
              <Typography>Loading class details...</Typography>
            )}
          </Box>
        </Grid>

        {/* Right Column (Tabs and DataGrids) */}
        <Grid item xs={12} sm={8}>
          <Box sx={{ borderBottom: 1, borderColor: "divider", mb: 3 }}>
            <Tabs
              value={activeTab}
              onChange={(e, newValue) => setActiveTab(newValue)}
              aria-label="Class Details Tabs"
            >
              <Tab label="Danh sách sinh viên" />
              <Tab label="Chủ đề đã mở" />
              <Tab label="Tài liệu lớp học" />
            </Tabs>
          </Box>

          {/* Tab Content */}
          <div>
            {activeTab === 0 && (
              <DataGrid
                rows={students}
                columns={studentColumns}
                autoHeight
                pageSize={5}
                loading={loading}
              />
            )}

            {activeTab === 1 && (
              <div>
                {topics.map((topic) => (
                  <Accordion
                    key={topic.id}
                    sx={{
                      margin: "10px",
                      borderRadius: "6px",
                    }}
                  >
                    <AccordionSummary
                      expandIcon={<ExpandMoreIcon />}
                      aria-controls={`topic-${topic.id}-content`}
                      id={`topic-${topic.id}-header`}
                    >
                      <div
                        style={{
                          display: "flex",
                          width: "100%",
                          justifyContent: "space-between",
                          alignItems: "center",
                        }}
                        className="m-2"
                      >
                        <Typography sx={{ width: "33%", flexShrink: 0 }}>
                          {topic.name}
                        </Typography>
                        <Typography sx={{ width: "33%" }}>
                          Ngày mở:{" "}
                          {moment(topic.startDate).format("DD/MM/YYYY")}
                        </Typography>
                        <Typography sx={{ width: "33%" }}>
                          Ngày đóng:{" "}
                          {moment(topic.endDate).format("DD/MM/YYYY")}
                        </Typography>
                      </div>
                    </AccordionSummary>
                    <AccordionDetails>
                      <DataGrid
                        rows={topic.classExerciseListDTOs || []}
                        columns={exerciseColumns}
                        autoHeight
                        pageSize={5}
                        disableSelectionOnClick
                      />
                    </AccordionDetails>
                  </Accordion>
                ))}
              </div>
            )}
            {activeTab === 2 && (
              <DataGrid
                rows={materials}
                columns={materialColumns}
                autoHeight
                pageSize={5}
                loading={loading}
              />
            )}
          </div>
        </Grid>
      </Grid>
    </div>
  );
};
export default StudentClassDetail;
