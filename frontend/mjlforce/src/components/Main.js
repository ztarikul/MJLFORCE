import React, { useState } from "react";
import TopNavigation from "./TopNavigation/TopNavigation";
import Sidebar from "./Sidebar/Sidebar";
import Footer from "./Footer/Footer";

export default function Main({ children }) {
  const [isOpenSideBar, setIsOpenSideBar] = useState(false);
  const toggleSideBar = () => {
    setIsOpenSideBar((prev) => !prev);
  };

  return (
    <div className="page-wrapper compact-wrapper" id="pageWrapper">
      <TopNavigation toggleSideBar={toggleSideBar} />
      <div className="page-body-wrapper sidebar-icon">
        <Sidebar className="sidebar-transition" isOpenSideBar={isOpenSideBar} />

        <div className="page-body">{children}</div>

        <Footer />
      </div>
    </div>
  );
}
