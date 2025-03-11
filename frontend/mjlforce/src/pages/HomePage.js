import React, { Fragment, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import TopNavigation from "../components/TopNavigation/TopNavigation";
import Sidebar from "../components/Sidebar/Sidebar";
import Footer from "../components/Footer/Footer";
import PageLoader from "../utils/PageLoader";
import { Aperture as ApertureIcon, Map as MapIcon } from "react-feather";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import checkIcon from "../icons/check.png";
export default function HomePage() {
  const [isOpenSideBar, setIsOpenSideBar] = useState(true);
  const [pageLoading, setPageLoading] = useState(true);

  useEffect(() => {
    const timer = setTimeout(() => {
      setPageLoading(false);
    }, 2000);

    return () => clearTimeout(timer);
  }, []);

  const toggleSideBar = () => {
    setIsOpenSideBar((prev) => !prev);
  };

  if (pageLoading) {
    return <PageLoader />;
  }
  return (
    <Fragment>
      <div className="page-wrapper compact-wrapper" id="pageWrapper">
        <TopNavigation toggleSideBar={toggleSideBar} />
        <div className="page-body-wrapper sidebar-icon">
          <Sidebar
            className="sidebar-transition"
            isOpenSideBar={isOpenSideBar}
          />

          <div className="page-body">
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
                      <h3 className="font-light">
                        Welcome Back, Mr. Sales Person
                      </h3>
                      <p>
                        Good Morning! You haven't started your day on the
                        system. By starting your day, your attendance status
                        will be calculated from the current location
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
                          <code className="language-html" id="profile-greeting">
                            {" "}
                            &lt;div class="card profile-greeting"&gt; &lt;div
                            class="card-header"&gt; &lt;div
                            class="header-top"&gt; &lt;div class="setting-list
                            bg-primary"&gt; &lt;ul class="list-unstyled
                            setting-option"&gt; &lt;li&gt;&lt;div
                            class="setting-white"&gt;&lt;i
                            class="icon-settings"&gt;&lt;/i&gt;&lt;/div&gt;&lt;/li&gt;
                            &lt;li&gt;&lt;i class="view-html fa fa-code
                            font-white"&gt;&lt;/i&gt;&lt;/li&gt; &lt;li&gt;&lt;i
                            class="icofont icofont-maximize full-card
                            font-white"&gt;&lt;/i&gt;&lt;/li&gt; &lt;li&gt;&lt;i
                            class="icofont icofont-minus minimize-card
                            font-white"&gt;&lt;/i&gt;&lt;/li&gt; &lt;li&gt;&lt;i
                            class="icofont icofont-refresh reload-card
                            font-white"&gt;&lt;/i&gt;&lt;/li&gt; &lt;li&gt;&lt;i
                            class="icofont icofont-error close-card
                            font-white"&gt; &lt;/i&gt;&lt;/li&gt; &lt;/ul&gt;
                            &lt;/div&gt; &lt;/div&gt; &lt;/div&gt; &lt;div
                            class="card-body text-center"&gt; &lt;h3
                            class="font-light"&gt;Wellcome Back,
                            John!!&lt;/h3&gt; &lt;p&gt;Lorem ipsum is simply
                            dummy text of the printing and typesetting
                            industry.Lorem ipsum has been&lt;/p&gt; &lt;button
                            class="btn btn-light"&gt;Update &lt;/button&gt;
                            &lt;/div&gt; &lt;/div&gt;
                          </code>
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
                        <a
                          className="btn-arrow arrow-secondary"
                          href="javascript:void(0)"
                        >
                          <i className="toprightarrow-secondary  me-2"></i>
                          Attendance Status
                        </a>
                        <div className="parrten"></div>
                      </div>
                    </Link>
                  </div>
                </div>

                <div className="col-xs-6 col-xl-3 col-lg-6">
                  <Link>
                    <div className="card o-hidden border-0">
                      <div className="bg-primary b-r-4 card-body">
                        <div className="media static-top-widget">
                          <div className="align-self-center text-center">
                            <ApertureIcon size={24} color="currentColor" />
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
                      <div className="bg-secondary b-r-4 card-body">
                        <div className="media static-top-widget">
                          <div className="align-self-center text-center">
                            <MapIcon size={24} color="currentColor" />
                          </div>
                          <div className="media-body">
                            {/* <span className="m-0">Visit</span> */}
                            <h4 className="mb-0 counter">VISIT</h4>

                            <MapIcon
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
          </div>

          <Footer />
        </div>
      </div>
    </Fragment>
  );
}
