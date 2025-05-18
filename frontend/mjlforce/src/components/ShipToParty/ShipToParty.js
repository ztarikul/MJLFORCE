import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import { getCurrentLocation } from "../../utils/getCurrentLocation";
import Auth from "../../auth/Auth";
import Swal from "sweetalert2";

export default function ShipToParty() {
  const { http } = Auth();
  const [soldToParties, setSoldToParties] = useState([]);
  const [formData, setFormData] = useState({
    sold_to_party_id: "",
    account_name: "",
    office_address: "",
    loc_division: "",
    loc_district: "",
    loc_thana: "",
    post_office: "",
    bin: "",
    contact_person: "",
    mobile_co: "",
    remarks: "",
    long: "",
    lat: "",
  });

  const [errors, setErrors] = useState({});

  const [fetchData, setFetchdata] = useState({
    divisions: [],
    districts: [],
    upazilas: [],
    postOffice: [],
  });

  const [districts, setDistricts] = useState([]);
  const [upazilas, setUpazilas] = useState([]);
  const [postOffice, setPostOffice] = useState([]);

  const fetchFormData = useCallback(() => {
    http
      .get("/create_sh2p")
      .then((res) => {
        console.log(res);
        setSoldToParties(res.data.soldToParties);
        setFetchdata(res.data);
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
        .post("/store_sh2p", formData, {
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
            account_name: "",
            office_address: "",
            loc_division: "",
            loc_district: "",
            loc_thana: "",
            post_office: "",
            bin: "",
            contact_person: "",
            mobile_co: "",
            remarks: "",
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

  const soldToPartyChangeHandler = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
    http
      .get("/create_sh2p", {
        params: {
          [name]: value,
        },
      })
      .then((res) => {
        console.log(res.data);
        setFormData((prev) => ({
          ...prev,
          account_name: res.data.soldToParty.acc_name,
          office_address: res.data.soldToParty.address,
          bin: res.data.soldToParty.bin_no,
          contact_person: res.data.soldToParty.contact_person_name,
          mobile_co: res.data.soldToParty.contact_person_mobile,
          remarks: res.data.soldToParty.remarks,

          loc_division: res.data.soldToParty.loc_division_id,
          loc_district: res.data.soldToParty.loc_district_id,
          loc_thana: res.data.soldToParty.loc_upazila_id,
          post_office: res.data.soldToParty.loc_post_office_id,
        }));
      })
      .catch((res) => {
        console.log(res);
      });
  };

  return (
    <Main>
      <div className="container-fluid">
        <div className="row">
          <div className="col-xl-12 xl-100 col-lg-12 box-col-12">
            <div className="card">
              <div className="card-body">
                <form className="form theme-form" onSubmit={formSubmit}>
                  <div className="card-body">
                    <div className="row">
                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="division">
                            Customer Name
                          </label>
                          <select
                            className="form-select"
                            id="sold_to_party_id"
                            name="sold_to_party_id"
                            onChange={soldToPartyChangeHandler}
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
                      </div>

                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="bin">
                            Ship-To-Party Name
                          </label>
                          <input
                            className="form-control"
                            id="account_name"
                            type="text"
                            name="account_name"
                            value={formData.account_name}
                            placeholder="SH2P Name"
                            onChange={handleChange}
                            disabled
                          />
                        </div>
                      </div>

                      <div className="col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="bin">
                            Office Address
                          </label>
                          <input
                            className="form-control"
                            id="office_address"
                            type="text"
                            name="office_address"
                            value={formData.office_address}
                            placeholder="Office Address"
                            onChange={handleChange}
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
                            id="loc_division"
                            name="loc_division"
                            value={formData.loc_division}
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
                        {errors.loc_division && (
                          <span className="" style={{ color: "red" }}>
                            {errors.loc_division[0]}
                          </span>
                        )}
                      </div>

                      <div className="col-6 col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="district">
                            District
                          </label>
                          <select
                            className="form-select"
                            id="loc_district"
                            name="loc_district"
                            value={formData.loc_district}
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
                        {errors.loc_district && (
                          <span className="" style={{ color: "red" }}>
                            {errors.loc_district[0]}
                          </span>
                        )}
                      </div>

                      <div className="col-6 col-md-4">
                        <div className="mb-3">
                          <label className="form-label" htmlFor="thana">
                            Upazilla/Thana
                          </label>
                          <select
                            className="form-select"
                            id="loc_thana"
                            name="loc_thana"
                            value={formData.loc_thana}
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
                        {errors.loc_thana && (
                          <span className="" style={{ color: "red" }}>
                            {errors.loc_thana[0]}
                          </span>
                        )}
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
                            value={formData.post_office}
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
                        {errors.post_office && (
                          <span className="" style={{ color: "red" }}>
                            {errors.post_office[0]}
                          </span>
                        )}
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
                            value={formData.bin}
                            placeholder="BIN Number"
                            onChange={handleChange}
                          />
                        </div>
                        {errors.bin && (
                          <span className="" style={{ color: "red" }}>
                            {errors.bin[0]}
                          </span>
                        )}
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
                            value={formData.contact_person}
                            onChange={handleChange}
                          />
                        </div>
                        {errors.contact_person && (
                          <span className="" style={{ color: "red" }}>
                            {errors.contact_person[0]}
                          </span>
                        )}
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
                            value={formData.mobile_co}
                            placeholder="Mobile Number"
                            onChange={handleChange}
                          />
                        </div>
                        {errors.mobile_co && (
                          <span className="" style={{ color: "red" }}>
                            {errors.mobile_co[0]}
                          </span>
                        )}
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
                            value={formData.remarks}
                            onChange={handleChange}
                          ></textarea>
                        </div>
                        {errors.remarks && (
                          <span className="" style={{ color: "red" }}>
                            {errors.remarks[0]}
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
