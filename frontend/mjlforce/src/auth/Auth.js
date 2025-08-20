import React, { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

export default function Auth() {
  const navigate = useNavigate();

  const getToken = () => {
    const tokenString = sessionStorage.getItem("token");
    const userToken = JSON.parse(tokenString);
    return userToken;
  };

  const getUser = () => {
    const userString = sessionStorage.getItem("user");
    const userDetails = JSON.parse(userString);
    return userDetails;
  };

  const [token, setToken] = useState(getToken());
  const [user, setUser] = useState(getUser());

  const saveToken = (user, token) => {
    sessionStorage.setItem("token", JSON.stringify(token));
    sessionStorage.setItem("user", JSON.stringify(user));

    setToken(token);
    setUser(user);
    navigate("/");
  };

  const logout = () => {
    sessionStorage.clear();
    navigate("/login");
  };

  const http = axios.create({
    baseURL: "/api",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${token}`,
    },
  });

  http.interceptors.response.use(
    (response) => response,
    (error) => {
      if (error.response) {
        const { status } = error.response;

        if (status === 401) {
          // Unauthenticated
          console.warn("Unauthorized — redirecting to login");
          // Optionally, redirect:
          logout();
        }

        if (status === 403) {
          // Forbidden
          alert("You are not allowed to access this resource.");
        }
      }

      return Promise.reject(error);
    }
  );

  return {
    setToken: saveToken,
    token,
    user,
    getToken,
    http,
    logout,
  };
}
