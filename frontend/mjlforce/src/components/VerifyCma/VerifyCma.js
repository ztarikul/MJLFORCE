import React, { useEffect, useState } from "react";
import Auth from "../../auth/Auth";
import Main from "../Main";
import PageLoader from "../../utils/PageLoader";
import dayjs from "dayjs";
import { Link } from "react-router-dom";
import relativeTime from "dayjs/plugin/relativeTime";
dayjs.extend(relativeTime);

export default function VerifyCma() {
  const { http } = Auth();
  const [cmas, setCmas] = useState([]);
  const [pageLoading, setPageLoading] = useState(true);

  const fetchCmas = async () => {
    await http
      .get("/cma_varification")
      .then((res) => {
        console.log(res);
        setCmas(res.data.cmas);
        setPageLoading(false);
      })
      .catch((res) => {
        console.log(res);
      });
  };

  useEffect(() => {
    fetchCmas();
  }, []);

  if (pageLoading) {
    return <PageLoader />;
  }
  return (
    <Main>
      <div className="col-sm-12 col-xl-12">
        <div className="card">
          <div className="card-header pb-0">
            <h5>Verification New CMA</h5>
          </div>
          <div className="card-body">
            <div className="list-group">
              {cmas && cmas.length > 0 ? (
                cmas.map((cma) =>
                  cma.sold_to_party_id ? (
                    <Link
                      to={`/sh2p_varify/${cma.id}`}
                      key={cma.id}
                      className=" mt-2 list-group-item list-group-item-action flex-column align-items-start"
                    >
                      <div className="d-flex w-100 justify-content-between">
                        <h5 className="mb-1">{cma.acc_name}</h5>
                        <small>{dayjs(cma.created_at).fromNow()}</small>
                      </div>
                      <p className="mb-1">{cma.address}</p>
                    </Link>
                  ) : (
                    <Link
                      to={`/s2p_varify/${cma.id}`}
                      key={cma.id}
                      className=" mt-2 list-group-item list-group-item-action flex-column align-items-start active"
                    >
                      <div className="d-flex w-100 justify-content-between">
                        <h5 className="mb-1">{cma.acc_name}</h5>
                        <small>{dayjs(cma.created_at).fromNow()}</small>
                      </div>
                      <p className="mb-1">{cma.address}</p>
                    </Link>
                  )
                )
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
