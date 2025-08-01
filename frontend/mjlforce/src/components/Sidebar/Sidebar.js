import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { Home as HomeIcon, Settings as SettingsIcon } from "react-feather";
import SidebarUser from "./SidebarUser";
import Auth from "../../auth/Auth";

// import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
// import { faAngleRight, faUser, faCog } from "@fortawesome/free-solid-svg-icons";

export default function Sidebar(props) {
  const { http } = Auth();
  const [sidebarUserData, setSidebarUserData] = useState({});

  useEffect(() => {
    const fetchEmployeeData = async () => {
      http
        .get("/sidebar_user")
        .then((res) => {
          setSidebarUserData(res.data.sidebarUser);
        })
        .catch((res) => {
          console.log(res);
        });
    };

    fetchEmployeeData();
  }, []);

  const [activeMenu, setActiveMenu] = useState(null);

  const handleMenuClick = (menu) => {
    setActiveMenu(activeMenu === menu ? null : menu);
  };

  return (
    <header className={`main-nav  ${!props.isOpenSideBar ? "close_icon" : ""}`}>
      <SidebarUser sidebarUserData={sidebarUserData} />
      <nav>
        <div className="main-navbar">
          <div className="left-arrow" id="left-arrow">
            <i data-feather="arrow-left"></i>
          </div>
          <div id="mainnav">
            <ul className="nav-menu custom-scrollbar">
              <li className="back-btn">
                <div className="mobile-back text-end">
                  <span>Back</span>
                  <i className="fa fa-angle-right ps-2" aria-hidden="true"></i>
                </div>
              </li>
              <li className="sidebar-main-title"></li>
              <li className="dropdown">
                <Link
                  className={`nav-link menu-title ${
                    activeMenu === "dashboard" ? "active" : ""
                  }`}
                  onClick={() => handleMenuClick("dashboard")}
                >
                  <HomeIcon
                    className="feather"
                    size={24}
                    color="currentColor"
                  />
                  <span>Accounts</span>
                  <div className="according-menu">
                    <i
                      className={
                        activeMenu === "dashboard"
                          ? "fa fa-angle-down"
                          : "fa fa-angle-right"
                      }
                    ></i>
                  </div>
                </Link>
                <ul
                  className="nav-submenu menu-content"
                  style={{
                    display: activeMenu === "dashboard" ? "block" : "none",
                  }}
                >
                  <li>
                    <Link to="/me">Profile</Link>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
          <div className="right-arrow" id="right-arrow">
            <i data-feather="arrow-right"></i>
          </div>
        </div>
      </nav>
    </header>
  );
}
