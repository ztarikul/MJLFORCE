import React, { useCallback, useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Auth from "../../auth/Auth";

export default function LeadsProcess() {
  const { id } = useParams();

  const { http } = Auth();
  const [formData, setFormData] = useState({
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

  const [errors, setErrors] = useState({});

  const [fetchData, setFetchdata] = useState({
    divisions: [],
    districts: [],
    upazilas: [],
    postOffice: [],
    salesTerritories: [],
    tradeCategories: [],
    tradeSubCategories: [],
    customerTypes: [],
  });

  const [districts, setDistricts] = useState([]);
  const [upazilas, setUpazilas] = useState([]);
  const [postOffice, setPostOffice] = useState([]);
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
        // setFetchdata(res.data);
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchFormData();
  }, [fetchFormData]);

  return <div>LeadsProcess</div>;
}
