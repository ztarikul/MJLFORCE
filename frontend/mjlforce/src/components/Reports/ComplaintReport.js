import React, { useCallback, useEffect, useState } from "react";
import DataTable from "react-data-table-component";
import Main from "../Main";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import "../../utils/datepicker.css";
import Auth from "../../auth/Auth";
import Modal from "react-modal";
import { format } from "date-fns";

export default function ComplaintReport() {
  const { http } = Auth();
  const [dateRange, setDateRange] = useState([null, null]);
  const [startDate, endDate] = dateRange;
  const [employee, setEmployee] = useState();
  const [reportDisable, setReportDisable] = useState(false);
  const [reportType, setReportType] = useState();
  const [logs, setLogs] = useState({});

  const [modalOpen, setModalOpen] = useState(false);
  const [modalImages, setModalImages] = useState([]);

  const openModal = (images) => {
    console.log(images);
    setModalImages(images);
    setModalOpen(true);
  };

  const columns = [
    {
      name: "Date",
      selector: (row) => row.date,
      sortable: true,
      minWidth: "90px",
    },
    {
      name: "EMP",
      selector: (row) => row.employee_name,
      sortable: true,
      minWidth: "150px",
    },
    {
      name: "Site",
      selector: (row) => row.site_name,
      wrap: true, // allows multi-line text
      minWidth: "180px",
    },
    {
      name: "Address",
      selector: (row) => row.site_address,
      wrap: true, // allows multi-line text
      minWidth: "180px",
    },
    {
      name: "Complaint Type",
      selector: (row) => row.complaint_type,
      wrap: true, // allows multi-line text
      minWidth: "180px",
    },
    {
      name: "Complaint",
      selector: (row) => row.complaint,
      wrap: true, // allows multi-line text
      minWidth: "250px",
    },
    {
      name: "Action",
      cell: (row) => (
        <div className="btn-group">
          <button
            className="btn btn-primary btn-sm"
            onClick={() => openModal([row.image_1, row.image_2, row.image_3])}
          >
            View
          </button>
        </div>
      ),
      minWidth: "150px",
    },
  ];

  const [fetchData, setFetchdata] = useState({
    employees: [],
  });

  const fetchFormData = useCallback(() => {
    http
      .get("report/complaint_report")
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
      .post("/report/get_complaint_report", formData, {
        headers: {
          "Content-Type": "multipart/form-data",
        },
      })
      .then((res) => {
        console.log(res.data); // Handle success response
        setLogs(res.data.complaints);
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
                <h5>Complaint Report</h5>
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
                    title="Complaint Report"
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

          <Modal
            isOpen={modalOpen}
            onRequestClose={() => setModalOpen(false)}
            className="p-5 mb-5 bg-white modal-dialog"
          >
            <div className="modal-header">
              <h5 v="modal-title" id="exampleModalLabel">
                Images
              </h5>
              <button
                className="btn-close"
                type="button"
                data-bs-dismiss="modal"
                aria-label="Close"
              ></button>
            </div>

            <div className="modal-body">
              {modalImages.map((img, index) => (
                <img
                  key={index}
                  src={img}
                  alt="Preview"
                  className="w-full h-24 object-cover rounded"
                />
              ))}
            </div>

            <button
              onClick={() => setModalOpen(false)}
              className="mt-4 px-4 py-2 btn-danger text-white rounded"
            >
              Close
            </button>
          </Modal>
        </div>
      </div>
    </Main>
  );
}
