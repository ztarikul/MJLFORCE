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
              <label className="form-label" htmlFor="exampleInputPassword2">
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
              <label className="form-label" htmlFor="exampleInputPassword2">
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
              <label className="form-label" htmlFor="exampleFormControlSelect3">
                Division
              </label>
              <select
                className="form-select"
                id="division"
                name="division"
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
              <label className="form-label" htmlFor="exampleFormControlSelect3">
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
              <label className="form-label" htmlFor="exampleFormControlSelect3">
                Upazilla/Thana
              </label>
              <select
                className="form-select"
                id="thana"
                name="thana"
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
              <label className="form-label" htmlFor="exampleFormControlSelect3">
                Post Office
              </label>
              <select
                className="form-select"
                id="post_office"
                name="post_office"
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

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
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
              <label className="form-label" htmlFor="exampleInputPassword2">
                Contact Person
              </label>
              <input
                className="form-control"
                id="contact_person"
                type="text"
                name="contact_person"
                placeholder="Office Address"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
                Mobile Phone(Contact Person)
              </label>
              <input
                className="form-control"
                id="contact_person"
                type="text"
                name="contact_person"
                placeholder="Office Address"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
                CEO/MD/Owner Name
              </label>
              <input
                className="form-control"
                id="contact_person"
                type="text"
                name="contact_person"
                placeholder="Office Address"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
                Telephone
              </label>
              <input
                className="form-control"
                id="contact_person"
                type="text"
                name="contact_person"
                placeholder="Office Address"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
                Mobile Phone
              </label>
              <input
                className="form-control"
                id="contact_person"
                type="text"
                name="contact_person"
                placeholder="Office Address"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
                Email
              </label>
              <input
                className="form-control"
                id="contact_person"
                type="text"
                name="contact_person"
                placeholder="Office Address"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
                Customer Type
              </label>
              <input
                className="form-control"
                id="contact_person"
                type="text"
                name="contact_person"
                placeholder="Office Address"
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
                Payment Type
              </label>
              <div className="form-group m-t-5 m-checkbox-inline mb-0 custom-radio-ml">
                <div className="checkbox checkbox-dark">
                  <input id="cheque" type="checkbox" />
                  <label for="cheque">Cheque</label>
                </div>
                <div className="checkbox checkbox-dark">
                  <input id="cash" type="checkbox" />
                  <label for="cash">Cash</label>
                </div>
                <div className="checkbox checkbox-dark">
                  <input id="po" type="checkbox" />
                  <label for="po">PO</label>
                </div>
                <div className="checkbox checkbox-dark">
                  <input id="dd" type="checkbox" />
                  <label for="dd">DD</label>
                </div>
                <div className="checkbox checkbox-dark">
                  <input id="transfer" type="checkbox" />
                  <label for="transfer">Transfer</label>
                </div>
              </div>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleFormControlSelect3">
                Sales Territoty
              </label>
              <select
                className="form-select"
                id="post_office"
                name="post_office"
                multiple=""
              >
                <option>Dhaka South</option>
                <option>Dhata North</option>
                <option>Khulna</option>
                <option>Chittagong</option>
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleFormControlSelect3">
                Trade Category
              </label>
              <select
                className="form-select"
                id="post_office"
                name="post_office"
                multiple=""
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
              <label className="form-label" htmlFor="exampleFormControlSelect3">
                Trade Sub Category
              </label>
              <select
                className="form-select"
                id="post_office"
                name="post_office"
                multiple=""
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
                  <input id="special_discount" type="checkbox" />
                  <label for="special_discount">
                    Select if customer is eligible for any specific discount or
                    payment terms
                  </label>
                </div>
              </div>
            </div>
          </div>

          <div className="col-md-4">
            <div>
              <label
                className="form-label"
                htmlFor="exampleFormControlTextarea4"
              >
                Remarks
              </label>
              <textarea
                className="form-control"
                id="exampleFormControlTextarea4"
                rows="3"
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
