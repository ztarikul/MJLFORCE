import React from "react";

export default function OthersForm() {
  return (
    <form className="form theme-form">
      <div className="card-body">
        <div className="row">
          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleFormControlInput1">
                Visiting Site
              </label>
              <input
                className="form-control"
                id="visiting_site"
                type="text"
                name="visiting_site"
                placeholder="xyz group limited"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="group">
                Address
              </label>
              <input
                className="form-control"
                id="address"
                type="text"
                name="address"
                placeholder="address"
              />
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="division">
                Division
              </label>
              <select className="form-select" id="division" name="division">
                <option>Dhaka</option>
                <option>Barishal</option>
                <option>Khulna</option>
                <option>Sylhet</option>
                <option>Chittagong</option>
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="district">
                District
              </label>
              <select
                className="form-select"
                id="district"
                name="district"
                multiple=""
              >
                <option>Dhaka</option>
                <option>Barishal</option>
                <option>Khulna</option>
                <option>Sylhet</option>
                <option>Chittagong</option>
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="thana">
                Upazilla/Thana
              </label>
              <select className="form-select" id="thana" name="thana">
                <option>Dhaka</option>
                <option>Barishal</option>
                <option>Khulna</option>
                <option>Sylhet</option>
                <option>Chittagong</option>
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="postOffice">
                Post Office
              </label>
              <select
                className="form-select"
                id="post_office"
                name="post_office"
              >
                <option>Dhaka</option>
                <option>Barishal</option>
                <option>Khulna</option>
                <option>Sylhet</option>
                <option>Chittagong</option>
              </select>
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="bin">
                Post Code
              </label>
              <input
                className="form-control"
                id="post_code"
                type="text"
                name="post_code"
                placeholder=""
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="officeAddress">
                Reason of Visit
              </label>
              <select
                className="form-select"
                id="visit_purpose"
                name="visit_purpose"
              >
                <option>Customer Query</option>
                <option>MARCOM Activity</option>
                <option>Inspevtion</option>
                <option>Survey</option>
                <option>Other</option>
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
