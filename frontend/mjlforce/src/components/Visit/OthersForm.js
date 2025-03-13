import React from "react";

export default function OthersForm() {
  return (
    <form className="form theme-form">
      <div className="card-body">
        <div className="row">
          <div className="col">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleFormControlInput1">
                Email address
              </label>
              <input
                className="form-control"
                id="exampleFormControlInput1"
                type="email"
                placeholder="name@example.com"
              />
            </div>
          </div>
        </div>
        <div className="row">
          <div className="col">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleInputPassword2">
                Password
              </label>
              <input
                className="form-control"
                id="exampleInputPassword2"
                type="password"
                placeholder="Password"
              />
            </div>
          </div>
        </div>

        <div className="row">
          <div className="col">
            <div className="mb-3">
              <label className="form-label" htmlFor="exampleFormControlSelect3">
                Example multiple select
              </label>
              <select
                className="form-select digits"
                id="exampleFormControlSelect3"
                multiple=""
              >
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
            </div>
          </div>
        </div>
        <div className="row">
          <div className="col">
            <div>
              <label
                className="form-label"
                htmlFor="exampleFormControlTextarea4"
              >
                Example textarea
              </label>
              <textarea
                className="form-control"
                id="exampleFormControlTextarea4"
                rows="3"
              ></textarea>
            </div>
          </div>
        </div>
      </div>
      <div className="card-footer text-end">
        <button className="btn btn-primary" type="submit">
          Submit
        </button>
        <input className="btn btn-light" type="reset" value="Cancel" />
      </div>
    </form>
  );
}
