import React, { useEffect } from "react";

export default function ExistingForm() {
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
                id="account_name"
                name="account_name"
              >
                <option>Brb energy limited</option>
                <option>M.K Motors</option>
                <option>M/S Bosu Enterprise</option>
                <option>M/S Bosu Enterprise</option>
                <option>M/S Sagor Enterprise</option>
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
                id="account_name"
                name="account_name"
              >
                <option>Brb energy limited</option>
                <option>M.K Motors</option>
                <option>M/S Bosu Enterprise</option>
                <option>M/S Bosu Enterprise</option>
                <option>M/S Sagor Enterprise</option>
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
