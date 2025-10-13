import axios from "axios";
import { useState } from "react";
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

  // For using Global env
  const API_URL = process.env.REACT_APP_API_URL;

  const http = axios.create({
    baseURL: `${API_URL}/api`,
    withCredentials: true,
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json",
      ...(token && { Authorization: `Bearer ${token}` }),
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
