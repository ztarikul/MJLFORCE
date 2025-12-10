import React, { use, useCallback, useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Auth from "../../auth/Auth";
import Swal from "sweetalert2";
import Main from "../Main";
import PageLoader from "../../utils/PageLoader";
import { getCurrentLocation } from "../../utils/getCurrentLocation";

export default function LeadsProcess() {
  const { id } = useParams();
  const { http } = Auth();
  const [pageLoading, setPageLoading] = useState(true);
  const [formData, setFormData] = useState({
    account_name: "",
    group: "",
    office_address: "",
    bin: "",
    contact_person: "",
    mobile_co: "",
    telephone_co: "",
    owner_name: "",
    owner_telephone: "",
    owner_mobile: "",
    owner_email: "",
    customer_type: "",
    territory: "",
    trade_category: "",
    trade_s_category: "",
    special_discount: "",
    remarks: "",
    loc_division: "",
    loc_district: "",
    post_office: "",
    loc_thana: "",
    lead_stage_id: "",
    long: "",
    lat: "",
    accuracy: null,
  });

  const [errors, setErrors] = useState({});
  const [signingBtn, setSigningBtn] = useState(false);

  const [fetchData, setFetchdata] = useState({
    divisions: [],
    districts: [],
    upazilas: [],
    postOffice: [],
    salesTerritories: [],
    tradeCategories: [],
    tradeSubCategories: [],
    customerTypes: [],
    leadStages: [],
  });

  // const [divisions, setDivisions] = useState([]);
  const [districts, setDistricts] = useState([]);
  const [upazilas, setUpazilas] = useState([]);
  const [postOffice, setPostOffice] = useState([]);
  const [tradeCategory, setTradeCategory] = useState([]);
  const [tradeSubCategories, setTradeSubCategories] = useState([]);

  const fetchFormData = useCallback(() => {
    http
      .get("/leads_process", {
        params: {
          id: id,
        },
      })
      .then((res) => {
        console.log(res.data);

        setFormData({
          account_name: res.data.soldToParty.acc_name,
          group: res.data.soldToParty.group,
          office_address: res.data.soldToParty.address,
          bin: res.data.soldToParty.bin_no,
          contact_person: res.data.soldToParty.contact_person_name,
          mobile_co: res.data.soldToParty.contact_person_mobile,
          telephone_co: res.data.soldToParty.contact_person_tel,
          owner_name: res.data.soldToParty.ceo,
          owner_telephone: res.data.soldToParty.phone,
          owner_mobile: res.data.soldToParty.mobile_phone,
          owner_email: res.data.soldToParty.email,
          customer_type: res.data.soldToParty.customer_acc_group,
          territory: res.data.soldToParty.territory,
          trade_category: res.data.soldToParty.trade_category.id,
          trade_s_category: res.data.soldToParty.trade_sub_category.id,
          special_discount: res.data.soldToParty.is_eligible_discount,
          remarks: res.data.soldToParty.remarks,

          loc_division: res.data.soldToParty.loc_division_id,
          loc_district: res.data.soldToParty.loc_district_id,
          loc_thana: res.data.soldToParty.loc_upazila_id,
          post_office: res.data.soldToParty.loc_post_office_id,
          lead_stage_id: res.data.soldToParty.current_lead?.lead_stage_id,
        });

        setFetchdata({
          divisions: res.data.divisions,
          districts: res.data.districts,
          upazilas: res.data.upazilas,
          postOffice: res.data.postOffice,
          salesTerritories: res.data.salesTerritories,
          tradeCategories: res.data.tradeCategories,
          tradeSubCategories: res.data.tradeSubCategories,
          customerTypes: res.data.customerTypes,
          leadStages: res.data.leadStages,
        });
        // setDivisions(res.data.soldToParty.loc_division);
        setDistricts(res.data.soldToParty.loc_division.loc_districts);
        setUpazilas(res.data.soldToParty.loc_district.loc_upazilas);
        setPostOffice(res.data.soldToParty.loc_district.loc_post_offices);
        setTradeCategory(res.data.soldToParty.trade_category);
        setTradeSubCategories(
          res.data.soldToParty.trade_category.trade_sub_categories
        );

        setPageLoading(false);
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
      setSigningBtn(true);
      http
        .post(`/updateLeadProcess/${id}`, formData, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then((res) => {
          console.log(res.data); // Handle success response
          setSigningBtn(false);
          Swal.fire({
            title: "Submitted!",
            text: res.data.msg,
            icon: "success",
            timer: 2000,
            showConfirmButton: false,
          });
          setFormData({
            account_name: "",
            group: "",
            office_address: "",
            loc_division: "",
            loc_district: "",
            loc_thana: "",
            post_office: "",
            bin: "",
            contact_person: "",
            mobile_co: "",
            telephone_co: "",
            owner_name: "",
            owner_telephone: "",
            owner_mobile: "",
            owner_email: "",
            customer_type: "",
            territory: "",
            trade_category: "",
            trade_s_category: "",
            special_discount: "",
            remarks: "",
          });
          setErrors({});
        })
        .catch((error) => {
          console.log(error);
          setSigningBtn(false);
          if (error.ststus !== 401) {
            setErrors(error.response.data.errors);
          }
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
    setUpazilas([]);
    setPostOffice([]);
    setFormData((prev) => ({
      ...prev,
      loc_district: "",
      loc_thana: "",
      post_office: "",
    }));
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
    setFormData((prev) => ({
      ...prev,
      loc_thana: "",
      post_office: "",
    }));

    const selectedPostOffices = fetchData.postOffice.filter(
      (office) => office.loc_district_id === selectedId
    );

    setPostOffice(selectedPostOffices);
  };

  const upazilaChangeHnadler = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
    // const selectedId = parseInt(event.target.value);
    // const selectedPostOffices = fetchData.postOffice.filter(
    //   (office) => office.loc_upazila_id === selectedId
    // );
    // setFormData((prev) => ({
    //   ...prev,
    //   post_office: "",
    // }));
    // setPostOffice(selectedPostOffices);
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
    setFormData((prev) => ({
      ...prev,
      trade_s_category: "",
    }));
  };
  const customerTypeHandler = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  if (pageLoading) {
    return <PageLoader />;
  }

  return (
    <Main>
      <div className="container-fluid">
        <div className="row">
          <div className="col-xl-12 xl-100 col-lg-12 box-col-12">
            <div className="card">
              <form className="form theme-form" onSubmit={formSubmit}>
                <div className="card-body">
                  <div className="row">
                    <div className="col-12 col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="lead_stage">
                          Lead Stage
                        </label>
                        <select
                          className="form-select"
                          id="lead_stage_id"
                          name="lead_stage_id"
                          onChange={handleChange}
                          value={formData.lead_stage_id}
                        >
                          {!formData.lead_stage_id && (
                            <option value="">Please Select</option>
                          )}

                          {fetchData.leadStages.map((stage) => (
                            <option key={stage.id} value={stage.id}>
                              {stage.stage}
                            </option>
                          ))}
                        </select>
                      </div>
                      {errors.trade_s_category && (
                        <span className="" style={{ color: "red" }}>
                          {errors.trade_s_category[0]}
                        </span>
                      )}
                    </div>

                    <div className="col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="customer_name">
                          Customer Name <span style={{ color: "red" }}>* </span>
                        </label>
                        <input
                          className="form-control"
                          id="account_name"
                          type="text"
                          name="account_name"
                          value={formData.account_name}
                          onChange={handleChange}
                        />
                      </div>
                      {errors.account_name && (
                        <span className="" style={{ color: "red" }}>
                          {errors.account_name[0]}
                        </span>
                      )}
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
                          value={formData.group}
                          placeholder="Group"
                          onChange={handleChange}
                        />
                      </div>
                      {errors.group && (
                        <span className="" style={{ color: "red" }}>
                          {errors.group[0]}
                        </span>
                      )}
                    </div>

                    <div className="col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="officeAddress">
                          Office Address
                          <span style={{ color: "red" }}> * </span>
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
                      {errors.office_address && (
                        <span className="" style={{ color: "red" }}>
                          {errors.office_address[0]}
                        </span>
                      )}
                    </div>

                    <div className="col-6 col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="loc_division">
                          Division <span style={{ color: "red" }}> * </span>
                        </label>
                        <select
                          className="form-select"
                          id="loc_division"
                          name="loc_division"
                          onChange={divisionChangeHnadler}
                          value={formData.loc_division}
                        >
                          {!formData.loc_division && (
                            <option value="">Please Select</option>
                          )}
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
                        <label className="form-label" htmlFor="loc_district">
                          District <span style={{ color: "red" }}> * </span>
                        </label>
                        <select
                          className="form-select"
                          id="loc_district"
                          name="loc_district"
                          onChange={districtChangeHnadler}
                          value={formData.loc_district}
                        >
                          {!formData.loc_district && (
                            <option value="">Please Select</option>
                          )}
                          {districts?.map((district) => (
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
                        <label className="form-label" htmlFor="loc_thana">
                          Upazilla/Thana
                          <span style={{ color: "red" }}> * </span>
                        </label>
                        <select
                          className="form-select"
                          id="loc_thana"
                          name="loc_thana"
                          onChange={upazilaChangeHnadler}
                          value={formData.loc_thana}
                        >
                          {!formData.loc_thana && (
                            <option value="">Please Select</option>
                          )}
                          {upazilas?.map((upazila) => (
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
                          Post Office <span style={{ color: "red" }}> * </span>
                        </label>
                        <select
                          className="form-select"
                          id="post_office"
                          name="post_office"
                          onChange={handleChange}
                          value={formData.post_office}
                        >
                          <option value="">Please Select</option>
                          {postOffice?.map((office) => (
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
                          BIN <span style={{ color: "red" }}> * </span>
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
                          <span style={{ color: "red" }}> * </span>
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
                          <span style={{ color: "red" }}> * </span>
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
                      <div className="mb-3">
                        <label
                          className="form-label"
                          htmlFor="mobileNumberOfContactPerson"
                        >
                          Telephone(Contact Person)
                          <span style={{ color: "red" }}> * </span>
                        </label>
                        <input
                          className="form-control"
                          id="mobile_co"
                          type="tel"
                          name="telephone_co"
                          value={formData.telephone_co}
                          placeholder="Telephone"
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
                      <div className="mb-3">
                        <label className="form-label" htmlFor="ceoMdOwner">
                          CEO/MD/Owner Name
                        </label>
                        <input
                          className="form-control"
                          id="owner_name"
                          type="text"
                          name="owner_name"
                          value={formData.owner_name}
                          placeholder=""
                          onChange={handleChange}
                        />
                      </div>
                      {errors.owner_name && (
                        <span className="" style={{ color: "red" }}>
                          {errors.owner_name[0]}
                        </span>
                      )}
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
                          value={formData.owner_telephone}
                          placeholder=""
                          onChange={handleChange}
                        />
                      </div>
                      {errors.owner_telephone && (
                        <span className="" style={{ color: "red" }}>
                          {errors.owner_telephone[0]}
                        </span>
                      )}
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
                          value={formData.owner_mobile}
                          placeholder=""
                          onChange={handleChange}
                        />
                      </div>
                      {errors.owner_mobile && (
                        <span className="" style={{ color: "red" }}>
                          {errors.owner_mobile[0]}
                        </span>
                      )}
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
                          value={formData.owner_email}
                          placeholder=""
                          onChange={handleChange}
                        />
                      </div>
                      {errors.owner_email && (
                        <span className="" style={{ color: "red" }}>
                          {errors.owner_email[0]}
                        </span>
                      )}
                    </div>

                    <div className="col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="customerType">
                          Customer Type <span style={{ color: "red" }}>* </span>
                        </label>
                        <select
                          className="form-select"
                          id="customer_type"
                          name="customer_type"
                          value={formData.customer_type}
                          onChange={customerTypeHandler}
                        >
                          {fetchData.customerTypes.map((type) => (
                            <option key={type.id} value={type.sap_code}>
                              {type.name}
                            </option>
                          ))}
                        </select>
                      </div>
                      {errors.customer_type && (
                        <span className="" style={{ color: "red" }}>
                          {errors.customer_type[0]}
                        </span>
                      )}
                    </div>

                    <div className="col-6 col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="salesTerritory">
                          Sales Territoty
                          <span style={{ color: "red" }}> * </span>
                        </label>
                        <select
                          className="form-select"
                          id="territory"
                          name="territory"
                          onChange={handleChange}
                          value={formData.territory}
                        >
                          {fetchData.salesTerritories.map((territory) => (
                            <option
                              key={territory.sap_code}
                              value={territory.sap_code}
                            >
                              {territory.name}
                            </option>
                          ))}
                        </select>
                      </div>
                      {errors.territory && (
                        <span className="" style={{ color: "red" }}>
                          {errors.territory[0]}
                        </span>
                      )}
                    </div>

                    <div className="col-6 col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="tradeCategory">
                          Trade Category
                          <span style={{ color: "red" }}> * </span>
                        </label>
                        <select
                          className="form-select"
                          id="trade_category"
                          name="trade_category"
                          onChange={tradeCategoryChangeHnadler}
                          value={formData.trade_category}
                        >
                          {fetchData.tradeCategories.map((tradeCategory) => (
                            <option
                              key={tradeCategory.id}
                              value={tradeCategory.id}
                            >
                              {tradeCategory.name}
                            </option>
                          ))}
                        </select>
                      </div>
                      {errors.trade_category && (
                        <span className="" style={{ color: "red" }}>
                          {errors.trade_category[0]}
                        </span>
                      )}
                    </div>

                    <div className="col-6 col-md-4">
                      <div className="mb-3">
                        <label
                          className="form-label"
                          htmlFor="tradeSubCategory"
                        >
                          Trade Sub Category
                          <span style={{ color: "red" }}> * </span>
                        </label>
                        <select
                          className="form-select"
                          id="trade_s_category"
                          name="trade_s_category"
                          value={formData.trade_s_category}
                          onChange={handleChange}
                        >
                          {!formData.trade_s_category && (
                            <option value="">Please Select</option>
                          )}
                          {tradeSubCategories.map((subCat) => (
                            <option key={subCat.id} value={subCat.id}>
                              {subCat.name}
                            </option>
                          ))}
                        </select>
                      </div>
                      {errors.trade_s_category && (
                        <span className="" style={{ color: "red" }}>
                          {errors.trade_s_category[0]}
                        </span>
                      )}
                    </div>

                    {/* <div className="col-md-4">
                      <div className="mb-3">
                        <div className="form-group m-t-5 m-checkbox-inline mb-0 custom-radio-ml">
                          <div className="checkbox checkbox-dark">
                            <input
                              id="special_discount"
                              name="special_discount"
                              type="checkbox"
                              checked={
                                formData.special_discount === 1 ? true : false
                              }
                              onChange={handleChange}
                            />
                            <label htmlFor="special_discount">
                              Select if customer is eligible for any specific
                              discount or payment terms
                            </label>
                          </div>
                        </div>
                      </div>
                      {errors.special_discount && (
                        <span className="" style={{ color: "red" }}>
                          {errors.special_discount[0]}
                        </span>
                      )}
                    </div> */}

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
                  <button
                    className="btn btn-primary"
                    type="submit"
                    disabled={signingBtn}
                  >
                    {signingBtn ? "Submitting..." : "Submit"}
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
    </Main>
  );
}
