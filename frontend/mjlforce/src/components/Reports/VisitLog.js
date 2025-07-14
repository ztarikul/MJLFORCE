import React, { useCallback, useEffect, useState } from "react";
import Main from "../Main";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import "../../utils/datepicker.css";
import Auth from "../../auth/Auth";
import { format } from "date-fns";

export default function VisitLog() {
  const { http } = Auth();
  const [dateRange, setDateRange] = useState([null, null]);
  const [startDate, endDate] = dateRange;
  const [employee, setEmployee] = useState();
  const [logs, setLogs] = useState({});

  const [fetchData, setFetchdata] = useState({
    employees: [],
  });
  const fetchFormData = useCallback(() => {
    http
      .get("report/visit_log")
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
      .post("/report/get_visit_log", formData, {
        headers: {
          "Content-Type": "multipart/form-data",
        },
      })
      .then((res) => {
        console.log(res.data); // Handle success response
        setLogs(res.data.visitLogs);
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
        <div className="card resizable-div">
          <div className="row">
            <div className="col-12">
              <div className="card-header pb-0">
                <h5>Visit Log</h5>
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
                            withPortal
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
            {logs.length > 0 && (
              <div className="row">
                <div className="table-responsive">
                  <table className="table">
                    <thead>
                      <tr>
                        <th scope="col">Date</th>
                        <th scope="col">Action</th>
                        <th scope="col">Remarks</th>
                        <th scope="col">Address</th>
                      </tr>
                    </thead>
                    <tbody>
                      {logs.map((log) => (
                        <tr key={log.id}>
                          <td>{log.date}</td>
                          <td>{log.action}</td>
                          <td>{log.remarks}</td>
                          <td>{log.address}</td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </Main>
  );
}
