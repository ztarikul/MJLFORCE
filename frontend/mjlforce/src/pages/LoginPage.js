import React, { useState } from "react";
import { Link } from "react-router-dom";
import Auth from "../auth/Auth";
import Swal from "sweetalert2";
import { getCurrentLocation } from "../utils/getCurrentLocation";

export default function LoginPage() {
  const { http, setToken } = Auth();

  const [formData, setFormData] = useState({
    username: null,
    password: null,
    long: null,
    lat: null,
    accuracy: null,
  });
  const [errors, setErrors] = useState({});

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));

    if (!formData.lat && !formData.long) {
      getCurrentLocation()
        .then((location) => {
          console.log("map", location);
          // setFormData({ lat: location.latitude, long: location.longitude });
          setFormData((prev) => ({
            ...prev,

            long: location.longitude,
            lat: location.latitude,
            accuracy: location.accuracy,
          }));
        })
        .catch((err) => {
          console.log(err);
        });
    }
    if (formData.accuracy) {
      getCurrentLocation()
        .then((location) => {
          // setFormData({ lat: location.latitude, long: location.longitude });
          if (location.accuracy < formData.accuracy) {
            console.log("Revisemap", location);
            setFormData((prev) => ({
              ...prev,
              long: location.longitude,
              lat: location.latitude,
              accuracy: location.accuracy,
            }));
          }
        })
        .catch((err) => {
          console.log(err);
        });
    }
  };

  const submitForm = () => {
    http
      .post("/login", formData)
      .then((res) => {
        console.log(res);
        setToken(
          res.data.user,
          res.data.access_token,
          res.data.user_roles,
          res.data.user_permissions,
          res.data.is_supervisor
        );
      })
      .catch((error) => {
        console.log(error);
        if (error.status === 401) {
          // setErrors(error.response.data.error);
          Swal.fire({
            title: "Login Failed!",
            text: error.response.data.error || "Something went wrong.",
            icon: "error",
          });
        } else {
          Swal.fire({
            title: "Warning",
            text: error.response.data.errors || "Something went wrong.",
            icon: "error",
          });
          setErrors(error.response.data.errors);
        }
      });
  };

  return (
    <section>
      <div className="container-fluid p-0">
        <div className="row">
          <div className="col-12">
            <div className="login-card">
              <form className="theme-form login-form">
                <img
                  className="img-fluid mb-2"
                  src="../assets/images/login/4.png"
                  alt=""
                />

                <div className="form-group">
                  <label>Username</label>
                  <div className="input-group">
                    <span className="input-group-text">
                      <i className="icon-email"></i>
                    </span>
                    <input
                      className="form-control"
                      type="text"
                      required=""
                      placeholder="Your Lamsys Username"
                      name="username"
                      onChange={handleChange}
                    />
                  </div>
                  {errors.username && (
                    <span className="" style={{ color: "red" }}>
                      {errors.username[0]}
                    </span>
                  )}
                </div>
                <div className="form-group">
                  <label>Password</label>
                  <div className="input-group">
                    <span className="input-group-text">
                      <i className="icon-lock"></i>
                    </span>
                    <input
                      className="form-control"
                      type="password"
                      name="password"
                      required=""
                      placeholder="*********"
                      onChange={handleChange}
                    />

                    <div className="show-hide">
                      <span className="show"> </span>
                    </div>
                  </div>
                  {errors.password && (
                    <span className="" style={{ color: "red" }}>
                      {errors.password[0]}
                    </span>
                  )}
                </div>
                <div className="form-group">
                  <div className="checkbox">
                    <input id="checkbox1" type="checkbox" />
                    <label htmlFor="checkbox1">Remember password</label>
                  </div>
                  <Link className="link" href="forget-password.html">
                    Forgot password?
                  </Link>
                </div>
                <div className="form-group">
                  <button
                    className="btn btn-primary btn-block"
                    type="button"
                    onClick={submitForm}
                  >
                    Sign in
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
