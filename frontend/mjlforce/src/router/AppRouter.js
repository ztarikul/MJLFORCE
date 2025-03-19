import React, { Fragment } from "react";
import { Routes, Route, Navigate } from "react-router-dom";
import HomePage from "../pages/HomePage";
import LoginPage from "../pages/LoginPage";
import VisitPage from "../pages/VisitPage";

export default function AppRouter(props) {
  const routes = (
    <Fragment>
      <Route path="/" element={<HomePage />} />
      <Route path="/login" element={<LoginPage />} />

      <Route path="/visit" element={<VisitPage />} />
      <Route path="*" element={<Navigate to="/" replace />} />
    </Fragment>
  );

  return (
    <Fragment>
      <Routes>{routes}</Routes>
    </Fragment>
  );
}
