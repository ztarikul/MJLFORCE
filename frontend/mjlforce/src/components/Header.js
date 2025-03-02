import React from "react";
import { Link } from "react-router-dom";

export default function Header() {
  return (
    <div className="page-main-header">
      <div className="main-header-right row m-0">
        <div className="main-header-left">
          <div className="logo-wrapper">
            <Link to="/">
              <img
                className="img-fluid"
                src="../assets/images/logo/logo.png"
                alt=""
              />
            </Link>
          </div>
          <div className="dark-logo-wrapper">
            <Link to="/">
              <img
                className="img-fluid"
                src="../assets/images/logo/dark-logo.png"
                alt=""
              />
            </Link>
          </div>
          <div className="toggle-sidebar">
            <i
              className="status_toggle middle"
              data-feather="align-center"
              id="sidebar-toggle"
            ></i>
          </div>
        </div>
        <div className="left-menu-header col">
          <ul>
            <li>
              <form className="form-inline search-form">
                <div className="search-bg">
                  <i className="fa fa-search"></i>
                  <input
                    className="form-control-plaintext"
                    placeholder="Search here....."
                  />
                </div>
              </form>
              <span className="d-sm-none mobile-search search-bg">
                <i className="fa fa-search"></i>
              </span>
            </li>
          </ul>
        </div>
        <div className="nav-right col pull-right right-menu p-0">
          <ul className="nav-menus">
            <li className="onhover-dropdown">
              <div className="notification-box">
                <i data-feather="bell"></i>
                <span className="dot-animated"></span>
              </div>
              <ul className="notification-dropdown onhover-show-div">
                <li>
                  <p className="f-w-700 mb-0">
                    You have 3 Notifications
                    <span className="pull-right badge badge-primary badge-pill">
                      4
                    </span>
                  </p>
                </li>
                <li className="noti-primary">
                  <div className="media">
                    <span className="notification-bg bg-light-primary">
                      <i data-feather="activity"> </i>
                    </span>
                    <div className="media-body">
                      <p>Delivery processing</p>
                      <span>10 minutes ago</span>
                    </div>
                  </div>
                </li>
                <li className="noti-secondary">
                  <div className="media">
                    <span className="notification-bg bg-light-secondary">
                      <i data-feather="check-circle"> </i>
                    </span>
                    <div className="media-body">
                      <p>Order Complete</p>
                      <span>1 hour ago</span>
                    </div>
                  </div>
                </li>
                <li className="noti-success">
                  <div className="media">
                    <span className="notification-bg bg-light-success">
                      <i data-feather="file-text"> </i>
                    </span>
                    <div className="media-body">
                      <p>Tickets Generated</p>
                      <span>3 hour ago</span>
                    </div>
                  </div>
                </li>
                <li className="noti-danger">
                  <div className="media">
                    <span className="notification-bg bg-light-danger">
                      <i data-feather="user-check"> </i>
                    </span>
                    <div className="media-body">
                      <p>Delivery Complete</p>
                      <span>6 hour ago</span>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li>
              <div className="mode">
                <i className="fa fa-moon-o"></i>
              </div>
            </li>
            <li className="onhover-dropdown">
              <i data-feather="message-square"></i>
              <ul className="chat-dropdown onhover-show-div">
                <li>
                  <div className="media">
                    <img
                      className="img-fluid rounded-circle me-3"
                      src="../assets/images/user/4.jpg"
                      alt=""
                    />
                    <div className="media-body">
                      <span>Ain Chavez</span>
                      <p className="f-12 light-font">
                        Lorem Ipsum is simply dummy...
                      </p>
                    </div>
                    <p className="f-12">32 mins ago</p>
                  </div>
                </li>
                <li>
                  <div className="media">
                    <img
                      className="img-fluid rounded-circle me-3"
                      src="../assets/images/user/1.jpg"
                      alt=""
                    />
                    <div className="media-body">
                      <span>Erica Hughes</span>
                      <p className="f-12 light-font">
                        Lorem Ipsum is simply dummy...
                      </p>
                    </div>
                    <p className="f-12">58 mins ago</p>
                  </div>
                </li>
                <li>
                  <div className="media">
                    <img
                      className="img-fluid rounded-circle me-3"
                      src="../assets/images/user/2.jpg"
                      alt=""
                    />
                    <div className="media-body">
                      <span>Kori Thomas</span>
                      <p className="f-12 light-font">
                        Lorem Ipsum is simply dummy...
                      </p>
                    </div>
                    <p className="f-12">1 hr ago</p>
                  </div>
                </li>
                <li className="text-center">
                  <Link className="f-w-700" to="/">
                    See All{" "}
                  </Link>
                </li>
              </ul>
            </li>
            <li className="onhover-dropdown p-0">
              <button className="btn btn-primary-light" type="button">
                <Link to="/">
                  <i data-feather="log-out"></i>Log out
                </Link>
              </button>
            </li>
          </ul>
        </div>
        <div className="d-lg-none mobile-toggle pull-right w-auto">
          <i data-feather="more-horizontal"></i>
        </div>
      </div>
    </div>
  );
}
