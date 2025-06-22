import React, { useEffect, useState } from "react";
import Main from "../Main";
import TargetCharts from "../Charts/TargetCharts";
import Auth from "../../auth/Auth";

export default function SalesTarget() {
  const { http } = Auth();
  const [salesVsTarget, setSalesVsTarget] = useState({});

  useEffect(() => {
    const fetchData = async () => {
      http
        .get("/sales_vs_target")
        .then((res) => {
          console.log(res.data);
          setSalesVsTarget(res.data.salesTargets);
        })
        .catch((res) => {
          console.log(res);
        });
    };

    fetchData();
  }, []);

  return (
    <Main>
      <div className="col-12 col-xl-12 col-lg-12">
        <TargetCharts value={salesVsTarget} />
      </div>
      <div className="container-fluid">
        <div className="row">
          <div className="col-sm-12">
            <div className="card">
              <div className="card-body row pricing-content pricing-col">
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>January</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jan_target
                                ? salesVsTarget.jan_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jan_sales
                                ? salesVsTarget.jan_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jan_percentage
                                ? salesVsTarget.jan_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>February</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.feb_target
                                ? salesVsTarget.feb_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.feb_sales
                                ? salesVsTarget.feb_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.feb_percentage
                                ? salesVsTarget.feb_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>March</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.mar_target
                                ? salesVsTarget.mar_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.mar_sales
                                ? salesVsTarget.mar_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.mar_percentage
                                ? salesVsTarget.mar_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>April</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.apr_target
                                ? salesVsTarget.apr_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.apr_sales
                                ? salesVsTarget.apr_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.apr_percentage
                                ? salesVsTarget.apr_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>May</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.may_target
                                ? salesVsTarget.may_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.may_sales
                                ? salesVsTarget.may_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.may_percentage
                                ? salesVsTarget.may_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>June</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jun_target
                                ? salesVsTarget.jun_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jun_sales
                                ? salesVsTarget.jun_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jun_percentage
                                ? salesVsTarget.jun_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>July</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jul_target
                                ? salesVsTarget.jul_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jul_sales
                                ? salesVsTarget.jul_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.jul_percentage
                                ? salesVsTarget.jul_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>August</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.aug_target
                                ? salesVsTarget.aug_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.aug_sales
                                ? salesVsTarget.aug_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.aug_percentage
                                ? salesVsTarget.aug_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>September</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.sep_target
                                ? salesVsTarget.sep_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.sep_sales
                                ? salesVsTarget.sep_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.oct_percentage
                                ? salesVsTarget.oct_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>October</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.oct_target
                                ? salesVsTarget.oct_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.oct_sales
                                ? salesVsTarget.oct_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.oct_percentage
                                ? salesVsTarget.oct_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>November</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.nov_target
                                ? salesVsTarget.nov_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.nov_sales
                                ? salesVsTarget.nov_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.nov_percentage
                                ? salesVsTarget.nov_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="col-md-3">
                  <div className="pricing-block card text-center">
                    <div className="pricing-header">
                      <h2>December</h2>
                      <div className="price-box">
                        <div>
                          <h3>{salesVsTarget.year}</h3>
                        </div>
                      </div>
                    </div>
                    <div className="pricing-list">
                      <ul className="pricing-inner">
                        <li>
                          <h6>
                            Target:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.dec_target
                                ? salesVsTarget.dec_target
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Sales:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.dec_sales
                                ? salesVsTarget.dec_sales
                                : 0}
                            </span>{" "}
                            Ltr.
                          </h6>
                        </li>
                        <li>
                          <h6>
                            Percentage:{" "}
                            <span>
                              {" "}
                              {salesVsTarget.dec_percentage
                                ? salesVsTarget.dec_percentage
                                : 0}
                            </span>{" "}
                            %
                          </h6>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
