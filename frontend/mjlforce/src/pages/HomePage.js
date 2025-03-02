import React, { Fragment } from "react";
import { Link } from "react-router-dom";
import TopNavigation from "../components/TopNavigation/TopNavigation";
import Sidebar from "../components/Sidebar/Sidebar";
import Footer from "../components/Footer/Footer";

export default function HomePage() {
  return (
    <Fragment>
      <div className="page-wrapper compact-wrapper" id="pageWrapper">
        <TopNavigation />
        <div className="page-body-wrapper sidebar-icon">
          <Sidebar />
          <div className="page-body">
            <h1>I am Main</h1>
          </div>

          <Footer />
        </div>
      </div>
    </Fragment>
  );
}
