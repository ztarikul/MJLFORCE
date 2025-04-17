import React, { useCallback, useEffect, useState } from "react";
import Auth from "../../auth/Auth";

export default function NewForm() {
  const { http } = Auth();
  const [formData, setFormData] = useState({
    account_name: "",
    group: "",
    office_address: "",
    loc_division: null,
    loc_district: null,
    loc_thana: null,
    post_office: null,
    bin: null,
    contact_person: null,
    mobile_co: null,
    owner_name: null,
    owner_telephone: null,
    owner_mobile: null,
    owner_email: null,
    customer_type: [
      { id: 1, name: "Domestic", sap_code: "Z001" },
      { id: 2, name: "Marine Bonded", sap_code: "Z002" },
      { id: 3, name: "Export(Deemed)", sap_code: "Z002" },
      { id: 4, name: "Service (Oil Tanker)", sap_code: "Z004" },
      { id: 6, name: "Service(Rent)", sap_code: "Z005" },
      { id: 7, name: "OTC", sap_code: "Z011" },
      { id: 8, name: "Other Customer", sap_code: "Z014" },
    ],
    territory: null,
    trade_category: null,
    trade_s_category: null,
    special_discount: null,
    remarks: null,
  });

  const [fetchData, setFetchdata] = useState({
    divisions: [],
    districts: [],
    upazilas: [],
    postOffice: [],
    salesTerritories: [],
    tradeCategories: [],
    tradeSubCategories: [],
  });

  const [districts, setDistricts] = useState([]);
  const [upazilas, setUpazilas] = useState([]);
  const [postOffice, setPostOffice] = useState([]);
  const [tradeSubCategories, setTradeSubCategories] = useState([]);

  const fetchFormData = useCallback(() => {
    http
      .get("/visit_new_s2p")
      .then((res) => {
        setFetchdata(res.data);
      })
      .catch((res) => {
        console.log(res);
      });
  }, [http]);

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

    http
      .post("/store_s2p", formData)
      .then((res) => {
        console.log(res.data); // Handle success response
      })
      .catch((error) => {
        console.error(error); // Handle error response
      });
  };

  const divisionChangeHnadler = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
    const selectedId = parseInt(event.target.value);
    const selectedDistricts = fetchData.districts.filter(
      (district) => district.loc_division_id === selectedId
    );
    setDistricts(selectedDistricts);
  };

  const districtChangeHnadler = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
    const selectedId = parseInt(event.target.value);
    const selectedUpazilas = fetchData.upazilas.filter(
      (upazila) => upazila.loc_district_id === selectedId
    );
    setUpazilas(selectedUpazilas);
  };

  const upazilaChangeHnadler = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
    const selectedId = parseInt(event.target.value);
    const selectedPostOffices = fetchData.postOffice.filter(
      (office) => office.loc_upazila_id === selectedId
    );
    setPostOffice(selectedPostOffices);
  };

  const tradeCategoryChangeHnadler = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
    const selectedId = parseInt(event.target.value);
    const selectedtradeSubCategories = fetchData.tradeSubCategories.filter(
      (subCat) => subCat.trade_category_id === selectedId
    );
    setTradeSubCategories(selectedtradeSubCategories);
  };

  return (
    <form className="form theme-form" onSubmit={formSubmit}>
      <div className="card-body">
        <div className="row">
          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="customer_name">
                Customer Name
              </label>
              <input
                className="form-control"
                id="account_name"
                type="text"
                name="account_name"
                placeholder="xyz group limited"
                onChange={handleChange}
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
                onChange={handleChange}
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
                onChange={handleChange}
              />
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="loc_division">
                Division
              </label>
              <select
                className="form-select"
                id="loc_division"
                name="loc_division"
                onChange={divisionChangeHnadler}
              >
                <option value="">Please Select</option>
                {fetchData.divisions.map((division) => (
                  <option key={division.id} value={division.id}>
                    {division.name}
                  </option>
                ))}
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="loc_district">
                District
              </label>
              <select
                className="form-select"
                id="loc_district"
                name="loc_district"
                onChange={districtChangeHnadler}
              >
                <option value="">Please Select</option>
                {districts.map((district) => (
                  <option key={district.id} value={district.id}>
                    {district.name}
                  </option>
                ))}
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="loc_thana">
                Upazilla/Thana
              </label>
              <select
                className="form-select"
                id="loc_thana"
                name="loc_thana"
                onChange={upazilaChangeHnadler}
              >
                <option value="">Please Select</option>
                {upazilas.map((upazila) => (
                  <option key={upazila.id} value={upazila.id}>
                    {upazila.name}
                  </option>
                ))}
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
                onChange={handleChange}
              >
                <option value="">Please Select</option>
                {postOffice.map((office) => (
                  <option key={office.id} value={office.id}>
                    {office.post_office}
                  </option>
                ))}
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
                onChange={handleChange}
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
                onChange={handleChange}
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
                onChange={handleChange}
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
                onChange={handleChange}
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
                onChange={handleChange}
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
                onChange={handleChange}
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
                onChange={handleChange}
              />
            </div>
          </div>

          <div className="col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="customerType">
                Customer Type
              </label>
              <select
                className="form-select"
                id="customer_type"
                name="customer_type"
              >
                <option value="">Please Select</option>
                {formData.customer_type.map((type) => (
                  <option key={type.id} value={type.sap_code}>
                    {type.name}
                  </option>
                ))}
              </select>
            </div>
          </div>

          <div className="col-6 col-md-4">
            <div className="mb-3">
              <label className="form-label" htmlFor="salesTerritory">
                Sales Territoty
              </label>
              <select
                className="form-select"
                id="territory"
                name="territory"
                onChange={handleChange}
              >
                <option value="">Please Select</option>
                {fetchData.salesTerritories.map((territory) => (
                  <option key={territory.id} value={territory.id}>
                    {territory.name}
                  </option>
                ))}
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
                onChange={tradeCategoryChangeHnadler}
              >
                <option value="">Please Select</option>
                {fetchData.tradeCategories.map((tradeCategory) => (
                  <option key={tradeCategory.id} value={tradeCategory.id}>
                    {tradeCategory.name}
                  </option>
                ))}
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
                onChange={handleChange}
              >
                <option value="">Please Select</option>
                {tradeSubCategories.map((subCat) => (
                  <option key={subCat.id} value={subCat.id}>
                    {subCat.name}
                  </option>
                ))}
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
                    onChange={handleChange}
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
                onChange={handleChange}
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
