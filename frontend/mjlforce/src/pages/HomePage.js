import React, { Fragment, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import TopNavigation from "../components/TopNavigation/TopNavigation";
import Sidebar from "../components/Sidebar/Sidebar";
import Footer from "../components/Footer/Footer";
import PageLoader from "../utils/PageLoader";
import { Aperture as ApertureIcon, Map as MapIcon } from "react-feather";

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
                <div className="col-xs-6 col-xl-3 col-lg-6">
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
                </div>
                <div className="col-xs-6 col-xl-3 col-lg-6">
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
