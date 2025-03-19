import React, { useEffect, useState } from "react";
import TopNavigation from "./TopNavigation/TopNavigation";
import Sidebar from "./Sidebar/Sidebar";
import Footer from "./Footer/Footer";

export default function Main({ children }) {
  const [isOpenSideBar, setIsOpenSideBar] = useState(false);

  useEffect(() => {
    window.scrollTo(0, 0); // Scroll to top when component mounts
  }, []);

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
