import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import { Link } from "react-router-dom";
import Auth from "../../auth/Auth";
import dayjs from "dayjs";
import relativeTime from "dayjs/plugin/relativeTime";
import PageLoader from "../../utils/PageLoader";
dayjs.extend(relativeTime);

export default function Campaign() {
  const { http } = Auth();
  const [promotions, SetPromotions] = useState([]);
  const [pageLoading, setPageLoading] = useState(true);

  const fetchFormData = useCallback(() => {
    http
      .get("/promotions")
      .then((res) => {
        console.log(res.data.promotions);
        SetPromotions(res.data.promotions);
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
            <h5>Campaign / Promotion</h5>
          </div>
          <div className="card-body">
            <div className="list-group">
              {promotions.map((promotion) => (
                <Link
                  className=" mt-2 list-group-item list-group-item-action flex-column align-items-start active"
                  to={`/promotional_items/${promotion.id}`}
                  key={promotion.id}
                >
                  <div className="d-flex w-100 justify-content-between">
                    <h5 className="mb-1">{promotion.title}</h5>
                    <small>{dayjs(promotion.start_from).fromNow()}</small>
                  </div>
                  <p className="mb-1">{promotion.description}</p>
                  <small
                    className={
                      new Date(promotion.start_from) > new Date()
                        ? "text-muted"
                        : ""
                    }
                  >
                    Duration: {promotion.start_from} - {promotion.end_to}
                  </small>
                </Link>
              ))}
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
