import React, { useCallback, useEffect, useState } from "react";
import DataTable from "react-data-table-component";
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
  const [reportDisable, setReportDisable] = useState(false);
  const [reportType, setReportType] = useState();
  const [logs, setLogs] = useState({});

  const columns = [
    {
      name: "Date",
      selector: (row) => row.date,
      sortable: true,
      minWidth: "120px",
    },
    {
      name: "EMP",
      selector: (row) => row.employee_name,
      sortable: true,
      minWidth: "180px",
    },
    {
      name: "Action",
      selector: (row) => row.action,
      minWidth: "150px",
    },
    {
      name: "Remarks",
      selector: (row) => row.remarks,
      wrap: true, // allows multi-line text
      minWidth: "250px",
    },
    {
      name: "Address",
      selector: (row) => row.address,
      wrap: true,
      minWidth: "300px",
    },
  ];

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
      report_type: reportType,
    };

    http
      .post("/report/get_activity_log", formData, {
        headers: {
          "Content-Type": "multipart/form-data",
        },
      })
      .then((res) => {
        console.log(res.data); // Handle success response
        setLogs(res.data.activityLogs);
      })
      .catch((error) => {
        console.log(error);
        if (error.ststus !== 401) {
          // setErrors(error.response.data.errors);
        }
      });
  };

  const radioChangeHandler = (e) => {
    const { name, value } = e.target;
    setReportType(value);
    setReportDisable(true);
  };

  const resetHandler = () => {
    setReportType(null);
    setReportDisable(false);
  };

  return (
    <Main>
      <div className="container-fluid">
        <div className="card resizable-div">
          <div className="row">
            <div className="col-12">
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
                          disabled={reportDisable}
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
                    <div className="col-md-4">
                      <div className="form-group m-t-15 m-checkbox-inline mb-0 custom-radio-ml">
                        <div className="radio radio-primary">
                          <input
                            id="radioinline1"
                            type="radio"
                            name="report_type"
                            value="own"
                            onChange={radioChangeHandler}
                          />
                          <label className="mb-0" htmlFor="radioinline1">
                            Own Report
                          </label>
                        </div>
                        <div className="radio radio-primary">
                          <input
                            id="radioinline2"
                            type="radio"
                            name="report_type"
                            value="all_emp"
                            onChange={radioChangeHandler}
                          />
                          <label className="mb-0" htmlFor="radioinline2">
                            All Employees
                          </label>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="card-footer text-end">
                  <div className="btn-group">
                    <button
                      className="btn btn-secondary"
                      onClick={resetHandler}
                      type="reset"
                    >
                      Reset
                    </button>
                    <button className="btn btn-primary" type="submit">
                      Search
                    </button>
                  </div>
                </div>
              </form>
            </div>
            {logs.length > 0 && (
              <div className="row">
                <div className="table-responsive">
                  <DataTable
                    title="Employee Logs"
                    columns={columns}
                    data={logs}
                    pagination
                    highlightOnHover
                    dense
                    striped
                    responsive={true} // disable auto-resize
                    fixedHeader
                    fixedHeaderScrollHeight="500px"
                    persistTableHead
                  />
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </Main>
  );
}
