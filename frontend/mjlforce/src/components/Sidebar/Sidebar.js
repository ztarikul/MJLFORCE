import React, { useState } from "react";
import { Link } from "react-router-dom";
import { Home as HomeIcon, Settings as SettingsIcon } from "react-feather";
import SidebarUser from "./SidebarUser";

// import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
// import { faAngleRight, faUser, faCog } from "@fortawesome/free-solid-svg-icons";

export default function Sidebar(props) {
  const [activeMenu, setActiveMenu] = useState(null);

  const handleMenuClick = (menu) => {
    setActiveMenu(activeMenu === menu ? null : menu);
  };

  return (
    <header className={`main-nav  ${!props.isOpenSideBar ? "close_icon" : ""}`}>
      <SidebarUser />
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
              <li className="sidebar-main-title">
                <div>
                  <h6>General</h6>
                </div>
              </li>
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
                  <span>Dashboard</span>
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
                    <Link to="index.html">Default</Link>
                  </li>
                  <li>
                    <Link to="dashboard-02.html">Ecommerce</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="airplay"></i>
                  <span>Widgets</span>
                  <div className="according-menu">
                    <i className="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="general-widget.html">General</Link>
                  </li>
                  <li>
                    <Link to="chart-widget.html">Chart</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="layout"></i>
                  <span>Page layout</span>
                  <div className="according-menu">
                    <i className="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="box-layout.html">Boxed</Link>
                  </li>
                  <li>
                    <Link to="layout-rtl.html">RTL</Link>
                  </li>
                  <li>
                    <Link to="layout-dark.html">Dark</Link>
                  </li>
                  <li>
                    <Link to="footer-light.html">Footer Light</Link>
                  </li>
                  <li>
                    <Link to="footer-dark.html">Footer Dark</Link>
                  </li>
                  <li>
                    <Link to="footer-fixed.html">Footer Fixed</Link>
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
