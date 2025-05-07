import React, { useEffect, useState } from "react";
import Main from "../Main";
import { Link } from "react-router-dom";
import Auth from "../../auth/Auth";
import dayjs from "dayjs";
import relativeTime from "dayjs/plugin/relativeTime";
import PageLoader from "../../utils/PageLoader";
dayjs.extend(relativeTime);

export default function Leads() {
  const { http } = Auth();
  const [leads, setLeads] = useState([]);
  const [pageLoading, setPageLoading] = useState(true);

  const fetchLeads = async () => {
    await http
      .get("/leads")
      .then((res) => {
        console.log(res);
        setLeads(res.data.leads);
        setPageLoading(false);
      })
      .catch((res) => {
        console.log(res);
      });
  };

  useEffect(() => {
    fetchLeads();
  }, []);

  if (pageLoading) {
    return <PageLoader />;
  }

  return (
    <Main>
      <div className="col-sm-12 col-xl-12">
        <div className="card">
          <div className="card-header pb-0">
            <h5>Leads</h5>
          </div>
          <div className="card-body">
            <div className="list-group">
              {leads && leads.length > 0 ? (
                leads.map((lead) => (
                  <Link
                    to={`/leads_process/${lead.id}`}
                    key={lead.id}
                    className=" mt-2 list-group-item list-group-item-action flex-column align-items-start active"
                  >
                    <div className="d-flex w-100 justify-content-between">
                      <h5 className="mb-1">{lead.acc_name}</h5>
                      <small>{dayjs(lead.created_at).fromNow()}</small>
                    </div>
                    <p className="mb-1">{lead.address}</p>
                    <small></small>
                  </Link>
                ))
              ) : (
                <p>No data found</p>
              )}
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
