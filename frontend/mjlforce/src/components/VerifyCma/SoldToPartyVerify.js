import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import { useParams } from "react-router-dom";
import Auth from "../../auth/Auth";
import PageLoader from "../../utils/PageLoader";

export default function SoldToPartyVerify() {
  const { id } = useParams();
  const { http } = Auth();
  const [pageLoading, setPageLoading] = useState(true);

  const [soldToParty, setSoldToParty] = useState({
    acc_name: null,
    acc_name2: null,
    activeStatus: null,
    address: null,
    address_2: null,
    address_3: null,

    bin_no: null,
    bp_type: null,
    ceo: null,
    company_code: null,
    contact_person_mobile: null,
    contact_person_name: null,
    contact_person_tel: null,
    country: null,
    created_at: null,
    created_by: null,

    customer_acc_group: null,
    customer_code: null,
    customer_group: [],
    customer_group_3: null,
    customer_type: [],
    deleted_at: null,
    distribution_ch: [],
    district: null,
    email: null,
    employee_id: null,
    fax: null,
    group: null,
    hostname: null,
    id: null,
    image: null,
    is_eligible_discount: null,
    lang: null,
    lat: null,
    loc_district: [],
    loc_district_id: null,
    loc_division: [],
    loc_division_id: null,
    loc_post_office: [],
    loc_post_office_id: null,
    loc_upazila_id: null,
    loc_upazila: [],
    long: null,
    phone: null,
    postal_code: null,
    region: null,
    remarks: null,
    sales_division: null,
    sales_org: null,
    status: null,
    territory: null,
    territory_s_to_p: [],
    trade_category: [],
    trade_sub_category: [],
  });

  const fetchFormData = useCallback(() => {
    http
      .get("/cma_varification_process", {
        params: {
          id: id,
          category: "s2p",
        },
      })
      .then((res) => {
        console.log(res.data);
        setSoldToParty({
          acc_name: res.data.soldToParty.acc_name,
          acc_name2: res.data.soldToParty.acc_name2,
          activeStatus: res.data.soldToParty.activeStatus,
          address: res.data.soldToParty.address,
          address_2: res.data.soldToParty.address_2,
          address_3: res.data.soldToParty.address_3,

          bin_no: res.data.soldToParty.bin_no,
          bp_type: res.data.soldToParty.bp_type,
          ceo: res.data.soldToParty.ceo,
          company_code: res.data.soldToParty.company_code,
          contact_person_mobile: res.data.soldToParty.contact_person_mobile,
          contact_person_name: res.data.soldToParty.contact_person_name,
          contact_person_tel: res.data.soldToParty.contact_person_tel,
          country: res.data.soldToParty.country,
          created_at: res.data.soldToParty.created_at,
          created_by: res.data.soldToParty.created_by,

          customer_acc_group: res.data.soldToParty.customer_acc_group,
          customer_code: res.data.soldToParty.customer_code,
          customer_group: res.data.soldToParty.customer_group,
          customer_group_3: res.data.soldToParty.customer_group_3,
          customer_type: res.data.soldToParty.customer_type,
          deleted_at: res.data.soldToParty.deleted_at,
          distribution_ch: res.data.soldToParty.distribution_ch,
          district: res.data.soldToParty.district,
          email: res.data.soldToParty.email,
          employee_id: res.data.soldToParty.employee_id,
          fax: res.data.soldToParty.fax,
          group: res.data.soldToParty.group,
          hostname: res.data.soldToParty.hostname,
          id: res.data.soldToParty.id,
          image: res.data.soldToParty.image,
          is_eligible_discount: res.data.soldToParty.is_eligible_discount,
          lang: res.data.soldToParty.lang,
          lat: res.data.soldToParty.lat,
          loc_district: res.data.soldToParty.loc_district,
          loc_district_id: res.data.soldToParty.loc_district_id,
          loc_division: res.data.soldToParty.loc_division,
          loc_division_id: res.data.soldToParty.loc_division_id,
          loc_post_office: res.data.soldToParty.loc_post_office,
          loc_post_office_id: res.data.soldToParty.loc_post_office_id,
          loc_upazila_id: res.data.soldToParty.loc_upazila_id,
          loc_upazila: res.data.soldToParty.loc_upazila,
          long: res.data.soldToParty.long,
          phone: res.data.soldToParty.phone,
          postal_code: res.data.soldToParty.postal_code,
          region: res.data.soldToParty.region,
          remarks: res.data.soldToParty.remarks,
          sales_division: res.data.soldToParty.sales_division,
          sales_org: res.data.soldToParty.sales_org,
          status: res.data.soldToParty.status,
          territory: res.data.soldToParty.territory,
          territory_s_to_p: res.data.soldToParty.territory_s_to_p,
          trade_category: res.data.soldToParty.trade_category,
          trade_sub_category: res.data.soldToParty.trade_sub_category,
        });
        setPageLoading(false);
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchFormData();
  }, [fetchFormData]);

  if (pageLoading) {
    return <PageLoader />;
  }

  return (
    <Main>
      <div className="col-sm-12 col-xl-12">
        <div className="card">
          <div className="card-header pb-0">
            <h5>SoldToParty Verification</h5>
          </div>
          <div className="card-body">
            <ul className="list-group">
              <li className="list-group-item">
                <strong>Account name:</strong> {soldToParty.acc_name}{" "}
                {soldToParty.acc_name2}
              </li>
              <li className="list-group-item">
                <strong>Customer Code:</strong> {soldToParty.customer_code}
              </li>
              <li className="list-group-item">
                <strong>customer Account Group:</strong>
                {soldToParty.customer_acc_group}
              </li>
              <li className="list-group-item">
                <strong>Company Code:</strong> {soldToParty.company_code}
              </li>
              <li className="list-group-item">
                <strong>Sales Org:</strong> {soldToParty.sales_org}
              </li>
              <li className="list-group-item">
                <strong>Distribution Channel:</strong>{" "}
                {soldToParty.distribution_ch}
              </li>
              <li className="list-group-item">
                <strong>sales_division:</strong> {soldToParty.sales_division}
              </li>
              <li className="list-group-item">
                <strong>Country:</strong> {soldToParty.country}
              </li>
              <li className="list-group-item">
                <strong>Region:</strong> {soldToParty.region}
              </li>

              <li className="list-group-item">
                <strong>District:</strong> {soldToParty.district}
              </li>
              <li className="list-group-item">
                <strong>Address:</strong> {soldToParty.address}{" "}
                {soldToParty.address_2} {soldToParty.address_3}
              </li>
              <li className="list-group-item">
                <strong>Ceo:</strong> {soldToParty.ceo}
              </li>

              <li className="list-group-item">
                <strong>Phone:</strong> {soldToParty.phone}
              </li>
              <li className="list-group-item">
                <strong>Mobile Phone:</strong> {soldToParty.mobile_phone}
              </li>
              <li className="list-group-item">
                <strong>fax:</strong> {soldToParty.fax}
              </li>
              <li className="list-group-item">
                <strong>Email:</strong> {soldToParty.email}
              </li>
              <li className="list-group-item">
                <strong>Postal Code:</strong> {soldToParty.postal_code}
              </li>
              <li className="list-group-item">
                <strong>Contact Person Name:</strong>{" "}
                {soldToParty.contact_person_name}
              </li>
              <li className="list-group-item">
                <strong>Contact Person Tel:</strong>{" "}
                {soldToParty.contact_person_tel}
              </li>
              <li className="list-group-item">
                <strong>Contact Person Mobile:</strong>{" "}
                {soldToParty.contact_person_mobile}
              </li>
              <li className="list-group-item">
                <strong>Group:</strong> {soldToParty.group}
              </li>

              <li className="list-group-item">
                <strong>Bin No:</strong> {soldToParty.bin_no}
              </li>

              <li className="list-group-item">
                <strong>Territory:</strong> {soldToParty.territory}
              </li>
              <li className="list-group-item">
                <strong>Customer Group:</strong> {soldToParty.customer_group}
              </li>
              <li className="list-group-item">
                <strong>Trade Category:</strong> {soldToParty.trade_category}
              </li>
              <li className="list-group-item">
                <strong>Trade Sub Category:</strong>{" "}
                {soldToParty.trade_sub_category}
              </li>
              <li className="list-group-item">
                <strong>Customer Group03:</strong>{" "}
                {soldToParty.customer_group_3}
              </li>

              <li className="list-group-item">
                <strong>Division:</strong> {soldToParty.loc_division_id}
              </li>
              <li className="list-group-item">
                <strong>District:</strong> {soldToParty.loc_district_id}
              </li>
              <li className="list-group-item">
                <strong>Upazila</strong> {soldToParty.loc_upazila_id}
              </li>
              <li className="list-group-item">
                <strong>Post Office</strong> {soldToParty.loc_post_office_id}
              </li>
              <li className="list-group-item">
                <strong>image:</strong> {soldToParty.image}
              </li>
              <li className="list-group-item">
                <strong>lat:</strong> {soldToParty.lat}
              </li>
              <li className="list-group-item">
                <strong>long:</strong> {soldToParty.long}
              </li>
              <li className="list-group-item">
                <strong>employee_id:</strong> {soldToParty.employee_id}
              </li>
              <li className="list-group-item">
                <strong>status:</strong> {soldToParty.status}
              </li>
              <li className="list-group-item">
                <strong>remarks:</strong> {soldToParty.remarks}
              </li>
              <li className="list-group-item">
                <strong>is_eligible_discount:</strong>{" "}
                {String(soldToParty.is_eligible_discount)}
              </li>
              <li className="list-group-item">
                <strong>activeStatus:</strong>{" "}
                {String(soldToParty.activeStatus)}
              </li>
              <li className="list-group-item">
                <strong>created_by:</strong> {soldToParty.created_by}
              </li>
              <li className="list-group-item">
                <strong>hostname:</strong> {soldToParty.hostname}
              </li>
            </ul>
            <div className="card-footer text-center">
              <div className="btn-group">
                <button className="btn btn-success">Approve</button>
                <button className="btn btn-warning">Reverse</button>
                <button className="btn btn-danger">Reject</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
