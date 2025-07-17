import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { Settings as SettingsIcon } from "react-feather";

export default function SidebarUser(props) {
  return (
    <div className="sidebar-user text-center">
      <Link className="setting-primary" to="javascript:void(0)">
        <SettingsIcon className="feather" size={24} color="currentColor" />
      </Link>
      <img
        className="img-90 rounded-circle"
        src="../assets/images/dashboard/1.png"
        alt=""
      />
      <div className="badge-bottom">
        <span className="badge badge-primary">New</span>
      </div>

      <Link to="user-profile.html">
        <h6 className="mt-2 f-14 f-w-600">
          {props?.sidebarUserData?.employee_name}
        </h6>
      </Link>
      <p className="mb-0 font-roboto">
        {props?.sidebarUserData?.employee_designation} -{" "}
        {props?.sidebarUserData?.employee_businessTeam}
      </p>
      <hr />
      <p className="mb-0 font-roboto f-w-600">
        Total Customer - {props?.sidebarUserData?.total_customer}
      </p>
      {/* <p className="mb-0 font-roboto f-w-600">
        Total Sales Target - {props?.sidebarUserData?.total_sales_target}{" "}
        <span>Barrel</span>
      </p> */}
      <p className="mb-0 font-roboto f-w-600">
        Total Sales - {props?.sidebarUserData?.total_sales} <span>Barrel</span>
      </p>
    </div>
  );
}
