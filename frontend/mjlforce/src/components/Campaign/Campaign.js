import React from "react";
import Main from "../Main";

export default function Campaign() {
  return (
    <Main>
      <div className="col-sm-12 col-xl-12">
        <div className="card">
          <div className="card-header pb-0">
            <h5>Custom content</h5>
          </div>
          <div className="card-body">
            <div className="list-group">
              <a
                className="list-group-item list-group-item-action flex-column align-items-start active"
                href="javascript:void(0)"
              >
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">50/6 Promotional Offer</h5>
                  <small>3 days ago</small>
                </div>
                <p className="mb-1">
                  Six quantity free with Fifty quantity. This offer will be
                  valid with for all wholesaler
                </p>
                <small>Donec id elit non mi porta.</small>
              </a>
              <a
                className="list-group-item list-group-item-action flex-column align-items-start"
                href="javascript:void(0)"
              >
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">List group item heading</h5>
                  <small className="text-muted">3 days ago</small>
                </div>
                <p className="mb-1">
                  Donec id elit non mi porta gravida at eget metus. Maecenas sed
                  diam eget risus varius blandit.
                </p>
                <small className="text-muted">
                  Donec id elit non mi porta.
                </small>
              </a>
              <a
                className="list-group-item list-group-item-action flex-column align-items-start"
                href="javascript:void(0)"
              >
                <div className="d-flex w-100 justify-content-between">
                  <h5 className="mb-1">List group item heading</h5>
                  <small className="text-muted">3 days ago</small>
                </div>
                <p className="mb-1">
                  Donec id elit non mi porta gravida at eget metus. Maecenas sed
                  diam eget risus varius blandit.
                </p>
                <small className="text-muted">
                  Donec id elit non mi porta.
                </small>
              </a>
            </div>
          </div>
        </div>
      </div>
    </Main>
  );
}
