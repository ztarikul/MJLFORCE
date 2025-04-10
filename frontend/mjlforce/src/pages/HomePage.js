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
import Auth from "../auth/Auth";
import PageLoader from "../utils/PageLoader";
import Swal from "sweetalert2";
import { getCurrentLocation } from "../utils/getCurrentLocation";

export default function HomePage() {
  const { http } = Auth();
  const [employee, setEmployee] = useState({});
  const [isStartedDay, setIsStartedDay] = useState({
    in_time: null,
    out_time: null,
    lat: null,
    long: null,
    status: false,
  });
  const [isEndedDay, setIsEndededDay] = useState({
    in_time: null,
    out_time: null,
    lat: null,
    long: null,
    status: false,
  });
  const [pageLoading, setPageLoading] = useState(true);
  const [coords, setCoords] = useState({ lat: null, long: null });

  useEffect(() => {
    const welcomeCardData = async () => {
      await http
        .get("/welcome_dashboad")
        .then((res) => {
          console.log(res);
          setEmployee(res.data.employee);
        })
        .catch((res) => {
          console.log(res);
        });
    };

    const getAttendanceHistory = async () => {
      await http
        .get("/attendance_history")
        .then((res) => {
          console.log(res);
          if (res.data) {
            const inTime = res.data.find((item) => item.in_out === 1);

            if (inTime) {
              setIsStartedDay({
                in_time: inTime.time,
                lat: inTime.lat,
                long: inTime.long,
                status: true,
              });
            }
            const outTime = res.data.find((item) => item.in_out === 0);

            if (outTime) {
              setIsEndededDay({
                out_time: outTime.time,
                lat: outTime.lat,
                long: outTime.long,
                status: true,
              });
            }
          }
          setPageLoading(false);
        })
        .catch((res) => {
          console.log("err", res);
        });
    };

    welcomeCardData();
    getAttendanceHistory();
  }, []);

  const getGreeting = () => {
    const hour = new Date().getHours();

    if (hour >= 5 && hour < 12) {
      return "Good Morning!";
    } else if (hour >= 12 && hour < 17) {
      return "Good Noon!";
    } else if (hour >= 17 && hour < 21) {
      return "Good Evening!";
    } else {
      return "Good Night!";
    }
  };

  const startDaySubmit = () => {
    getCurrentLocation()
      .then((location) => {
        setCoords({ lat: location.latitude, long: location.longitude });
      })
      .catch((err) => {
        console.log(err);
      });
    http
      .post("/startday_attendance", {
        employee_id: employee.id,
        card_id: employee.card_id,
        lat: coords.lat,
        long: coords.long,
      })
      .then((res) => {
        console.log(res);
        // Swal.fire({
        //   title: "Checked In!",
        //   text: res.data.msg || "Something went wrong.",
        //   icon: "success",
        // });
      })
      .catch((error) => {
        console.log(error);
        Swal.fire({
          title: "Location Failed!",
          text: error.response.data.msg || "Something went wrong.",
          icon: "error",
        });
      });
  };

  if (pageLoading) {
    return <PageLoader />;
  }

  return (
    <Main>
      <div className="container-fluid general-widget">
        <div className="row">
          <Fragment>
            {!isStartedDay.status ? (
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
                    <h3 className="font-light">
                      Welcome Back, {employee.name}
                    </h3>
                    <p>
                      {getGreeting()} You haven't started your day on the
                      system. By starting your day, your attendance status will
                      be calculated from the current location
                    </p>
                    <button className="btn btn-light" onClick={startDaySubmit}>
                      Start Day
                    </button>
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
            ) : (
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
                      <h5 className="mt-2">{isStartedDay.in_time}</h5>
                      <p></p>
                      <p className="btn-arrow arrow-secondary">
                        <i className="toprightarrow-secondary  me-2"></i>
                        Attendance Status
                      </p>
                      <div className="parrten"></div>
                      {!isEndedDay.status ? (
                        <button className="btn btn-dark">End Day</button>
                      ) : (
                        <button className="btn btn-light">
                          Day Ended @{isEndedDay.out_time}
                        </button>
                      )}
                    </div>
                  </Link>
                </div>
              </div>
            )}
          </Fragment>

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
            <Link to="/sh2p_create">
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
