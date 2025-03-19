import React, { Fragment, useEffect, useState } from "react";
import { Link } from "react-router-dom";

import { Aperture as ApertureIcon } from "react-feather";
import checkIcon from "../icons/check.png";
import checkInLateIcon from "../icons/checkInLate.png";
import visitIcon from "../icons/visitIcon.png";
import shipToPartyIcon from "../icons/ship-to-party.png";
import shipToPartyVerifyIcon from "../icons/ship-to-party-verify.png";
import reportsIcon from "../icons/reports.png";
import campaignIcon from "../icons/campaign.png";
import Main from "../components/Main";

export default function HomePage() {
  return (
    <Main>
      <div className="container-fluid general-widget">
        <div className="row">
          <div className="col-xl-6 col-md-6 box-col-6 des-xl-50">
            <div className="card profile-greeting">
              <div className="card-header">
                <div className="header-top">
                  <div className="setting-list bg-primary position-unset">
                    <ul className="list-unstyled setting-option">
                      <li>
                        <div className="setting-white">
                          <i className="icon-settings"></i>
                        </div>
                      </li>
                      <li>
                        <i className="view-html fa fa-code font-white"></i>
                      </li>
                      <li>
                        <i className="icofont icofont-maximize full-card font-white"></i>
                      </li>
                      <li>
                        <i className="icofont icofont-minus minimize-card font-white"></i>
                      </li>
                      <li>
                        <i className="icofont icofont-refresh reload-card font-white"></i>
                      </li>
                      <li>
                        <i className="icofont icofont-error close-card font-white"></i>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div className="card-body text-center p-t-0">
                <h3 className="font-light">Welcome Back, Mr. Sales Person</h3>
                <p>
                  Good Morning! You haven't started your day on the system. By
                  starting your day, your attendance status will be calculated
                  from the current location
                </p>
                <button className="btn btn-light">Start Day</button>
              </div>
              <div className="confetti">
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="confetti-piece"></div>
                <div className="code-box-copy">
                  <button
                    className="code-box-copy__btn btn-clipboard"
                    data-clipboard-target="#profile-greeting"
                    title="Copy"
                  >
                    <i className="icofont icofont-copy-alt"></i>
                  </button>
                  <pre>
                    <code
                      className="language-html"
                      id="profile-greeting"
                    ></code>
                  </pre>
                </div>
              </div>
            </div>
          </div>

          <div className="col-xl-6 col-md-3 col-sm-6 box-col-3 des-xl-25 rate-sec">
            <div className="card income-card card-secondary">
              <Link>
                <div className="card-body text-center">
                  <div className="round-box"></div>
                  <img
                    src={checkIcon}
                    alt="check-in-location"
                    width="60"
                    height="60"
                  />
                  <h5 className="mt-2">09:09 AM</h5>
                  <p>New Market, Jessore</p>
                  <p className="btn-arrow arrow-secondary">
                    <i className="toprightarrow-secondary  me-2"></i>
                    Attendance Status
                  </p>
                  <div className="parrten"></div>
                </div>
              </Link>
            </div>
          </div>

          <div className="col-xs-6 col-xl-3 col-lg-6">
            <Link to="/visit">
              <div className="card o-hidden border-0">
                <div className="bg-primary b-r-4 card-body">
                  <div className="media static-top-widget">
                    <div className="align-self-center text-center">
                      <img
                        src={visitIcon}
                        alt="check-in-location"
                        width="60"
                        height="60"
                      />
                    </div>
                    <div className="media-body">
                      {/* <span className="m-0">Visit</span> */}
                      <h4 className="mb-0 counter">VISIT</h4>

                      <ApertureIcon
                        className="icon-bg"
                        size={24}
                        color="currentColor"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </Link>
          </div>

          <div className="col-xs-6 col-xl-3 col-lg-6">
            <Link>
              <div className="card o-hidden border-0">
                <div className="bg-primary b-r-4 card-body">
                  <div className="media static-top-widget">
                    <div className="align-self-center text-center">
                      <img
                        src={shipToPartyIcon}
                        alt="check-in-location"
                        width="60"
                        height="60"
                      />
                    </div>
                    <div className="media-body">
                      <span className="m-0">Create</span>
                      <h4 className="mb-0 counter">SHIP-TO-PARTY</h4>

                      <ApertureIcon
                        className="icon-bg"
                        size={24}
                        color="currentColor"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </Link>
          </div>

          <div className="col-xs-6 col-xl-3 col-lg-6">
            <Link>
              <div className="card o-hidden border-0">
                <div className="bg-primary b-r-4 card-body">
                  <div className="media static-top-widget">
                    <div className="align-self-center text-center">
                      <img
                        src={shipToPartyVerifyIcon}
                        alt="check-in-location"
                        width="60"
                        height="60"
                      />
                    </div>
                    <div className="media-body">
                      <span className="m-0">Verify</span>
                      <h4 className="mb-0 counter">SHIP-TO-PARTY</h4>

                      <ApertureIcon
                        className="icon-bg"
                        size={24}
                        color="currentColor"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </Link>
          </div>

          <div className="col-xs-6 col-xl-3 col-lg-6">
            <Link>
              <div className="card o-hidden border-0">
                <div className="bg-primary b-r-4 card-body">
                  <div className="media static-top-widget">
                    <div className="align-self-center text-center">
                      <img
                        src={reportsIcon}
                        alt="check-in-location"
                        width="60"
                        height="60"
                      />
                    </div>
                    <div className="media-body">
                      {/* <span className="m-0">Verify</span> */}
                      <h4 className="mb-0 counter">Reports</h4>

                      <ApertureIcon
                        className="icon-bg"
                        size={24}
                        color="currentColor"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </Link>
          </div>

          <div className="col-xs-6 col-xl-3 col-lg-6">
            <Link>
              <div className="card o-hidden border-0">
                <div className="bg-primary b-r-4 card-body">
                  <div className="media static-top-widget">
                    <div className="align-self-center text-center">
                      <img
                        src={campaignIcon}
                        alt="check-in-location"
                        width="60"
                        height="60"
                      />
                    </div>
                    <div className="media-body">
                      <span className="m-0">On going</span>
                      <h4 className="mb-0 counter">Campaign</h4>

                      <ApertureIcon
                        className="icon-bg"
                        size={24}
                        color="currentColor"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </Link>
          </div>
        </div>
      </div>
    </Main>
  );
}
