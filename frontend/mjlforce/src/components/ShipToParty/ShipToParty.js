import React from "react";
import Main from "../Main";

export default function ShipToParty() {
  return (
    <Main>
      <div className="container-fluid">
        <div className="row">
          <div className="col-xl-12 xl-100 col-lg-12 box-col-12">
            <div className="card">
              <div className="card-body">
                <form className="form theme-form">
                  <div className="card-body">
                    <div className="row">
                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="division">
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
                          <label className="form-label" htmlFor="bin">
                            Ship-To-Party Name
                          </label>
                          <input
                            className="form-control"
                            id="sh2p_name"
                            type="text"
                            name="sh2p_name"
                            placeholder="SH2P Name"
                          />
                        </div>
                      </div>

                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="bin">
                            Address
                          </label>
                          <input
                            className="form-control"
                            id="address"
                            type="text"
                            name="address"
                            placeholder="Address"
                          />
                        </div>
                      </div>

                      <div className="col-6 col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="division">
                            Division
                          </label>
                          <select
                            className="form-select"
                            id="division"
                            name="division"
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
                          <select
                            className="form-select"
                            id="thana"
                            name="thana"
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
                            BIN
                          </label>
                          <input
                            className="form-control"
                            id="bin"
                            type="text"
                            name="bin"
                            placeholder="BIN Number"
                          />
                        </div>
                      </div>

                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="contactPerson">
                            Contact Person
                          </label>
                          <input
                            className="form-control"
                            id="contact_person"
                            type="text"
                            name="contact_person"
                            placeholder="C/O"
                          />
                        </div>
                      </div>

                      <div className="col-md-4">
                        <div className="mb-3">
                          <label
                            className="form-label"
                            htmlFor="mobileNumberOfContactPerson"
                          >
                            Mobile Phone(Contact Person)
                          </label>
                          <input
                            className="form-control"
                            id="mobile_co"
                            type="tel"
                            name="mobile_co"
                            placeholder="Mobile Number"
                          />
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
