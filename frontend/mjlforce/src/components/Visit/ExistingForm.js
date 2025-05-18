import React, { useCallback, useEffect, useState } from "react";
import Auth from "../../auth/Auth";

export default function ExistingForm() {
  const { http } = Auth();

  const [fetchData, setFetchdata] = useState({
    soldToParties: [],
    shipToParties: [],
  });

  const fetchFormData = useCallback(() => {
    http
      .get("/existing_visit")
      .then((res) => {
        console.log(res.data);
        setFetchdata((prev) => ({
          ...prev,
          soldToParties: res.data.soldToParties,
        }));
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchFormData();
  }, [fetchFormData]);

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
      })
      .catch((res) => {
        console.log(res);
      });
  };

  return (
    <form className="form theme-form">
      <div className="card-body">
        <div className="row">
          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleFormControlInput1">
                Customer Name
              </label>
              <select
                className="form-select"
                id="sold_to_party_id"
                name="sold_to_party_id"
                onChange={soldToPartyChangeHnadler}
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
                Visit Purpose
              </label>
              <select
                className="form-select"
                id="visit_purpose"
                name="visit_purpose"
              >
                <option>New Order</option>
                <option>Feedback</option>
                <option>Routine Visit</option>
                <option>Customer Query</option>
                <option>MARCOM Activity</option>
                <option>Inspevtion</option>
                <option>Survey</option>
                <option>Training</option>
                <option>Seminer</option>
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
                id="visit_purpose_other"
                type="text"
                name="visit_purpose_other"
                placeholder=""
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
                multiple=""
              >
                <option>Poor</option>
                <option>Good</option>
                <option>Very Good</option>
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
                id="stock_ver"
                name="stock_ver"
                multiple=""
              >
                <option>Nill</option>
                <option>Moderate</option>
                <option>Sufficient</option>
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
                id="sales_performance"
                name="sales_performance"
                multiple=""
              >
                <option>Satisfactory</option>
                <option>Unsatisfactory</option>
                <option>N/A</option>
              </select>
            </div>
          </div>

          <div className="col-md-4">
            <div>
              <label className="form-label" htmlFor="remarks">
                Remarks
              </label>
              <textarea
                className="form-control"
                id="remarks"
                name="remarks"
                rows="3"
              ></textarea>
            </div>
          </div>
        </div>
      </div>
      <div className="card-footer text-end">
        <button className="btn btn-primary" type="button">
          Submit
        </button>
        <input className="btn btn-light" type="reset" value="Cancel" />
      </div>
    </form>
  );
}
