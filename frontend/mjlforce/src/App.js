import React, { Fragment, useEffect, useState } from "react";
import AppRouter from "./router/AppRouter";
import TopNavigation from "./components/TopNavigation/TopNavigation";
import Sidebar from "./components/Sidebar/Sidebar";
import Footer from "./components/Footer/Footer";
import PageLoader from "./utils/PageLoader";
import Auth from "./auth/Auth";

function App() {
  const { token, logout } = Auth();
  const [isOpenSideBar, setIsOpenSideBar] = useState(false);
  const [pageLoading, setPageLoading] = useState(true);
  const [isUserLoggedIn, setUserLoggedIn] = useState(token ? true : false);

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
      {isUserLoggedIn ? (
        <div className="page-wrapper compact-wrapper" id="pageWrapper">
          <TopNavigation toggleSideBar={toggleSideBar} />
          <div className="page-body-wrapper sidebar-icon">
            <Sidebar
              className="sidebar-transition"
              isOpenSideBar={isOpenSideBar}
            />

            <div className="page-body">
              <AppRouter isUserLoggedIn={isUserLoggedIn} />
            </div>

            <Footer />
          </div>
        </div>
      ) : (
        <AppRouter isUserLoggedIn={isUserLoggedIn} />
      )}
    </Fragment>
  );
}

export default App;
