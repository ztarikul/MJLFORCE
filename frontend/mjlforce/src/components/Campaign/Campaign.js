import React from "react";
import Main from "../Main";
import { Link } from "react-router-dom";

export default function Campaign() {
  return (
    <Main>
      <div className="col-sm-12 col-xl-12">
        <div className="card">
          <div className="card-header pb-0">
            <h5>Campaign / Promotion</h5>
          </div>
          <div className="card-body">
            <div className="list-group">
              <Link
                className=" mt-2 list-group-item list-group-item-action flex-column align-items-start active"
                to="/promotional_items"
              >
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">Promotional Offer</h5>
                  <small>112 days ago</small>
                </div>
                <p className="mb-1">
                  This offer will be valid with for all Wholesaler
                </p>
                <small>Duration: 01.01.2025 - 31.12.2025</small>
              </Link>
              <a
                className="mt-2 list-group-item list-group-item-action flex-column align-items-start active"
                href="javascript:void(0)"
              >
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">Hot Summer Offer</h5>
                  <small>3 days ago</small>
                </div>
                <p className="mb-1">One Free T-shirt or a cap.</p>
                <small>Duration: 01.04.2025 - 31.04.2025</small>
              </a>
              <a
                className="mt-2 list-group-item list-group-item-action flex-column align-items-start active"
                href="javascript:void(0)"
              >
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">Drizzle Deals</h5>
                  <small className="">upcoming</small>
                </div>
                <p className="mb-1">Free Umbrella Campaign</p>
                <small className="text-muted">
                  Duration: 01.06.2025 - 31.06.2025
                </small>
              </a>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
