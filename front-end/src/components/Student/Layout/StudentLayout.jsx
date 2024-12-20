import StudentHeader from "./StudentHeader";

const StudentLayout = ({ children }) => {
  return (
    <div style={{ display: "flex" }}>
      <div style={{ flexGrow: 1 }}>
        <StudentHeader />
        <div style={{ padding: "20px", width: "80%", margin: "0 auto" }}>
          {children}
        </div>
      </div>
    </div>
  );
};

export default StudentLayout;
