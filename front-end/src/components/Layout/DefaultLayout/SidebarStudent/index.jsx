import {
    Card,
    Typography,
    List,
    ListItem,
    ListItemPrefix,
  } from "@material-tailwind/react";
  import {
    UserCircleIcon,
    Cog6ToothIcon,
    PowerIcon,
    CodeBracketIcon,
  } from "@heroicons/react/24/solid";
  import logoPtit from "../../../../assets/image/logo/Logo_PTIT.jpg";
  import { useNavigate } from "react-router-dom";
  
  function SidebarStudent() {
    const navigate = useNavigate();
  
    return (
      <Card className="h-[calc(100vh-2rem)] w-full max-w-[20rem] p-4 shadow-xl shadow-blue-gray-900/5">
        <div className="mb-2 p-4 flex justify-center items-center">
          <img src={logoPtit} alt="logo" className="w-20 h-20" />
        </div>
        <List>
          {/* <ListItem onClick={() => navigate("/monhoc")}>
            <ListItemPrefix>
              <PresentationChartBarIcon className="h-5 w-5" />
            </ListItemPrefix>
            <Typography color="blue-gray" className="mr-auto font-normal">
              Môn học
            </Typography>
          </ListItem>
          <ListItem onClick={() => navigate("/khoahoc")}>
            <ListItemPrefix>
              <BookmarkIcon className="h-5 w-5" />
            </ListItemPrefix>
            <Typography color="blue-gray" className="mr-auto font-normal">
              Khoa học
            </Typography>
          </ListItem> */}
          <ListItem onClick={() => navigate("/lophocstudent")}>
            <ListItemPrefix>
              <CodeBracketIcon className="h-5 w-5" />
            </ListItemPrefix>
            <Typography color="blue-gray" className="mr-auto font-normal">
              Lớp học
            </Typography>
          </ListItem>
          <hr className="my-2 border-blue-gray-50" />
          <ListItem>
            <ListItemPrefix>
              <UserCircleIcon className="h-5 w-5" />
            </ListItemPrefix>
            Profile
          </ListItem>
          <ListItem>
            <ListItemPrefix>
              <Cog6ToothIcon className="h-5 w-5" />
            </ListItemPrefix>
            Settings
          </ListItem>
          <ListItem>
            <ListItemPrefix>
              <PowerIcon className="h-5 w-5" />
            </ListItemPrefix>
            Log Out
          </ListItem>
        </List>
      </Card>
    );
  }
  
  export default SidebarStudent;
  