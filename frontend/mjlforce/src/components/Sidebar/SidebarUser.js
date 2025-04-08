import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { Settings as SettingsIcon } from "react-feather";
import Auth from "../../auth/Auth";

export default function SidebarUser() {
  const { http } = Auth();
  const [sidebarEmp, setSidebarEmp] = useState({});
  useEffect(() => {
    http.get("/sidebar_user").then((res) => {
      console.log("sidebar", res.data.employee);
      setSidebarEmp(res.data.employee);
    });
  }, []);
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
        <h6 className="mt-2 f-14 f-w-600">{sidebarEmp.name}</h6>
      </Link>
      <p className="mb-0 font-roboto">
        {sidebarEmp.designation.name} - {sidebarEmp.business_team.name}
      </p>
      <ul>
        <li>
          <span>
            <span className="counter">11</span>
          </span>
          <p>Customers</p>
        </li>
        <li>
          <span>
            200 <span>ltr</span>
          </span>
          <p>Targets</p>
        </li>
        <li>
          <span>
            <span className="counter">15.69 </span>ltr
          </span>
          <p>Achievement</p>
        </li>
      </ul>
    </div>
  );
}
