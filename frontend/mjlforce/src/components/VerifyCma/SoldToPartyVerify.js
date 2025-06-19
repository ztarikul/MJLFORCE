import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import { useNavigate, useParams } from "react-router-dom";
import Auth from "../../auth/Auth";
import PageLoader from "../../utils/PageLoader";
import Swal from "sweetalert2";

export default function SoldToPartyVerify() {
  const navigate = useNavigate();
  const { id } = useParams();
  const { http } = Auth();
  const [pageLoading, setPageLoading] = useState(true);

  const [soldToParty, setSoldToParty] = useState({});
  const [shipToParty, setShipToParty] = useState({});
  const [errors, setErrors] = useState({});

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
          customer_acc_group: res.data.soldToParty.customer_acc_group,
          customer_group: res.data.soldToParty.customer_group.name,
          customer_group_3: res.data.soldToParty.customer_group_3,
          customer_type: res.data.soldToParty.customer_type.name,

          distribution_ch: res.data.soldToParty.distribution_ch.name,
          district: res.data.soldToParty.district,
          email: res.data.soldToParty.email,
          employee: res.data.soldToParty.employee.name,
          fax: res.data.soldToParty.fax,
          group: res.data.soldToParty.group,
          id: res.data.soldToParty.id,
          is_eligible_discount:
            res.data.soldToParty.is_eligible_discount === 0 ? "No" : "Yes",

          map: `https://www.google.com/maps?q=${res.data.soldToParty.lat},${res.data.soldToParty.long}&hl=es;z=14&output=embed`,
          loc_district: res.data.soldToParty.loc_district.name,

          loc_division: res.data.soldToParty.loc_division.name,

          loc_post_office: res.data.soldToParty.loc_post_office.post_office,

          loc_upazila: res.data.soldToParty.loc_upazila.name,
          phone: res.data.soldToParty.phone,
          postal_code: res.data.soldToParty.postal_code,
          region: res.data.soldToParty.region,
          remarks: res.data.soldToParty.remarks,
          sales_division: res.data.soldToParty.sales_division,
          sales_org: res.data.soldToParty.sales_org,

          territory: res.data.soldToParty.territory,
          territory_s_to_p: res.data.soldToParty.territory_s_to_p.name,
          trade_category: res.data.soldToParty.trade_category.name,
          trade_sub_category: res.data.soldToParty.trade_sub_category.name,
        });

        const shipToParties = res.data.shipToParties.map(
          (shipToParty, index) => {
            return {
              ...shipToParty,
              acc_name: shipToParty.acc_name,
              acc_name2: shipToParty.acc_name2,
              address: shipToParty.address,
              address_2: shipToParty.address_2,
              address_3: shipToParty.address_3,
              bin_no: shipToParty.bin_no,

              contact_person_mobile: shipToParty.contact_person_mobile,
              contact_person_name: shipToParty.contact_person_name,
              contact_person_tel: shipToParty.contact_person_tel,

              created_at: shipToParty.created_at,
              customer_acc_group: shipToParty.customer_acc_group,
              district: shipToParty.district,
              email: shipToParty.email,
              employee: shipToParty.employee.name,

              group: shipToParty.group,
              id: shipToParty.id,
              is_eligible_discount:
                shipToParty.is_eligible_discount === 0 ? "No" : "Yes",

              map: `https://www.google.com/maps?q=${shipToParty.lat},${shipToParty.long}&hl=es;z=14&output=embed`,
              loc_district: shipToParty.loc_district.name,

              loc_division: shipToParty.loc_division.name,

              loc_post_office: shipToParty.loc_post_office.post_office,

              loc_upazila: shipToParty.loc_upazila.name,
              postal_code: shipToParty.postal_code,

              remarks: shipToParty.remarks,
            };
          }
        );

        setShipToParty(shipToParties);
        setPageLoading(false);
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchFormData();
  }, [fetchFormData]);

  const soldToPartyApproveHandler = async (e) => {
    const result = await Swal.fire({
      title: "Are you sure?",
      text: "Do you want to approve the Sold-To-Party?",
      icon: "question",
      showCancelButton: true,
      confirmButtonText: "Yes, approve it!",
      cancelButtonText: "Cancel",
    });
    if (result.isConfirmed) {
      const data = {
        category: "s2p",
        action: "approve",
        target_id: soldToParty.id,
      };
      http
        .post(`/varification`, data, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then((res) => {
          if (res.data.status === 1) {
            console.log(res.data); // Handle success response
            Swal.fire({
              title: "Submitted!",
              text: res.data.msg,
              icon: "success",
              timer: 2000,
              showConfirmButton: false,
            });
            // navigate("/verify_new_cma");
          }
        })
        .catch((error) => {
          console.log(error);
          if (error.ststus !== 401) {
            setErrors(error.response.data.errors);
          }
        });
    }
  };

  const shipToPartyApproveHandler = async (id) => {
    const result = await Swal.fire({
      title: "Are you sure?",
      text: "By approving this Ship-To-Party, Sold-To-Party will be approved automatically?",
      icon: "question",
      showCancelButton: true,
      confirmButtonText: "Yes, approve it!",
      cancelButtonText: "Cancel",
    });
    if (result.isConfirmed) {
      const data = {
        category: "incSh2p",
        action: "approve",
        target_id: id,
      };
      http
        .post(`/varification`, data, {
          headers: {
            "Content-Type": "multipart/form-data",
          },
        })
        .then((res) => {
          console.log(res.data); // Handle success response
          if (res.data.status === 1) {
            Swal.fire({
              title: "Submitted!",
              text: res.data.msg,
              icon: "success",
              timer: 2000,
              showConfirmButton: false,
            });
            navigate("/verify_new_cma");
          }
        })
        .catch((error) => {
          console.log(error);
          if (error.ststus !== 401) {
            setErrors(error.response.data.errors);
          }
        });
    }
  };

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
              <li className="list-group-item active">
                <strong>Account name:</strong> {soldToParty.acc_name}{" "}
                {soldToParty.acc_name2}
              </li>

              <li className="list-group-item">
                <strong>customer Account Group:</strong>{" "}
                {soldToParty.customer_acc_group}
              </li>
              <li className="list-group-item">
                <strong>Company Code: </strong> {soldToParty.company_code}
              </li>
              <li className="list-group-item">
                <strong>Sales Org: </strong> {soldToParty.sales_org}
              </li>
              <li className="list-group-item">
                <strong>Distribution Channel: </strong>{" "}
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
              <li className="list-group-item active">
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
                <strong>Division:</strong> {soldToParty.loc_division}
              </li>
              <li className="list-group-item">
                <strong>District:</strong> {soldToParty.loc_district}
              </li>
              <li className="list-group-item">
                <strong>Upazila</strong> {soldToParty.loc_upazila}
              </li>
              <li className="list-group-item">
                <strong>Post Office</strong> {soldToParty.loc_post_office}
              </li>

              <li className="list-group-item active">
                <strong>Sales Person:</strong> {soldToParty.employee}
              </li>

              <li className="list-group-item">
                <strong>remarks:</strong> {soldToParty.remarks}
              </li>
              <li className="list-group-item">
                <strong>Discount Eligibility:</strong>{" "}
                {String(soldToParty.is_eligible_discount)}
              </li>
              <div className="text-center mt-1">
                <iframe
                  src={soldToParty.map}
                  width="100%"
                  height="200"
                  allowFullScreen
                  loading="lazy"
                ></iframe>
              </div>
            </ul>
            <div className="card-footer text-center">
              <div className="btn-group">
                <button
                  className="btn btn-success"
                  onClick={soldToPartyApproveHandler}
                >
                  Approve
                </button>
                <button className="btn btn-warning">Reverse</button>
                <button className="btn btn-danger">Reject</button>
              </div>
            </div>
          </div>
        </div>
      </div>

      {shipToParty.map((shTop, index) => (
        <div className="col-sm-12 col-xl-12" key={shTop.id}>
          <div className="card">
            <div className="card-header pb-0">
              <h5>Ship-To-Party Verification</h5>
            </div>
            <div className="card-body">
              <ul className="list-group">
                <li className="list-group-item active">
                  <strong>Account name:</strong> {shTop.acc_name}{" "}
                  {shTop.acc_name2}
                </li>

                <li className="list-group-item">
                  <strong>customer Account Group:</strong>{" "}
                  {shTop.customer_acc_group}
                </li>

                <li className="list-group-item">
                  <strong>District:</strong> {shTop.district}
                </li>
                <li className="list-group-item active">
                  <strong>Address:</strong> {shTop.address} {shTop.address_2}{" "}
                  {shTop.address_3}
                </li>

                <li className="list-group-item">
                  <strong>Email:</strong> {shTop.email}
                </li>
                <li className="list-group-item">
                  <strong>Postal Code:</strong> {shTop.postal_code}
                </li>
                <li className="list-group-item">
                  <strong>Contact Person Name:</strong>{" "}
                  {shTop.contact_person_name}
                </li>
                <li className="list-group-item">
                  <strong>Contact Person Tel:</strong>{" "}
                  {shTop.contact_person_tel}
                </li>
                <li className="list-group-item">
                  <strong>Contact Person Mobile:</strong>{" "}
                  {shTop.contact_person_mobile}
                </li>
                <li className="list-group-item">
                  <strong>Group:</strong> {shTop.group}
                </li>

                <li className="list-group-item">
                  <strong>Bin No:</strong> {shTop.bin_no}
                </li>

                <li className="list-group-item">
                  <strong>Division:</strong> {shTop.loc_division}
                </li>
                <li className="list-group-item">
                  <strong>District:</strong> {shTop.loc_district}
                </li>
                <li className="list-group-item">
                  <strong>Upazila</strong> {shTop.loc_upazila}
                </li>
                <li className="list-group-item">
                  <strong>Post Office</strong> {shTop.loc_post_office}
                </li>

                <li className="list-group-item active">
                  <strong>Sales Person:</strong> {shTop.employee}
                </li>

                <li className="list-group-item">
                  <strong>remarks:</strong> {shTop.remarks}
                </li>
                <li className="list-group-item">
                  <strong>Discount Eligibility:</strong>{" "}
                  {String(shTop.is_eligible_discount)}
                </li>
                <div className="text-center mt-1">
                  <iframe
                    src={shTop.map}
                    width="100%"
                    height="200"
                    allowFullScreen
                    loading="lazy"
                  ></iframe>
                </div>
              </ul>
              <div className="card-footer text-center">
                <div className="btn-group">
                  <button
                    className="btn btn-success"
                    onClick={() => shipToPartyApproveHandler(shTop.id)}
                  >
                    Approve
                  </button>
                  <button className="btn btn-warning">Reverse</button>
                  <button className="btn btn-danger">Reject</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      ))}
    </Main>
  );
}
