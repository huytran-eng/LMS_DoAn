// src/components/Layout/DefaultLayout/Header.jsx
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import "../../../../styles/homeStyles.css"; // Đường dẫn từ Header đến homeStyles


const Header = () => {
  const [username, setUsername] = useState("");

  useEffect(() => {
    const storedUserInfo = localStorage.getItem("userInfo");
    if (storedUserInfo) {
      const userInfo = JSON.parse(storedUserInfo);
      setUsername(userInfo.username || "User"); // Fallback to "User" if username is not present
    }
  }, []);
  return (
    <header className="header">
      {" "}
      {/* Áp dụng lớp CSS cho header */}
      <nav>
        <h1></h1>
        <ul>
          <li>
            <Link className="header_navbar-item" to="#">
              Thông báo
            </Link>
          </li>
          <li>
            <Link className="header_navbar-item" to="#">
              Trợ giúp
            </Link>
          </li>
          <li>
            <Link className="header_navbar-item" to="#">
              {username}
            </Link>
          </li>
        </ul>
      </nav>
    </header>
  );
};

export default Header;
