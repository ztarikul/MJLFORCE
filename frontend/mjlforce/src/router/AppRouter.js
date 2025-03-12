import React, { Fragment } from "react";
import { Routes, Route } from "react-router-dom";
import HomePage from "../pages/HomePage";
import LoginPage from "../pages/LoginPage";
import VisitPage from "../pages/VisitPage";

export default function AppRouter() {
  return (
    <Fragment>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/visit" element={<VisitPage />} />
      </Routes>
    </Fragment>
  );
}
