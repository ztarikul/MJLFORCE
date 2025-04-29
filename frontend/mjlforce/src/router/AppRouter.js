import React, { Fragment } from "react";
import { Routes, Route, Navigate } from "react-router-dom";
import HomePage from "../pages/HomePage";
import LoginPage from "../pages/LoginPage";
import VisitPage from "../pages/VisitPage";
import AuthMiddleware from "../middleware/AuthMiddleware";
import ShipToParty from "../components/ShipToParty/ShipToParty";
import SalesTarget from "../components/SalesTarget/SalesTarget";
import Campaign from "../components/Campaign/Campaign";
import PromotionalItems from "../components/Campaign/PromotionalItems";

export default function AppRouter(props) {
  const routes = (
    <Fragment>
      <Route
        path="/"
        element={
          <AuthMiddleware>
            <HomePage />
          </AuthMiddleware>
        }
      />
      <Route path="/login" element={<LoginPage />} />
      <Route
        path="/visit"
        element={
          <AuthMiddleware>
            <VisitPage />
          </AuthMiddleware>
        }
      />
      <Route
        path="/sh2p_create"
        element={
          <AuthMiddleware>
            <ShipToParty />
          </AuthMiddleware>
        }
      />
      <Route
        path="/sales_target"
        element={
          <AuthMiddleware>
            <SalesTarget />
          </AuthMiddleware>
        }
      />
      <Route
        path="/campaign"
        element={
          <AuthMiddleware>
            <Campaign />
          </AuthMiddleware>
        }
      />
      <Route
        path="/promotional_items"
        element={
          <AuthMiddleware>
            <PromotionalItems />
          </AuthMiddleware>
        }
      />
      <Route path="*" element={<Navigate to="/" replace />} />
    </Fragment>
  );

  return (
    <Fragment>
      <Routes>{routes}</Routes>
    </Fragment>
  );
}
