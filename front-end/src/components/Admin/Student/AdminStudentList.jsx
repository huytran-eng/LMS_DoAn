import { useState, useEffect } from "react";
import axios from "axios";
import { DataGrid } from "@mui/x-data-grid";
import { useNavigate } from "react-router-dom";
import moment from "moment";

const AdminStudentList = () => {
  const [students, setStudents] = useState([]);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();
  const token = localStorage.getItem("token"); // Retrieve JWT token

  useEffect(() => {
    fetchStudents();
  }, []);

  // Function to fetch students
  const fetchStudents = async () => {
    setLoading(true);
    try {
      const response = await axios.get(`https://localhost:7104/api/student`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      console.log(response);
      setStudents(response.data);
    } catch (error) {
      console.error("Error fetching students:", error);
      if (error.response?.status === 401) {
        alert("Session expired. Please log in again.");
        window.location.href = "/login"; // Redirect to login page
      }
    } finally {
      setLoading(false);
    }
  };

  // Handle import of Excel file
  const handleImportExcel = async (e) => {
    const file = e.target.files[0]; // Get the file from the input
    if (!file) return;

    const formData = new FormData();
    formData.append("file", file);

    try {
      const response = await axios.post(
        `https://localhost:7104/api/student/import`,
        formData,
        {
          headers: {
            Authorization: `Bearer ${token}`,
            "Content-Type": "multipart/form-data", // Make sure the content type is multipart
          },
        }
      );
      console.log(response);
      alert("Students imported successfully!");
      fetchStudents(); // Re-fetch students after import
    } catch (error) {
      console.error("Error importing students:", error);
      alert("Failed to import students.");
    }
  };

  const columns = [
    { field: "studentIdString", headerName: "Mã sinh viên", flex: 1 },
    { field: "name", headerName: "Họ và tên", flex: 1.5 },
    {
      field: "birthDate",
      headerName: "Ngày sinh",
      flex: 1,
      valueFormatter: (params) => moment(params?.value).format("DD/MM/YYYY"),
    },
    { field: "email", headerName: "Email", flex: 1 },
    { field: "address", headerName: "Địa chỉ", flex: 1 },
    { field: "phone", headerName: "Số điện thoại", flex: 1 },
    {
      field: "action",
      headerName: "Action",
      flex: 1,
      renderCell: (params) => (
        <button onClick={() => handleViewDetails(params.row)}>View</button>
      ),
    },
  ];

  const handleViewDetails = (rowData) => {
    navigate(`/admin/student/${rowData.studentId}`);
  };

  return (
    <div className="content-container" style={{ padding: "20px" }}>
      <h2 className="header-title">STUDENT LIST</h2>

      {/* <div style={{ marginBottom: "20px", textAlign: "right" }}>
        <button
          onClick={handleCreateStudent}
          style={{
            padding: "10px 20px",
            backgroundColor: "#007bff",
            color: "white",
            border: "none",
            borderRadius: "5px",
            cursor: "pointer",
          }}
        >
          Add New Student
        </button>
      </div> */}

      <div style={{ marginBottom: "20px", textAlign: "right" }}>
        <label
          htmlFor="import-students-file"
          style={{
            display: "inline-block",
            padding: "10px 20px",
            backgroundColor: "#28a745",
            color: "white",
            border: "none",
            borderRadius: "5px",
            cursor: "pointer",
            fontSize: "14px",
          }}
        >
          Import Students (Excel)
        </label>
        <input
          id="import-students-file"
          type="file"
          accept=".xlsx, .xls"
          onChange={handleImportExcel}
          style={{
            display: "none", // Hide the default file input
          }}
        />
        <p style={{ fontSize: "12px", color: "#6c757d", marginTop: "5px" }}>
          Upload an Excel file with student details to import them into the
          system.
        </p>
      </div>

      <div
        className="mt-5"
        style={{
          height: 600,
          width: "80%",
          maxWidth: "1200px",
          margin: "0 auto",
        }}
      >
        <DataGrid
          rows={students}
          columns={columns}
          pageSizeOptions={[5, 10, 25, { value: -1, label: "All" }]}
          loading={loading}
        />
      </div>
    </div>
  );
};

export default AdminStudentList;