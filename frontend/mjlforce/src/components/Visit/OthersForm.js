import React, { useCallback, useEffect, useState } from "react";
import Auth from "../../auth/Auth";
import Swal from "sweetalert2";
import { getCurrentLocation } from "../../utils/getCurrentLocation";

export default function OthersForm() {
  const { http } = Auth();
  const [formData, setFormData] = useState({
    site_name: "",
    post_code: "",
    address: "",
    visit_purpose_id: "",
    other_purpose: "",
    image: "",
    loc_division: "",
    loc_district: "",
    loc_thana: "",
    post_office: "",
    remarks: "",
    long: "",
    lat: "",
    accuracy: null,
  });

  const [suggestions, setSuggestions] = useState([]);
  const [showSuggestions, setShowSuggestions] = useState(false);

  const [errors, setErrors] = useState({});

  const [fetchData, setFetchdata] = useState({
    divisions: [],
    districts: [],
    upazilas: [],
    postOffice: [],
    visitPurposes: [],
  });

  const [districts, setDistricts] = useState([]);
  const [upazilas, setUpazilas] = useState([]);
  const [postOffice, setPostOffice] = useState([]);

  const fetchFormData = useCallback(() => {
    http
      .get("/other_visit")
      .then((res) => {
        console.log(res.data);
        setFetchdata(res.data);
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    locationHadler();
    fetchFormData();
  }, [fetchFormData]);

  let typingTimer;
  const fetchSuggestions = (search) => {
    clearTimeout(typingTimer);
    typingTimer = setTimeout(async () => {
      http
        .get("/search_other_visit_site", {
          params: {
            search: search,
          },
        })
        .then((res) => {
          console.log(res.data);
          setSuggestions(res.data);
          setShowSuggestions(true);
        })
        .catch((res) => {
          console.log(res);
        });
    }, 300); // delay to prevent too many API calls
  };

  // Handle selection
  // const handleSelect = (site) => {
  //   setFormData({ ...formData, site_name: site });
  //   setShowSuggestions(false);
  // };

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

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));

    if (name == "site_name") {
      if (value.length > 1) {
        fetchSuggestions(value);
      } else {
        setSuggestions([]);
        setShowSuggestions(false);
      }
    }

    locationHadler();
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
        .post("/store_other_visit", formData, {
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
            site_name: "",
            post_code: "",
            address: "",
            visit_purpose_id: "",
            other_purpose: "",
            image: "",
            loc_division: "",
            loc_district: "",
            loc_thana: "",
            post_office: "",
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
                Visiting Site
              </label>
              <input
                className="form-control"
                id="site_name"
                type="text"
                name="site_name"
                placeholder="xyz group limited"
                onChange={handleChange}
                value={formData.site_name}
                autoComplete="off"
              />

              {showSuggestions && suggestions.length > 0 && (
                <ul
                  className="list-group position-absolute w-100"
                  style={{ zIndex: 1000 }}
                >
                  {suggestions.map((site, index) => (
                    <li
                      key={index}
                      className="list-group-item list-group-item-action"
                      onClick={() => handleChange(site)}
                      style={{ cursor: "pointer" }}
                    >
                      {site}
                    </li>
                  ))}
                </ul>
              )}
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
                placeholder="Site Address"
                value={formData.address}
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
                Post Code
              </label>
              <input
                className="form-control"
                id="post_code"
                type="text"
                name="post_code"
                placeholder=""
                value={formData.post_code}
                onChange={handleChange}
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
                id="visit_purpose_id"
                name="visit_purpose_id"
                value={formData.visit_purpose_id}
                onChange={handleChange}
              >
                <option value="">Please Select</option>
                {fetchData.visitPurposes.map((purpose) => (
                  <option key={purpose.id} value={purpose.id}>
                    {purpose.name}
                  </option>
                ))}
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
                value={formData.remarks}
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
