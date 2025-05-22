import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import { useParams } from "react-router-dom";
import Auth from "../../auth/Auth";
import PageLoader from "../../utils/PageLoader";

export default function PromotionalItems() {
  const { id } = useParams();
  const { http } = Auth();
  const [pageLoading, setPageLoading] = useState(true);
  const [fetchData, setFetchdata] = useState([]);

  const fetchFormData = useCallback(() => {
    http
      .get("/promotional_items", {
        params: {
          id: id,
        },
      })
      .then((res) => {
        console.log(res.data);
        setFetchdata(res.data.promotionalItems);
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
      <div className="col-xl-12 recent-order-sec">
        <div className="card">
          <div className="card-body">
            <div className="table-responsive">
              <h5>Promotional Items</h5>
              <table className="table table-bordernone">
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>Offer Qnty</th>
                    <th>Free Item</th>
                    <th>Free Qnty</th>
                  </tr>
                </thead>
                <tbody>
                  {fetchData.map((item) => (
                    <tr>
                      <td>
                        <p>{item.material_name}</p>
                      </td>
                      <td>
                        <p>{item.offer_qnty} </p>
                      </td>
                      <td>
                        <p>{item.promo_material_name}</p>
                      </td>
                      <td>
                        <p>{item.promo_qnty}</p>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
