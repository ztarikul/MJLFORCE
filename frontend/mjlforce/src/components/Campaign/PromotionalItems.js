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
                      <div className="media">
                        <img
                          className="img-fluid rounded-circle"
                          src="../assets/images/dashboard/product-1.png"
                          alt=""
                          data-original-title=""
                          title=""
                        />
                        <div className="media-body">
                          <a href="product-page.html">
                            <span>Yellow New Nike shoes</span>
                          </a>
                        </div>
                      </div>
                    </td>
                    <td>
                      <p>16 August</p>
                    </td>
                    <td>
                      <p>54146</p>
                    </td>
                    <td>
                      <img
                        className="img-fluid"
                        src="../assets/images/dashboard/graph-1.png"
                        alt=""
                        data-original-title=""
                        title=""
                      />
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div className="media">
                        <img
                          className="img-fluid rounded-circle"
                          src="../assets/images/dashboard/product-2.png"
                          alt=""
                          data-original-title=""
                          title=""
                        />
                        <div className="media-body">
                          <a href="product-page.html">
                            <span>Sony Brand New Headphone</span>
                          </a>
                        </div>
                      </div>
                    </td>

                    <td>
                      <img
                        className="img-fluid"
                        src="../assets/images/dashboard/graph-2.png"
                        alt=""
                        data-original-title=""
                        title=""
                      />
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div className="media">
                        <img
                          className="img-fluid rounded-circle"
                          src="../assets/images/dashboard/product-3.png"
                          alt=""
                          data-original-title=""
                          title=""
                        />
                        <div className="media-body">
                          <a href="product-page.html">
                            <span>Beautiful Golden Tree plant</span>
                          </a>
                        </div>
                      </div>
                    </td>

                    <td>
                      <img
                        className="img-fluid"
                        src="../assets/images/dashboard/graph-3.png"
                        alt=""
                        data-original-title=""
                        title=""
                      />
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div className="media">
                        <img
                          className="img-fluid rounded-circle"
                          src="../assets/images/dashboard/product-4.png"
                          alt=""
                          data-original-title=""
                          title=""
                        />
                        <div className="media-body">
                          <a href="product-page.html">
                            <span>Marco M Kely Handbeg</span>
                          </a>
                        </div>
                      </div>
                    </td>

                    <td>
                      <img
                        className="img-fluid"
                        src="../assets/images/dashboard/graph-4.png"
                        alt=""
                        data-original-title=""
                        title=""
                      />
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <div className="media">
                        <img
                          className="img-fluid rounded-circle"
                          src="../assets/images/dashboard/product-5.png"
                          alt=""
                          data-original-title=""
                          title=""
                        />
                        <div className="media-body">
                          <a href="product-page.html">
                            <span>Being Human Branded T-Shirt</span>
                          </a>
                        </div>
                      </div>
                    </td>

                    <td>
                      <img
                        className="img-fluid"
                        src="../assets/images/dashboard/graph-5.png"
                        alt=""
                        data-original-title=""
                        title=""
                      />
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
