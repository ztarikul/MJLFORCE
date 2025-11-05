import React, { Fragment, useCallback, useEffect, useState } from "react";
import Main from "../Main";
import TargetCharts from "../Charts/TargetCharts";
import Auth from "../../auth/Auth";

export default function SalesTarget() {
  const { http } = Auth();
  const [salesVsTarget, setSalesVsTarget] = useState(null);

  const fetchData = useCallback(() => {
    http
      .get("/sales_vs_target")
      .then((res) => {
        console.log(res.data);
        setSalesVsTarget(res.data.salesTargets);
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchData();
  }, [fetchData]);

  const getClassNameByValue = (value) => {
    let className = "";
    if (value >= 90) {
      className = "bg-primary";
    } // success
    else if (value >= 70 && value < 90) {
      className = "bg-secondary";
    } // danger
    else if (value === 0) {
      className = "bg-light";
    } // danger
    else {
      className = "bg-danger";
    }

    return className;
  };

  return (
    <Main>
      {salesVsTarget ? (
        <Fragment>
          <div className="col-12 col-xl-12 col-lg-12">
            <TargetCharts value={salesVsTarget} />
          </div>
          <div className="container-fluid">
            <div className="row">
              <div className="col-sm-12">
                <div className="card">
                  <div className="table-responsive">
                    <table className="table table-borderedfor">
                      <thead>
                        <tr>
                          <th scope="col">Month</th>
                          {/* <th scope="col">Target(Ltr.)</th> */}
                          <th scope="col">Sales(Ltr.)</th>
                          <th scope="col">Percent.</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr className="">
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jan_percentage
                            )}
                          >
                            January
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.jan_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.jan_target
                          ? salesVsTarget.jan_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jan_percentage
                            )}
                          >
                            {salesVsTarget.jan_sales
                              ? salesVsTarget.jan_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jan_percentage
                            )}
                          >
                            {salesVsTarget.jan_percentage
                              ? salesVsTarget.jan_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr className="">
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.feb_percentage
                            )}
                          >
                            February
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.feb_percentage
                        )}
                      >
                        {salesVsTarget.feb_target
                          ? salesVsTarget.feb_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.feb_percentage
                            )}
                          >
                            {salesVsTarget.feb_sales
                              ? salesVsTarget.feb_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.feb_percentage
                            )}
                          >
                            {salesVsTarget.feb_percentage
                              ? salesVsTarget.feb_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.mar_percentage
                            )}
                          >
                            March
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.mar_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.mar_target
                          ? salesVsTarget.mar_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.mar_percentage
                            )}
                          >
                            {" "}
                            {salesVsTarget.mar_sales
                              ? salesVsTarget.mar_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.mar_percentage
                            )}
                          >
                            {" "}
                            {salesVsTarget.mar_percentage
                              ? salesVsTarget.mar_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.apr_percentage
                            )}
                          >
                            April
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.apr_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.apr_target
                          ? salesVsTarget.apr_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.apr_percentage
                            )}
                          >
                            {salesVsTarget.apr_sales
                              ? salesVsTarget.apr_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.apr_percentage
                            )}
                          >
                            {" "}
                            {salesVsTarget.apr_percentage
                              ? salesVsTarget.apr_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.may_percentage
                            )}
                          >
                            May
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.may_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.may_target
                          ? salesVsTarget.may_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.may_percentage
                            )}
                          >
                            {salesVsTarget.may_sales
                              ? salesVsTarget.may_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.may_percentage
                            )}
                          >
                            {" "}
                            {salesVsTarget.may_percentage
                              ? salesVsTarget.may_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jun_percentage
                            )}
                          >
                            June
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.jun_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.jun_target
                          ? salesVsTarget.jun_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jun_percentage
                            )}
                          >
                            {salesVsTarget.jun_sales
                              ? salesVsTarget.jun_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jun_percentage
                            )}
                          >
                            {salesVsTarget.jun_percentage
                              ? salesVsTarget.jun_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr className="">
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jul_percentage
                            )}
                          >
                            July
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.jul_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.jul_target
                          ? salesVsTarget.jul_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jul_percentage
                            )}
                          >
                            {salesVsTarget.jul_sales
                              ? salesVsTarget.jul_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.jul_percentage
                            )}
                          >
                            {salesVsTarget.jul_percentage
                              ? salesVsTarget.jul_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr className="">
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.aug_percentage
                            )}
                          >
                            August
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.aug_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.aug_target
                          ? salesVsTarget.aug_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.aug_percentage
                            )}
                          >
                            {salesVsTarget.aug_sales
                              ? salesVsTarget.aug_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.aug_percentage
                            )}
                          >
                            {salesVsTarget.aug_percentage
                              ? salesVsTarget.aug_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr className="">
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.sep_percentage
                            )}
                          >
                            September
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.sep_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.sep_target
                          ? salesVsTarget.sep_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.sep_percentage
                            )}
                          >
                            {salesVsTarget.sep_sales
                              ? salesVsTarget.sep_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.sep_percentage
                            )}
                          >
                            {salesVsTarget.sep_percentage
                              ? salesVsTarget.sep_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr className="">
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.oct_percentage
                            )}
                          >
                            October
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.oct_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.oct_target
                          ? salesVsTarget.oct_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.oct_percentage
                                ? salesVsTarget.oct_percentage
                                : ""
                            )}
                          >
                            {salesVsTarget.oct_sales
                              ? salesVsTarget.oct_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.oct_percentage
                            )}
                          >
                            {salesVsTarget.oct_percentage
                              ? salesVsTarget.oct_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr className="">
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.nov_percentage
                            )}
                          >
                            November
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.nov_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.nov_target
                          ? salesVsTarget.nov_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.nov_percentage
                            )}
                          >
                            {salesVsTarget.nov_sales
                              ? salesVsTarget.nov_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.nov_percentage
                            )}
                          >
                            {salesVsTarget.nov_percentage
                              ? salesVsTarget.nov_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                        <tr className="">
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.dec_percentage
                            )}
                          >
                            December
                          </td>
                          {/* <td
                        className={getClassNameByValue(
                          salesVsTarget.dec_percentage
                        )}
                      >
                        {" "}
                        {salesVsTarget.dec_target
                          ? salesVsTarget.dec_target
                          : 0}
                      </td> */}
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.dec_percentage
                            )}
                          >
                            {salesVsTarget.dec_sales
                              ? salesVsTarget.dec_sales
                              : 0}
                          </td>
                          <td
                            className={getClassNameByValue(
                              salesVsTarget.dec_percentage
                            )}
                          >
                            {salesVsTarget.dec_percentage
                              ? salesVsTarget.dec_percentage
                              : 0}{" "}
                            %
                          </td>
                        </tr>
                      </tbody>
                      <tfoot className="bg-info">
                        <tr>
                          <td scope="col">Total</td>
                          {/* <th scope="col">{salesVsTarget.total_target}</th>/ */}
                          <td scope="col">{salesVsTarget.total_sales}</td>
                          <td scope="col">{salesVsTarget.total_percentage}</td>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </Fragment>
      ) : (
        <p>No Data Found</p>
      )}
    </Main>
  );
}
