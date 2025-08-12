import React, { useCallback, useEffect, useState } from "react";
import Auth from "../../auth/Auth";
import Swal from "sweetalert2";
import { getCurrentLocation } from "../../utils/getCurrentLocation";

export default function ExistingForm() {
  const { http } = Auth();

  const [fetchData, setFetchdata] = useState({
    soldToParties: [],
    shipToParties: [],
    visitPurposes: [],
  });

  const [formData, setFormData] = useState({
    sold_to_party_id: "",
    ship_to_party_id: "",
    visit_purpose_id: "",
    other_purpose: "",
    sales_performance: "",
    stock_verification: "",
    mkt_mat_display: "",
    remarks: "",
    long: "",
    lat: "",
    accuracy: null,
  });

  const [errors, setErrors] = useState({});

  const fetchFormData = useCallback(() => {
    http
      .get("/existing_visit")
      .then((res) => {
        console.log(res.data);
        setFetchdata((prev) => ({
          ...prev,
          soldToParties: res.data.soldToParties,
          visitPurposes: res.data.visitPurposes,
        }));
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    locationHadler();
    fetchFormData();
  }, [fetchFormData]);

  const locationHadler = () => {
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

  const soldToPartyChangeHnadler = (event) => {
    const { name, value } = event.target;
    // const selectedId = parseInt(value);
    http
      .get("/existing_visit", {
        params: {
          [name]: value,
        },
      })
      .then((res) => {
        console.log(res.data);
        setFetchdata((prev) => ({
          ...prev,
          shipToParties: res.data.shipToParties,
        }));
        setFormData((prev) => ({
          ...prev,
          [name]: value,
        }));
      })
      .catch((res) => {
        console.log(res);
      });
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));

    locationHadler();
  };

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
        .post("/store_existing_visit", formData, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then((res) => {
          console.log(res.data); // Handle success response
          Swal.fire({
            title: "Submitted!",
            text: "Your form has been submitted.",
            icon: "success",
            timer: 2000,
            showConfirmButton: false,
          });
          setFormData({
            sold_to_party_id: "",
            ship_to_party_id: "",
            visit_purpose_id: "",
            other_purpose: "",
            sales_performance: "",
            stock_verification: "",
            mkt_mat_display: "",
            remarks: "",
            long: "",
            lat: "",
            accuracy: "",
          });
        })
        .catch((error) => {
          console.log(error);
          if (error.ststus !== 401) {
            setErrors(error.response.data.errors);
          }
        });
    }
  };

  const checkInHandler = async (e) => {
    const result = await Swal.fire({
      title: "Are you sure?",
      text: "Do you want to check-in? This action will take your current location",
      icon: "question",
      showCancelButton: true,
      confirmButtonText: "check me in!",
      cancelButtonText: "Cancel",
    });
    locationHadler();

    if (result.isConfirmed) {
      http
        .post("/check_in", formData, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then((res) => {
          console.log(res);
          Swal.fire({
            title: "Submitted!",
            text: "You have checked in",
            icon: "success",
            timer: 2000,
            showConfirmButton: false,
          });
        })
        .catch((error) => {
          console.log(error);
          if (error.ststus !== 401) {
            setErrors(error.response.data.errors);
          }
        });
    }
  };

  return (
    <form className="form theme-form" onSubmit={formSubmit}>
      <div className="card-body">
        <div className="row">
          <div className="col-12">
            <div className="mb-3">
              <button
                type="button"
                className="btn btn-success"
                onClick={checkInHandler}
              >
                Check-in
              </button>
            </div>
          </div>
          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleFormControlInput1">
                Customer Name <span style={{ color: "red" }}>*</span>
              </label>
              <select
                className="form-select"
                id="sold_to_party_id"
                name="sold_to_party_id"
                onChange={soldToPartyChangeHnadler}
                value={formData.sold_to_party_id}
              >
                <option value="">Please Select</option>
                {fetchData.soldToParties?.map((sp) => (
                  <option key={sp.id} value={sp.id}>
                    {sp.acc_name}
                  </option>
                ))}
              </select>
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="group">
                Customer Site
              </label>
              <select
                className="form-select"
                id="ship_to_party_id"
                name="ship_to_party_id"
                onChange={handleChange}
                value={formData.ship_to_party_id}
              >
                <option value="">Please Select</option>
                {fetchData.shipToParties?.map((sp) => (
                  <option key={sp.id} value={sp.id}>
                    {sp.acc_name} - {sp.customer_code}
                  </option>
                ))}
              </select>
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="officeAddress">
                Visit Purpose <span style={{ color: "red" }}>*</span>
              </label>
              <select
                className="form-select"
                id="visit_purpose_id"
                name="visit_purpose_id"
                onChange={handleChange}
                value={formData.visit_purpose_id}
              >
                <option value="">Please Select</option>
                {fetchData.visitPurposes?.map((purpose) => (
                  <option key={purpose.id} value={purpose.id}>
                    {purpose.name}
                  </option>
                ))}
              </select>
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="division">
                Visit Purpose - Other
              </label>
              <input
                className="form-control"
                id="other_purpose"
                type="text"
                name="other_purpose"
                placeholder="Other Visit Purpose"
                onChange={handleChange}
                value={formData.other_purpose}
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="sales_performance">
                Sales Performance
              </label>
              <select
                className="form-select"
                id="sales_performance"
                name="sales_performance"
                onChange={handleChange}
                value={formData.sales_performance}
              >
                <option value="">Please Select</option>
                <option value="Poor">Poor</option>
                <option value="Good">Good</option>
                <option value="Very Good">Very Good</option>
              </select>
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="stock_ver">
                Stock Verification
              </label>
              <select
                className="form-select"
                id="stock_verification"
                name="stock_verification"
                onChange={handleChange}
                value={formData.stock_verification}
              >
                <option value="">Please Select</option>
                <option value="Nill">Nill</option>
                <option value="Moderate">Moderate</option>
                <option value="Sufficient">Sufficient</option>
              </select>
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="sales_performance">
                Merketing Materials Display
              </label>
              <select
                className="form-select"
                id="mkt_mat_display"
                name="mkt_mat_display"
                onChange={handleChange}
                value={formData.mkt_mat_display}
              >
                <option value="">Please Select</option>
                <option value="Satisfactory">Satisfactory</option>
                <option value="Unsatisfactory">Unsatisfactory</option>
                <option value="N/A">N/A</option>
              </select>
            </div>
          </div>

          <div className="col-md-4">
            <div>
              <label className="form-label" htmlFor="remarks">
                Remarks <span style={{ color: "red" }}>*</span>
              </label>
              <textarea
                className="form-control"
                id="remarks"
                name="remarks"
                rows="3"
                onChange={handleChange}
                value={formData.remarks}
              ></textarea>
            </div>
          </div>
        </div>
      </div>
      <div className="card-footer text-end">
        <button className="btn btn-primary" type="submit">
          Submit
        </button>
        <input className="btn btn-light" type="reset" value="Cancel" />
      </div>
    </form>
  );
}
