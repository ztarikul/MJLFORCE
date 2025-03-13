import React, { Fragment } from "react";
import { Routes, Route, Navigate } from "react-router-dom";
import HomePage from "../pages/HomePage";
import LoginPage from "../pages/LoginPage";
import VisitPage from "../pages/VisitPage";

export default function AppRouter(props) {
  const routes = (
    <Fragment>
      {!props.isUserLoggedIn && (
        <Fragment>
          <Route path="/login" element={<LoginPage />} />
          <Route path="*" element={<Navigate to="/login" replace />} />
        </Fragment>
      )}
      {props.isUserLoggedIn && (
        <Fragment>
          <Route path="/" element={<HomePage />} />
          <Route path="/visit" element={<VisitPage />} />
          <Route path="*" element={<Navigate to="/" replace />} />
        </Fragment>
      )}
    </Fragment>
  );

  return (
    <Fragment>
      <Routes>{routes}</Routes>
    </Fragment>
  );
}
