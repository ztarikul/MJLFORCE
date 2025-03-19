import React from "react";
import { Navigate } from "react-router-dom";
import Auth from "../auth/Auth";

export default function AuthMiddleware({ children }) {
  const { getToken } = Auth();
  return getToken() ? children : <Navigate to="/login" />;
}
