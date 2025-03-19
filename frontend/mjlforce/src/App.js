import React, { Fragment, useEffect, useState } from "react";
import AppRouter from "./router/AppRouter";
import TopNavigation from "./components/TopNavigation/TopNavigation";
import Sidebar from "./components/Sidebar/Sidebar";
import Footer from "./components/Footer/Footer";
import PageLoader from "./utils/PageLoader";
import Auth from "./auth/Auth";

function App() {
  const { token, logout } = Auth();

  const [pageLoading, setPageLoading] = useState(true);
  const [isUserLoggedIn, setUserLoggedIn] = useState(token ? true : false);

  useEffect(() => {
    const timer = setTimeout(() => {
      setPageLoading(false);
    }, 2000);

    return () => clearTimeout(timer);
  }, []);

  if (pageLoading) {
    return <PageLoader />;
  }
  return <AppRouter />;
}

export default App;
