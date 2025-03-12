import React from "react";
import { Link } from "react-router-dom";

export default function VisitPage() {
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
                    <a
                      className="nav-link"
                      id="top-home-secondary"
                      data-bs-toggle="tab"
                      href="#top-homesecondary"
                      role="tab"
                      aria-controls="top-home"
                      aria-selected="false"
                    >
                      <i class="icofont icofont-database"></i>
                      Existing
                    </a>
                    <div className="material-border"></div>
                  </li>
                  <li className="nav-item">
                    <a
                      className="nav-link active"
                      id="profile-top-secondary"
                      data-bs-toggle="tab"
                      href="#top-profilesecondary"
                      role="tab"
                      aria-controls="top-profilesecondary"
                      aria-selected="true"
                    >
                      <i class="icofont icofont-ui-add"></i>
                      New
                    </a>
                    <div className="material-border"></div>
                  </li>
                  <li className="nav-item">
                    <a
                      className="nav-link"
                      id="contact-top-secondary"
                      data-bs-toggle="tab"
                      href="#top-contactsecondary"
                      role="tab"
                      aria-controls="top-contactsecondary"
                      aria-selected="false"
                    >
                      <i class="icofont icofont-list"></i>
                      Others
                    </a>
                    <div className="material-border"></div>
                  </li>
                </ul>
                <div className="tab-content" id="top-tabContentsecondary">
                  <div
                    className="tab-pane fade"
                    id="top-homesecondary"
                    role="tabpanel"
                    aria-labelledby="top-home-tab"
                  >
                    <p>here</p>
                  </div>
                  <div
                    className="tab-pane fade active show"
                    id="top-profilesecondary"
                    role="tabpanel"
                    aria-labelledby="profile-top-tab"
                  >
                    <p>here</p>
                  </div>
                  <div
                    className="tab-pane fade"
                    id="top-contactsecondary"
                    role="tabpanel"
                    aria-labelledby="contact-top-tab"
                  >
                    <p>here</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
