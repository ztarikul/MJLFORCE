import React, { Fragment, useState } from "react";
import { Link } from "react-router-dom";
import TopNavigation from "../components/TopNavigation/TopNavigation";
import Sidebar from "../components/Sidebar/Sidebar";
import Footer from "../components/Footer/Footer";

export default function HomePage() {
  const [isOpenSideBar, setIsOpenSideBar] = useState(true);

  const toggleSideBar = () => {
    setIsOpenSideBar((prev) => !prev);
  };

  return (
    <Fragment>
      <div className="page-wrapper compact-wrapper" id="pageWrapper">
        <TopNavigation toggleSideBar={toggleSideBar} />
        <div className="page-body-wrapper sidebar-icon">
          <Sidebar isOpenSideBar={isOpenSideBar} />
          <div className="page-body">
            <h1>I am Main</h1>
          </div>

          <Footer />
        </div>
      </div>
    </Fragment>
  );
}
