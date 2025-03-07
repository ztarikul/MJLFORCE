import React from "react";
import { Link } from "react-router-dom";

export default function LoginPage() {
  return (
    <section>
      <div className="container-fluid p-0">
        <div className="row">
          <div className="col-12">
            <div className="login-card">
              <form className="theme-form login-form">
                <h4>Login</h4>
                <h6>Welcome back! Log in to your account.</h6>
                <div className="form-group">
                  <label>Email Address</label>
                  <div className="input-group">
                    <span className="input-group-text">
                      <i className="icon-email"></i>
                    </span>
                    <input
                      className="form-control"
                      type="email"
                      required=""
                      placeholder="Test@gmail.com"
                    />
                  </div>
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
                      name="login[password]"
                      required=""
                      placeholder="*********"
                    />
                    <div className="show-hide">
                      <span className="show"> </span>
                    </div>
                  </div>
                </div>
                <div className="form-group">
                  <div className="checkbox">
                    <input id="checkbox1" type="checkbox" />
                    <label for="checkbox1">Remember password</label>
                  </div>
                  <Link className="link" href="forget-password.html">
                    Forgot password?
                  </Link>
                </div>
                <div className="form-group">
                  <button className="btn btn-primary btn-block" type="submit">
                    Sign in
                  </button>
                </div>

                <p>
                  Don't have account?
                  <a className="ms-2" href="log-in.html">
                    Create Account
                  </a>
                </p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
