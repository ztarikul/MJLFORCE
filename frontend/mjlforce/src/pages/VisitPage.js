import React, { useState } from "react";
import { Link } from "react-router-dom";
import ExistingForm from "../components/Visit/ExistingForm";

export default function VisitPage() {
  const [activeMenu, setActiveMenu] = useState(null);

  const handleMenuClick = (menu) => {
    setActiveMenu(activeMenu === menu ? null : menu);
  };

  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-xl-6 xl-100 col-lg-12 box-col-12">
          <div className="card">
            {/* <div className="card-header">
                      <h5 className="pull-left">Material tab with color</h5>
                    </div> */}
            <div className="card-body">
              <div className="tabbed-card">
                <ul
                  className="pull-right nav nav-tabs border-tab nav-secondary"
                  id="top-tabsecondary"
                  role="tablist"
                >
                  <li className="nav-item">
                    <Link
                      id="top-home-secondary"
                      data-bs-toggle="tab"
                      className={`nav-link ${
                        activeMenu === "existing" ? "active" : ""
                      }`}
                      onClick={() => handleMenuClick("existing")}
                      role="tab"
                      aria-controls="top-home"
                      aria-selected="false"
                    >
                      <i class="icofont icofont-database"></i>
                      Existing
                    </Link>
                    <div className="material-border"></div>
                  </li>
                  <li className="nav-item">
                    <Link
                      className={`nav-link ${
                        activeMenu === "new" ? "active" : ""
                      }`}
                      onClick={() => handleMenuClick("new")}
                      id="profile-top-secondary"
                      data-bs-toggle="tab"
                      role="tab"
                      aria-controls="top-profilesecondary"
                      aria-selected="true"
                    >
                      <i class="icofont icofont-ui-add"></i>
                      New
                    </Link>
                    <div className="material-border"></div>
                  </li>
                  <li className="nav-item">
                    <Link
                      className={`nav-link ${
                        activeMenu === "others" ? "active" : ""
                      }`}
                      onClick={() => handleMenuClick("others")}
                      id="contact-top-secondary"
                      data-bs-toggle="tab"
                      role="tab"
                      aria-controls="top-contactsecondary"
                      aria-selected="false"
                    >
                      <i class="icofont icofont-list"></i>
                      Others
                    </Link>
                    <div className="material-border"></div>
                  </li>
                </ul>

                <div className="tab-content" id="top-tabContentsecondary">
                  {activeMenu === "existing" && <ExistingForm />}
                  {activeMenu === "new" && <p>new</p>}
                  {activeMenu === "others" && <p>Othesr</p>}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
