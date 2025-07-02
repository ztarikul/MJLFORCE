import React, { useState } from "react";
import Main from "../Main";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import "../../utils/datepicker.css";

export default function ActivityLog() {
  const [dateRange, setDateRange] = useState([null, null]);
  const [startDate, endDate] = dateRange;
  return (
    <Main>
      <div className="container-fluid">
        <div className="row">
          <div className="col-xl-12 xl-100 col-lg-12 box-col-12">
            <div className="card" style={{ height: "50vh" }}>
              <div className="card-header pb-0">
                <h5>Activity Log</h5>
              </div>

              <form className="form theme-form">
                <div className="card-body">
                  <div className="row">
                    <div className="col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="employee">
                          Employee Name
                        </label>
                        <select
                          className="form-select"
                          id="employee_id"
                          name="employee_id"
                        >
                          <option value="">Please Select</option>
                        </select>
                      </div>
                    </div>

                    <div className="col-md-4">
                      <div className="mb-3">
                        <label className="form-label" htmlFor="date-range">
                          Date Range
                        </label>
                        <div>
                          <DatePicker
                            className="form-control full-width-datepicker"
                            selectsRange={true}
                            startDate={startDate}
                            popperPlacement="auto"
                            placeholderText="Select date range"
                            endDate={endDate}
                            onChange={(update) => {
                              setDateRange(update);
                            }}
                            dateFormat="yyyy-MM-dd"
                            isClearable={true}
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="card-footer text-end">
                  <button className="btn btn-primary" type="submit">
                    Search
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
