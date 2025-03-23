import React from "react";

export default function NewForm() {
  return (
    <form className="form theme-form">
      <div className="card-body">
        <div className="row">
          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleFormControlInput1">
                Customer Name
              </label>
              <input
                className="form-control"
                id="account_name"
                type="text"
                name="account_name"
                placeholder="xyz group limited"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="group">
                Group
              </label>
              <input
                className="form-control"
                id="group"
                type="text"
                name="group"
                placeholder="Group"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="officeAddress">
                Office Address
              </label>
              <input
                className="form-control"
                id="office_address"
                type="text"
                name="office_address"
                placeholder="Office Address"
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
            <div className="mb-3">
              <label className="form-label" htmlFor="ceoMdOwner">
                CEO/MD/Owner Name
              </label>
              <input
                className="form-control"
                id="owner_name"
                type="text"
                name="owner_name"
                placeholder=""
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="ownerTelephone">
                Telephone
              </label>
              <input
                className="form-control"
                id="owner_telephone"
                type="text"
                name="owner_telephone"
                placeholder="Owner Telephone"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="ownerMobile">
                Mobile Phone
              </label>
              <input
                className="form-control"
                id="owner_mobile"
                type="text"
                name="owner_mobile"
                placeholder="Owner Mobile"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="ownerEmail">
                Email
              </label>
              <input
                className="form-control"
                id="owner_email"
                type="text"
                name="owner_email"
                placeholder="Owner Email"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="customerType">
                Customer Type
              </label>
              <input
                className="form-control"
                id="customer_type"
                type="text"
                name="customer_type"
                placeholder=""
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="paymentType">
                Payment Type
              </label>
              <div className="form-group m-t-5 m-checkbox-inline mb-0 custom-radio-ml">
                <div className="checkbox checkbox-dark">
                  <input id="cheque" type="checkbox" name="pt_cheque" />
                  <label for="cheque">Cheque</label>
                </div>
                <div className="checkbox checkbox-dark">
                  <input id="cash" type="checkbox" name="pt_cash" />
                  <label for="cash">Cash</label>
                </div>
                <div className="checkbox checkbox-dark">
                  <input id="po" type="checkbox" name="pt_po" />
                  <label for="po">PO</label>
                </div>
                <div className="checkbox checkbox-dark">
                  <input id="dd" type="checkbox" name="pt_dd" />
                  <label for="dd">DD</label>
                </div>
                <div className="checkbox checkbox-dark">
                  <input id="transfer" type="checkbox" name="pt_transfer" />
                  <label for="transfer">Transfer</label>
                </div>
              </div>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="salesTerritory">
                Sales Territoty
              </label>
              <select className="form-select" id="territory" name="territory">
                <option>Dhaka South</option>
                <option>Dhata North</option>
                <option>Khulna</option>
                <option>Chittagong</option>
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="tradeCategory">
                Trade Category
              </label>
              <select
                className="form-select"
                id="trade_category"
                name="trade_category"
              >
                <option>Energy</option>
                <option>General Manufacturing</option>
                <option>Process</option>
                <option>Inland Marine</option>
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="tradeSubCategory">
                Trade Sub Category
              </label>
              <select
                className="form-select"
                id="trade_s_category"
                name="trade_s_category"
              >
                <option>Energy</option>
                <option>General Manufacturing</option>
                <option>Process</option>
                <option>Inland Marine</option>
              </select>
            </div>
          </div>
          <div className="col-md-4">
            <div className="mb-3">
              <div className="form-group m-t-5 m-checkbox-inline mb-0 custom-radio-ml">
                <div className="checkbox checkbox-dark">
                  <input
                    id="special_discount"
                    name="special_discount"
                    type="checkbox"
                  />
                  <label htmlFor="special_discount">
                    Select if customer is eligible for any specific discount or
                    payment terms
                  </label>
                </div>
              </div>
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
