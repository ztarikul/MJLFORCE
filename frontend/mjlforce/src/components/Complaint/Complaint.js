import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import Auth from "../../auth/Auth";
import Swal from "sweetalert2";
import { getCurrentLocation } from "../../utils/getCurrentLocation";
import { useNavigate } from "react-router-dom";

export default function Complaint() {
  //   const navigate = useNavigate();
  const { http } = Auth();
  const [soldToParties, setSoldToParties] = useState([]);
  const [complaintTypes, setComplaintTypes] = useState([]);
  const [formData, setFormData] = useState({
    sold_to_party_id: "",
    complaint_type: "",
    complaint: "",
    long: "",
    lat: "",
  });
  const [errors, setErrors] = useState({});

  const fetchFormData = useCallback(() => {
    http
      .get("/complaint")
      .then((res) => {
        console.log(res);
        setSoldToParties(res.data.soldToParties);
        setComplaintTypes(res.data.complaintTypes);
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchFormData();
  }, [fetchFormData]);

  const formSubmit = async (e) => {
    e.preventDefault();

    const result = await Swal.fire({
      title: "Are you sure?",
      text: "Do you want to submit the form?",
      icon: "question",
      showCancelButton: true,
      confirmButtonText: "Yes, submit it!",
      cancelButtonText: "Cancel",
    });

    if (result.isConfirmed) {
      http
        .post("/store_complaint", formData, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then((res) => {
          console.log(res.data); // Handle success response
          if (res.data.status === "success") {
            Swal.fire({
              title: "Submitted!",
              text: "Your form has been submitted.",
              icon: "success",
              timer: 2000,
              showConfirmButton: false,
            });
            setFormData({
              sold_to_party_id: "",
              complaint_type: "",
              complaint: "",
            });

            // navigate("/");
          }
        })
        .catch((error) => {
          console.log(error);
          if (error.ststus !== 401) {
            setErrors(error.response.data.errors);
          }
        });
    }
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));

    if (!formData.lat && !formData.long) {
      getCurrentLocation()
        .then((location) => {
          // setFormData({ lat: location.latitude, long: location.longitude });
          setFormData((prev) => ({
            ...prev,
            long: location.longitude,
            lat: location.latitude,
          }));
        })
        .catch((err) => {
          console.log(err);
        });
    }
  };

  return (
    <Main>
      <div className="container-fluid">
        <div className="row">
          <div className="col-xl-12 xl-100 col-lg-12 box-col-12">
            <div className="card">
              <div className="card-header pb-0">
                <h5>Complaint</h5>
              </div>
              <div className="card-body">
                <form className="form theme-form" onSubmit={formSubmit}>
                  <div className="card-body">
                    <div className="row">
                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="sold_to_party">
                            Customer Name{" "}
                            <span style={{ color: "red" }}>*</span>
                          </label>
                          <select
                            className="form-select"
                            id="sold_to_party_id"
                            name="sold_to_party_id"
                            onChange={handleChange}
                          >
                            <option value="">Please Select</option>
                            {soldToParties.map((soldToParty) => (
                              <option
                                key={soldToParty.id}
                                value={soldToParty.id}
                              >
                                {soldToParty.acc_name}
                              </option>
                            ))}
                          </select>
                        </div>
                        {errors.sold_to_party_id && (
                          <span className="" style={{ color: "red" }}>
                            {errors.sold_to_party_id[0]}
                          </span>
                        )}
                      </div>

                      <div className="col-md-4">
                        <div className="mb-3">
                          <label
                            className="form-label"
                            htmlFor="complaint_type"
                          >
                            Complaint Types{" "}
                            <span style={{ color: "red" }}>*</span>
                          </label>
                          <select
                            className="form-select"
                            id="complaint_type"
                            name="complaint_type"
                            onChange={handleChange}
                          >
                            <option value="">Please Select</option>
                            {complaintTypes.map((type) => (
                              <option key={type.id} value={type.id}>
                                {type.name}
                              </option>
                            ))}
                          </select>
                        </div>
                        {errors.complaint_type && (
                          <span className="" style={{ color: "red" }}>
                            {errors.complaint_type[0]}
                          </span>
                        )}
                      </div>

                      <div className="col-md-4">
                        <div>
                          <label className="form-label" htmlFor="complaint">
                            Complaint <span style={{ color: "red" }}>*</span>
                          </label>
                          <textarea
                            className="form-control"
                            id="complaint"
                            name="complaint"
                            rows="6"
                            onChange={handleChange}
                          ></textarea>
                        </div>
                        {errors.complaint && (
                          <span className="" style={{ color: "red" }}>
                            {errors.complaint[0]}
                          </span>
                        )}
                      </div>
                    </div>
                  </div>
                  <div className="card-footer text-end">
                    <button className="btn btn-primary" type="submit">
                      Submit
                    </button>
                    <input
                      className="btn btn-light"
                      type="reset"
                      value="Cancel"
                    />
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
