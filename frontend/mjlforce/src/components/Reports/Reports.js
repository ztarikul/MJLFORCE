import React from "react";
import Main from "../Main";
import { Link } from "react-router-dom";

export default function Reports() {
  return (
    <Main>
      <div className="col-sm-12 col-xl-12">
        <div className="card">
          <div className="card-header pb-0">
            <h5>Reports</h5>
          </div>
          <div className="card-body">
            <div className="list-group">
              <Link className=" mt-2 list-group-item list-group-item-action flex-column align-items-start active">
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">Activity Log</h5>
                </div>
              </Link>
              <Link className=" mt-2 list-group-item list-group-item-action flex-column align-items-start ">
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">Visits</h5>
                </div>
              </Link>
              <Link className=" mt-2 list-group-item list-group-item-action flex-column align-items-start active">
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">Complaints</h5>
                </div>
              </Link>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
