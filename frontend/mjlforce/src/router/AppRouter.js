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
import Leads from "../components/Leads/Leads";
import LeadsProcess from "../components/Leads/LeadsProcess";
import VerifyCma from "../components/VerifyCma/VerifyCma";
import SoldToPartyVerify from "../components/VerifyCma/SoldToPartyVerify";
import ShipToPartyVerify from "../components/VerifyCma/ShipToPartyVerify";
import Complaint from "../components/Complaint/Complaint";
import Reports from "../components/Reports/Reports";
import ActivityLog from "../components/Reports/ActivityLog";
import VisitLog from "../components/Reports/VisitLog";
import Profile from "../components/Profile/Profile";

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
        path="/complaint"
        element={
          <AuthMiddleware>
            <Complaint />
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
        path="/leads"
        element={
          <AuthMiddleware>
            <Leads />
          </AuthMiddleware>
        }
      />
      <Route
        path="/leads_process/:id"
        element={
          <AuthMiddleware>
            <LeadsProcess />
          </AuthMiddleware>
        }
      />
      <Route
        path="/promotional_items/:id"
        element={
          <AuthMiddleware>
            <PromotionalItems />
          </AuthMiddleware>
        }
      />
      <Route
        path="/verify_new_cma"
        element={
          <AuthMiddleware>
            <VerifyCma />
          </AuthMiddleware>
        }
      />
      <Route
        path="/s2p_varify/:id"
        element={
          <AuthMiddleware>
            <SoldToPartyVerify />
          </AuthMiddleware>
        }
      />
      <Route
        path="/sh2p_varify/:id"
        element={
          <AuthMiddleware>
            <ShipToPartyVerify />
          </AuthMiddleware>
        }
      />
      <Route
        path="/reports"
        element={
          <AuthMiddleware>
            <Reports />
          </AuthMiddleware>
        }
      />
      <Route
        path="/activity_log"
        element={
          <AuthMiddleware>
            <ActivityLog />
          </AuthMiddleware>
        }
      />
      <Route
        path="/visit_log"
        element={
          <AuthMiddleware>
            <VisitLog />
          </AuthMiddleware>
        }
      />
      <Route
        path="/profile"
        element={
          <AuthMiddleware>
            <Profile />
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
