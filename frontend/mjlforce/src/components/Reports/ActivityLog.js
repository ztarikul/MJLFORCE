import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import "../../utils/datepicker.css";
import Auth from "../../auth/Auth";
import { format } from "date-fns";

export default function ActivityLog() {
  const { http } = Auth();
  const [dateRange, setDateRange] = useState([null, null]);
  const [startDate, endDate] = dateRange;
  const [employee, setEmployee] = useState();

  const [fetchData, setFetchdata] = useState({
    employees: [],
  });
  const fetchFormData = useCallback(() => {
    http
      .get("report/activity_log")
      .then((res) => {
        console.log(res);
        setFetchdata(res.data);
      })
      .catch((res) => {
        console.log(res);
      });
  }, []);

  useEffect(() => {
    fetchFormData();
  }, [fetchFormData]);

  const formSubmit = async (e) => {
    e.preventDefault();

    const formData = {
      employee_id: employee,
      start_date: format(startDate, "yyyy-MM-dd"),
      end_date: format(endDate, "yyyy-MM-dd"),
    };

    http
      .post("/report/get_activity_log", formData, {
        headers: {
          "Content-Type": "multipart/form-data",
        },
      })
      .then((res) => {
        console.log(res.data); // Handle success response
      })
      .catch((error) => {
        console.log(error);
        if (error.ststus !== 401) {
          // setErrors(error.response.data.errors);
        }
      });
  };

  return (
    <Main>
      <div className="container-fluid">
        <div className="row">
          <div className="col-xl-12 xl-100 col-lg-12 box-col-12">
            <div className="card" style={{ height: "50vh" }}>
              <div className="card-header pb-0">
                <h5>Activity Log</h5>
              </div>

              <form className="form theme-form" onSubmit={formSubmit}>
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
                          onChange={(e) => setEmployee(e.target.value)}
                        >
                          <option value="">Please Select</option>

                          {fetchData.employees.map((employee) => (
                            <option key={employee.id} value={employee.id}>
                              {employee.name}
                            </option>
                          ))}
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
                            dateFormat="yyyy-MM-dd"
                            onChange={(update) => {
                              setDateRange(update);
                            }}
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
