import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import Auth from "../../auth/Auth";
import Swal from "sweetalert2";

export default function Profile() {
  const { http } = Auth();
  const [isPasswordResetEnable, setIsPasswordEnable] = useState(false);
  const [errors, setErrors] = useState({});
  const [formData, setFormData] = useState({
    old_password: null,
    password: null,
    password_confirmation: null,
  });
  const [fetchData, setFetchdata] = useState({
    address: null,
    business_team: [],
    card_id: null,
    designation: [],
    doj: null,
    email: null,
    emp_code: null,
    gender: null,
    id: null,
    image: null,
    mobile: null,
    name: null,
    region: [],
    sap_code: null,
    supervisor_of_employee: [],
    territory: [],
  });

  const fetchFormData = useCallback(() => {
    http
      .get("/me")
      .then((res) => {
        console.log(res);
        setFetchdata({
          address: res.data.employee.address,
          business_team: res.data.employee.business_team,
          card_id: res.data.employee.card_id,
          designation: res.data.employee.designation,
          doj: res.data.employee.doj,
          email: res.data.employee.email,
          emp_code: res.data.employee.emp_code,
          gender: res.data.employee.gender,
          id: res.data.employee.id,
          image: res.data.employee.image,
          mobile: res.data.employee.mobile,
          name: res.data.employee.name,
          region: res.data.employee.region,
          sap_code: res.data.employee.sap_code,
          supervisor_of_employee: res.data.employee.supervisor_of_employee,
          territory: res.data.employee.territory,
        });
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchFormData();
  }, [fetchFormData]);

  const handleChange = (e) => {
    const { name, value } = e.target;

    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  const formSubmit = async (e) => {
    e.preventDefault();

    const result = await Swal.fire({
      title: "Are you sure?",
      text: "Do you want to reset your password?",
      icon: "question",
      showCancelButton: true,
      confirmButtonText: "Yes",
      cancelButtonText: "Cancel",
    });

    if (result.isConfirmed) {
      http
        .post("/password_change", formData, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then((res) => {
          console.log(res.data); // Handle success response
          Swal.fire({
            title: "Submitted!",
            text: res.data.message,
            icon: "success",
            timer: 2000,
            showConfirmButton: false,
          });
          setFormData({
            old_password: null,
            password: null,
            password_confirmation: null,
          });
        })
        .catch((error) => {
          console.log(error);
          if (error.ststus !== 401) {
            if (error.response.data.error) {
              Swal.fire({
                title: "Error!",
                text: error.response.data.error,
                icon: "error",
                timer: 2000,
                showConfirmButton: false,
              });
            } else {
              setErrors(error.response.data.errors);
            }
          }
        });
    }
  };

  return (
    <Main>
      <div className="container-fluid">
        <div className="edit-profile">
          <div className="row">
            <div className="col-md-8">
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
                          <h3 className="mb-1 f-20 txt-primary">
                            {fetchData.name}
                          </h3>
                          <p className="f-12">{fetchData.designation?.name}</p>
                        </div>
                      </div>
                    </div>
                    <div className="mb-3">
                      <p>SAP Code: {fetchData.sap_code}</p>
                      <p>Mobile: {fetchData.mobile}</p>
                      <p>Email: {fetchData.email}</p>
                      <p>Business Team: {fetchData.business_team?.name} </p>
                      <p>Region: {fetchData.region?.name}</p>
                      <p>Territory: {fetchData.territory?.name}</p>
                      <p>
                        Supervisor: {fetchData.supervisor_of_employee?.name}
                      </p>
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
                      <form className="form theme-form" onSubmit={formSubmit}>
                        <div className="row">
                          <div className="col-md-12">
                            <label className="form-label">Old Password</label>
                            <input
                              className="form-control"
                              type="password"
                              name="old_password"
                              onChange={handleChange}
                            />
                            {errors.old_password && (
                              <span className="" style={{ color: "red" }}>
                                {errors.old_password[0]}
                              </span>
                            )}
                          </div>

                          <div className="col-md-12">
                            <label className="form-label">New Password</label>
                            <input
                              className="form-control"
                              type="password"
                              name="password"
                              onChange={handleChange}
                            />
                            {errors.password && (
                              <span className="" style={{ color: "red" }}>
                                {errors.password[0]}
                              </span>
                            )}
                          </div>

                          <div className="col-md-12">
                            <label className="form-label">
                              Confirm Password
                            </label>
                            <input
                              className="form-control"
                              type="password"
                              name="password_confirmation"
                              onChange={handleChange}
                            />
                            {errors.password_confirmation && (
                              <span className="" style={{ color: "red" }}>
                                {errors.password_confirmation[0]}
                              </span>
                            )}
                          </div>
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
