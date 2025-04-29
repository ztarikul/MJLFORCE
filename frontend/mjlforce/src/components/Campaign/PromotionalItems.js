import React from "react";
import Main from "../Main";

export default function PromotionalItems() {
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
                  <tr>
                    <td>
                      <span>Mobil Delvac 1340 | 20 LT PAIL</span>
                    </td>
                    <td>
                      <p>50 PL</p>
                    </td>
                    <td>
                      <p>Mobil Delvac 1340 | 20 LT PAIL</p>
                    </td>
                    <td>
                      <p>5 PL</p>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <span>Mobil Delvac MX 15W-40 | 5 LT CAN</span>
                    </td>
                    <td>
                      <p>200 CAN</p>
                    </td>
                    <td>
                      <p>Mobil Delvac 1340 | 20 LT PAIL</p>
                    </td>
                    <td>
                      <p>20 CAN</p>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <span>Mobil Super 4T 20W-50 | 1 LT CAN</span>
                    </td>
                    <td>
                      <p>600 CAN</p>
                    </td>
                    <td>
                      <p>Mobil Super 4T 20W-50 | 1 LT CAN</p>
                    </td>
                    <td>
                      <p>60 CAN</p>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
