import React, { useState } from "react";

import Main from "../Main";

export default function Profile() {
  const [isPasswordResetEnable, setIsPasswordEnable] = useState(false);
  return (
    <Main>
      <div className="container-fluid">
        <div className="edit-profile">
          <div className="row">
            <div className="col-xl-4">
              <div className="card">
                <div className="card-header pb-0">
                  <h4 className="card-title mb-0">My Profile</h4>
                  <div className="card-options"></div>
                </div>
                <div className="card-body">
                  <div className="row mb-2">
                    <div className="profile-title">
                      <div className="media">
                        <img
                          className="img-90 rounded-circle"
                          src="../assets/images/dashboard/1.png"
                          alt="profile-photo"
                        />
                        <div className="media-body">
                          <h3 className="mb-1 f-20 txt-primary">MARK JECNO</h3>
                          <p className="f-12">DESIGNER</p>
                        </div>
                      </div>
                    </div>
                    <div className="mb-3">
                      <p>SAP Code: </p>
                      <p>Mobile: </p>
                      <p>Email: </p>
                      <p>Designation: </p>
                      <p>Business Team: </p>
                      <p>Region: </p>
                      <p>Territory: </p>
                      <p>Supervisor: </p>
                    </div>
                  </div>
                  <button
                    className="btn btn-secondary"
                    onClick={() =>
                      isPasswordResetEnable
                        ? setIsPasswordEnable(false)
                        : setIsPasswordEnable(true)
                    }
                  >
                    Reset Password
                  </button>
                  {isPasswordResetEnable && (
                    <div className="mb-3">
                      <form>
                        <div className="mb-3">
                          <label className="form-label">Old Password</label>
                          <input
                            className="form-control"
                            type="password"
                            name="old_password"
                          />
                        </div>
                        <div className="mb-3">
                          <label className="form-label">New Password</label>
                          <input
                            className="form-control"
                            type="password"
                            name="password"
                          />
                        </div>
                        <div className="mb-3">
                          <label className="form-label">Confirm Password</label>
                          <input
                            className="form-control"
                            type="password"
                            name="password_confirmation"
                          />
                        </div>
                        <div className="form-footer text-end">
                          <button
                            type="submit"
                            className="btn btn-primary btn-block"
                          >
                            Save
                          </button>
                        </div>
                      </form>
                    </div>
                  )}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
