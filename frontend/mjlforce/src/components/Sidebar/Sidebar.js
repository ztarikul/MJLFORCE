import React from "react";
import { Link } from "react-router-dom";
// import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
// import { faAngleRight, faUser, faCog } from "@fortawesome/free-solid-svg-icons";

export default function Sidebar(props) {
  return (
    <header className={`main-nav ${!props.isOpenSideBar ? "close_icon" : ""}`}>
      <div className="sidebar-user text-center">
        <Link className="setting-primary" to="javascript:void(0)">
          <i data-feather="settings"></i>
        </Link>
        <img
          className="img-90 rounded-circle"
          src="../assets/images/dashboard/1.png"
          alt=""
        />

        <Link to="user-profile.html">
          <h6 className="mt-2 f-14 f-w-600">Emay Walter</h6>
        </Link>
        <p className="mb-0 font-roboto">Sales and Marketing - Automotive</p>
        <ul>
          <li>
            <span>
              <span className="counter">11</span>
            </span>
            <p>Customers</p>
          </li>
          <li>
            <span>
              200 <span>ltr</span>
            </span>
            <p>Targets</p>
          </li>
          <li>
            <span>
              <span className="counter">15.69 </span>ltr
            </span>
            <p>Achievement</p>
          </li>
        </ul>
      </div>
      <nav>
        <div className="main-navbar">
          <div className="left-arrow" id="left-arrow">
            <i data-feather="arrow-left"></i>
          </div>
          <div id="mainnav">
            <ul className="nav-menu custom-scrollbar">
              <li className="back-btn">
                <div className="mobile-back text-end">
                  <span>Back</span>
                  <i className="fa fa-angle-right ps-2" aria-hidden="true"></i>
                </div>
              </li>
              <li className="sidebar-main-title">
                <div>
                  <h6>General</h6>
                </div>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="home"></i>
                  <span>Dashboard</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="index.html">Default</Link>
                  </li>
                  <li>
                    <Link to="dashboard-02.html">Ecommerce</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="airplay"></i>
                  <span>Widgets</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="general-widget.html">General</Link>
                  </li>
                  <li>
                    <Link to="chart-widget.html">Chart</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="layout"></i>
                  <span>Page layout</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="box-layout.html">Boxed</Link>
                  </li>
                  <li>
                    <Link to="layout-rtl.html">RTL</Link>
                  </li>
                  <li>
                    <Link to="layout-dark.html">Dark</Link>
                  </li>
                  <li>
                    <Link to="footer-light.html">Footer Light</Link>
                  </li>
                  <li>
                    <Link to="footer-dark.html">Footer Dark</Link>
                  </li>
                  <li>
                    <Link to="footer-fixed.html">Footer Fixed</Link>
                  </li>
                </ul>
              </li>
              <li className="sidebar-main-title">
                <div>
                  <h6>Components</h6>
                </div>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="box"></i>
                  <span>Ui Kits</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="state-color.html">State color</Link>
                  </li>
                  <li>
                    <Link to="typography.html">Typography</Link>
                  </li>
                  <li>
                    <Link to="avatars.html">Avatars</Link>
                  </li>
                  <li>
                    <Link to="helper-classNamees.html">helper classNamees</Link>
                  </li>
                  <li>
                    <Link to="grid.html">Grid</Link>
                  </li>
                  <li>
                    <Link to="tag-pills.html">Tag & pills</Link>
                  </li>
                  <li>
                    <Link to="progress-bar.html">Progress</Link>
                  </li>
                  <li>
                    <Link to="modal.html">Modal</Link>
                  </li>
                  <li>
                    <Link to="alert.html">Alert</Link>
                  </li>
                  <li>
                    <Link to="popover.html">Popover</Link>
                  </li>
                  <li>
                    <Link to="tooltip.html">Tooltip</Link>
                  </li>
                  <li>
                    <Link to="loader.html">Spinners</Link>
                  </li>
                  <li>
                    <Link to="dropdown.html">Dropdown</Link>
                  </li>
                  <li>
                    <Link to="according.html">Accordion</Link>
                  </li>
                  <li>
                    <Link className="submenu-title" to="javascript:void(0)">
                      Tabs
                      <span className="sub-arrow">
                        <i className="fa fa-chevron-right"></i>
                      </span>
                    </Link>
                    <ul className="nav-sub-childmenu submenu-content">
                      <li>
                        <Link to="tab-bootstrap.html">Bootstrap Tabs</Link>
                      </li>
                      <li>
                        <Link to="tab-material.html">Line Tabs</Link>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <Link to="navs.html">Navs</Link>
                  </li>
                  <li>
                    <Link to="box-shadow.html">Shadow</Link>
                  </li>
                  <li>
                    <Link to="list.html">Lists</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="folder-plus"></i>
                  <span>Bonus Ui</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="scrollable.html">Scrollable</Link>
                  </li>
                  <li>
                    <Link to="tree.html">Tree view</Link>
                  </li>
                  <li>
                    <Link to="bootstrap-notify.html">Bootstrap Notify</Link>
                  </li>
                  <li>
                    <Link to="rating.html">Rating</Link>
                  </li>
                  <li>
                    <Link to="dropzone.html">dropzone</Link>
                  </li>
                  <li>
                    <Link to="tour.html">Tour</Link>
                  </li>
                  <li>
                    <Link to="sweet-alert2.html">SweetAlert2</Link>
                  </li>
                  <li>
                    <Link to="modal-animated.html">Animated Modal</Link>
                  </li>
                  <li>
                    <Link to="owl-carousel.html">Owl Carousel</Link>
                  </li>
                  <li>
                    <Link to="ribbons.html">Ribbons</Link>
                  </li>
                  <li>
                    <Link to="pagination.html">Pagination</Link>
                  </li>
                  <li>
                    <Link to="steps.html">Steps</Link>
                  </li>
                  <li>
                    <Link to="breadcrumb.html">Breadcrumb</Link>
                  </li>
                  <li>
                    <Link to="range-slider.html">Range Slider</Link>
                  </li>
                  <li>
                    <Link to="image-cropper.html">Image cropper</Link>
                  </li>
                  <li>
                    <Link to="sticky.html">Sticky </Link>
                  </li>
                  <li>
                    <Link to="basic-card.html">Basic Card</Link>
                  </li>
                  <li>
                    <Link to="creative-card.html">Creative Card</Link>
                  </li>
                  <li>
                    <Link to="tabbed-card.html">Tabbed Card</Link>
                  </li>
                  <li>
                    <Link to="dragable-card.html">Draggable Card</Link>
                  </li>
                  <li>
                    <Link className="submenu-title" to="javascript:void(0)">
                      Timeline
                      <span className="sub-arrow">
                        <i className="fa fa-chevron-right"></i>
                      </span>
                    </Link>
                    <ul className="nav-sub-childmenu submenu-content">
                      <li>
                        <Link to="timeline-v-1.html">Timeline 1</Link>
                      </li>
                      <li>
                        <Link to="timeline-v-2.html">Timeline 2</Link>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="edit-3"></i>
                  <span>Builders</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="form-builder-1.html">Form Builder 1</Link>
                  </li>
                  <li>
                    <Link to="form-builder-2.html">Form Builder 2</Link>
                  </li>
                  <li>
                    <Link to="pagebuild.html">Page Builder</Link>
                  </li>
                  <li>
                    <Link to="button-builder.html">Button Builder</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="cloud-drizzle"></i>
                  <span>Animation</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="animate.html">Animate</Link>
                  </li>
                  <li>
                    <Link to="scroll-reval.html">Scroll Reveal</Link>
                  </li>
                  <li>
                    <Link to="AOS.html">AOS animation</Link>
                  </li>
                  <li>
                    <Link to="tilt.html">Tilt Animation</Link>
                  </li>
                  <li>
                    <Link to="wow.html">Wow Animation</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="command"></i>
                  <span>Icons</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="flag-icon.html">Flag icon</Link>
                  </li>
                  <li>
                    <Link to="font-awesome.html">Fontawesome Icon</Link>
                  </li>
                  <li>
                    <Link to="ico-icon.html">Ico Icon</Link>
                  </li>
                  <li>
                    <Link to="themify-icon.html">Thimify Icon</Link>
                  </li>
                  <li>
                    <Link to="feather-icon.html">Feather icon</Link>
                  </li>
                  <li>
                    <Link to="whether-icon.html">Whether Icon </Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="cloud"></i>
                  <span>Buttons</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="buttons.html">Default Style</Link>
                  </li>
                  <li>
                    <Link to="buttons-flat.html">Flat Style</Link>
                  </li>
                  <li>
                    <Link to="buttons-edge.html">Edge Style</Link>
                  </li>
                  <li>
                    <Link to="raised-button.html">Raised Style</Link>
                  </li>
                  <li>
                    <Link to="button-group.html">Button Group</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="bar-chart"></i>
                  <span>Charts</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="chart-apex.html">Apex Chart</Link>
                  </li>
                  <li>
                    <Link to="chart-google.html">Google Chart</Link>
                  </li>
                  <li>
                    <Link to="chart-sparkline.html">Sparkline chart</Link>
                  </li>
                  <li>
                    <Link to="chart-flot.html">Flot Chart</Link>
                  </li>
                  <li>
                    <Link to="chart-knob.html">Knob Chart</Link>
                  </li>
                  <li>
                    <Link to="chart-morris.html">Morris Chart</Link>
                  </li>
                  <li>
                    <Link to="chartjs.html">Chatjs Chart</Link>
                  </li>
                  <li>
                    <Link to="chartist.html">Chartist Chart</Link>
                  </li>
                  <li>
                    <Link to="chart-peity.html">Peity Chart</Link>
                  </li>
                </ul>
              </li>
              <li className="sidebar-main-title">
                <div>
                  <h6>Forms</h6>
                </div>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="sliders"></i>
                  <span>Form Controls </span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="form-validation.html">Form Validation</Link>
                  </li>
                  <li>
                    <Link to="base-input.html">Base Inputs</Link>
                  </li>
                  <li>
                    <Link to="radio-checkbox-control.html">
                      Checkbox & Radio
                    </Link>
                  </li>
                  <li>
                    <Link to="input-group.html">Input Groups</Link>
                  </li>
                  <li>
                    <Link to="megaoptions.html">Mega Options </Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="package"></i>
                  <span>Form Widgets</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="datepicker.html">Datepicker</Link>
                  </li>
                  <li>
                    <Link to="time-picker.html">Timepicker</Link>
                  </li>
                  <li>
                    <Link to="datetimepicker.html">Datetimepicker</Link>
                  </li>
                  <li>
                    <Link to="daterangepicker.html">Daterangepicker</Link>
                  </li>
                  <li>
                    <Link to="touchspin.html">Touchspin</Link>
                  </li>
                  <li>
                    <Link to="select2.html">Select2</Link>
                  </li>
                  <li>
                    <Link to="switch.html">Switch</Link>
                  </li>
                  <li>
                    <Link to="typeahead.html">Typeahead</Link>
                  </li>
                  <li>
                    <Link to="clipboard.html">Clipboard </Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="layout"></i>
                  <span>Form layout</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="default-form.html">Default Forms</Link>
                  </li>
                  <li>
                    <Link to="form-wizard.html">Form Wizard 1</Link>
                  </li>
                  <li>
                    <Link to="form-wizard-two.html">Form Wizard 2</Link>
                  </li>
                  <li>
                    <Link to="form-wizard-three.html">Form Wizard 3</Link>
                  </li>
                </ul>
              </li>
              <li className="sidebar-main-title">
                <div>
                  <h6>Table</h6>
                </div>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="server"></i>
                  <span>Bootstrap Tables </span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="bootstrap-basic-table.html">Basic Tables</Link>
                  </li>
                  <li>
                    <Link to="bootstrap-sizing-table.html">Sizing Tables</Link>
                  </li>
                  <li>
                    <Link to="bootstrap-border-table.html">Border Tables</Link>
                  </li>
                  <li>
                    <Link to="bootstrap-styling-table.html">
                      Styling Tables
                    </Link>
                  </li>
                  <li>
                    <Link to="table-components.html">Table components</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="database"></i>
                  <span>Data Tables </span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="datatable-basic-init.html">Basic Init</Link>
                  </li>
                  <li>
                    <Link to="datatable-advance.html">Advance Init</Link>
                  </li>
                  <li>
                    <Link to="datatable-styling.html">Styling</Link>
                  </li>
                  <li>
                    <Link to="datatable-AJAX.html">AJAX</Link>
                  </li>
                  <li>
                    <Link to="datatable-server-side.html">Server Side</Link>
                  </li>
                  <li>
                    <Link to="datatable-plugin.html">Plug-in</Link>
                  </li>
                  <li>
                    <Link to="datatable-API.html">API</Link>
                  </li>
                  <li>
                    <Link to="datatable-data-source.html">Data Sources</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="hard-drive"></i>
                  <span>Ex. Data Tables </span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="datatable-ext-autofill.html">Auto Fill</Link>
                  </li>
                  <li>
                    <Link to="datatable-ext-basic-button.html">
                      Basic Button
                    </Link>
                  </li>
                  <li>
                    <Link to="datatable-ext-col-reorder.html">
                      Column Reorder
                    </Link>
                  </li>
                  <li>
                    <Link to="datatable-ext-fixed-header.html">
                      Fixed Header
                    </Link>
                  </li>
                  <li>
                    <Link to="datatable-ext-key-table.html">Key Table</Link>
                  </li>
                  <li>
                    <Link to="datatable-ext-responsive.html">Responsive</Link>
                  </li>
                  <li>
                    <Link to="datatable-ext-row-reorder.html">Row Reorder</Link>
                  </li>
                  <li>
                    <Link to="datatable-ext-scroller.html">Scroller </Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link
                  className="nav-link menu-title link-nav"
                  to="jsgrid-table.html"
                >
                  <i data-feather="file-text"></i>
                  <span>Js Grid Table</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
              </li>
              <li className="sidebar-main-title">
                <div>
                  <h6>Applications</h6>
                </div>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="box"></i>
                  <span>Project </span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="projects.html">Project List</Link>
                  </li>
                  <li>
                    <Link to="projectcreate.html">Create new </Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link
                  className="nav-link menu-title link-nav"
                  to="file-manager.html"
                >
                  <i data-feather="git-pull-request"></i>
                  <span>File manager</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title link-nav" to="kanban.html">
                  <i data-feather="monitor"></i>
                  <span>kanban Board</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="shopping-bag"></i>
                  <span>Ecommerce</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="product.html">Product</Link>
                  </li>
                  <li>
                    <Link to="product-page.html">Product page</Link>
                  </li>
                  <li>
                    <Link to="list-products.html">Product list</Link>
                  </li>
                  <li>
                    <Link to="payment-details.html">Payment Details</Link>
                  </li>
                  <li>
                    <Link to="order-history.html">Order History</Link>
                  </li>
                  <li>
                    <Link to="invoice-template.html">Invoice</Link>
                  </li>
                  <li>
                    <Link to="cart.html">Cart</Link>
                  </li>
                  <li>
                    <Link to="list-wish.html">Wishlist</Link>
                  </li>
                  <li>
                    <Link to="checkout.html">Checkout</Link>
                  </li>
                  <li>
                    <Link to="pricing.html">Pricing</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="mail"></i>
                  <span>Email</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="email_inbox.html">Mail Inbox</Link>
                  </li>
                  <li>
                    <Link to="email_read.html">Read mail</Link>
                  </li>
                  <li>
                    <Link to="email_compose.html">Compose</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="message-circle"></i>
                  <span>Chat</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="chat.html">Chat App</Link>
                  </li>
                  <li>
                    <Link to="chat-video.html">Video chat</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="users"></i>
                  <span>Users</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="user-profile.html">Users Profile</Link>
                  </li>
                  <li>
                    <Link to="edit-profile.html">Users Edit</Link>
                  </li>
                  <li>
                    <Link to="user-cards.html">Users Cards</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link
                  className="nav-link menu-title link-nav"
                  to="bookmark.html"
                >
                  <i data-feather="heart"></i>
                  <span>Bookmarks</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
              </li>
              <li className="dropdown">
                <Link
                  className="nav-link menu-title link-nav"
                  to="contacts.html"
                >
                  <i data-feather="list"></i>
                  <span>Contacts</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title link-nav" to="task.html">
                  <i data-feather="check-square"></i>
                  <span>Tasks</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
              </li>
              <li className="dropdown">
                <Link
                  className="nav-link menu-title link-nav"
                  to="calendar-basic.html"
                >
                  <i data-feather="calendar"></i>
                  <span>Calender </span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
              </li>
              <li className="dropdown">
                <Link
                  className="nav-link menu-title link-nav"
                  to="social-app.html"
                >
                  <i data-feather="zap"></i>
                  <span>Social App</span>
                </Link>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title link-nav" to="to-do.html">
                  <i data-feather="clock"></i>
                  <span>To-Do</span>
                </Link>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title link-nav" to="search.html">
                  <i data-feather="search"></i>
                  <span>Search Result</span>
                </Link>
              </li>
              <li className="sidebar-main-title">
                <div>
                  <h6>Pages</h6>
                </div>
              </li>
              <li>
                <Link
                  className="nav-link menu-title link-nav"
                  to="landing-page.html"
                >
                  <i data-feather="navigation-2"></i>
                  <span>Landing page</span>
                </Link>
              </li>
              <li>
                <Link
                  className="nav-link menu-title link-nav"
                  to="sample-page.html"
                >
                  <i data-feather="file"></i>
                  <span>Sample page</span>
                </Link>
              </li>
              <li className="dropdown">
                <Link
                  className="nav-link menu-title link-nav"
                  to="internationalization.html"
                >
                  <i data-feather="aperture"></i>
                  <span>Internationalization</span>
                </Link>
              </li>
              <li className="dropdown">
                <Link
                  className="nav-link menu-title link-nav"
                  to="http://admin.pixelstrap.com/viho/starter-kit/index.html"
                >
                  <i data-feather="anchor"></i>
                  <span>Starter kit </span>
                </Link>
              </li>
              <li className="mega-menu">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="layers"></i>
                  <span>Others</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <div className="mega-menu-container menu-content">
                  <div className="container">
                    <div className="row">
                      <div className="col mega-box">
                        <div className="link-section">
                          <div className="submenu-title">
                            <h5>Error Page</h5>
                          </div>
                          <div className="submenu-content opensubmegamenu">
                            <ul>
                              <li>
                                <Link to="error-page1.html" target="_blank">
                                  Error page 1
                                </Link>
                              </li>
                              <li>
                                <Link to="error-page2.html" target="_blank">
                                  Error page 2
                                </Link>
                              </li>
                              <li>
                                <Link to="error-page3.html" target="_blank">
                                  Error page 3
                                </Link>
                              </li>
                              <li>
                                <Link to="error-page4.html" target="_blank">
                                  Error page 4
                                </Link>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div className="col mega-box">
                        <div className="link-section">
                          <div className="submenu-title">
                            <h5>Authentication</h5>
                          </div>
                          <div className="submenu-content opensubmegamenu">
                            <ul>
                              <li>
                                <Link to="login.html" target="_blank">
                                  Login Simple
                                </Link>
                              </li>
                              <li>
                                <Link to="login_one.html" target="_blank">
                                  Login with bg image
                                </Link>
                              </li>
                              <li>
                                <Link to="login_two.html" target="_blank">
                                  Login with image two
                                </Link>
                              </li>
                              <li>
                                <Link
                                  to="login-bs-validation.html"
                                  target="_blank"
                                >
                                  Login With validation
                                </Link>
                              </li>
                              <li>
                                <Link
                                  to="login-bs-tt-validation.html"
                                  target="_blank"
                                >
                                  Login with tooltip
                                </Link>
                              </li>
                              <li>
                                <Link
                                  to="login-sa-validation.html"
                                  target="_blank"
                                >
                                  Login with sweetalert
                                </Link>
                              </li>
                              <li>
                                <Link to="sign-up.html" target="_blank">
                                  Register Simple
                                </Link>
                              </li>
                              <li>
                                <Link to="sign-up-one.html" target="_blank">
                                  Register with Bg Image
                                </Link>
                              </li>
                              <li>
                                <Link to="sign-up-two.html" target="_blank">
                                  Register with Bg video
                                </Link>
                              </li>
                              <li>
                                <Link to="unlock.html">Unlock User</Link>
                              </li>
                              <li>
                                <Link to="forget-password.html">
                                  Forget Password
                                </Link>
                              </li>
                              <li>
                                <Link to="creat-password.html">
                                  Creat Password
                                </Link>
                              </li>
                              <li>
                                <Link to="maintenance.html">Maintenance</Link>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div className="col mega-box">
                        <div className="link-section">
                          <div className="submenu-title">
                            <h5>Coming Soon</h5>
                          </div>
                          <div className="submenu-content opensubmegamenu">
                            <ul>
                              <li>
                                <Link to="comingsoon.html">Coming Simple</Link>
                              </li>
                              <li>
                                <Link to="comingsoon-bg-video.html">
                                  Coming with Bg video
                                </Link>
                              </li>
                              <li>
                                <Link to="comingsoon-bg-img.html">
                                  Coming with Bg Image
                                </Link>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div className="col mega-box">
                        <div className="link-section">
                          <div className="submenu-title">
                            <h5>Email templates</h5>
                          </div>
                          <div className="submenu-content opensubmegamenu">
                            <ul>
                              <li>
                                <Link to="basic-template.html">
                                  Basic Email
                                </Link>
                              </li>
                              <li>
                                <Link to="email-header.html">
                                  Basic With Header
                                </Link>
                              </li>
                              <li>
                                <Link to="template-email.html">
                                  Ecomerce Template
                                </Link>
                              </li>
                              <li>
                                <Link to="template-email-2.html">
                                  Email Template 2
                                </Link>
                              </li>
                              <li>
                                <Link to="ecommerce-templates.html">
                                  Ecommerce Email
                                </Link>
                              </li>
                              <li>
                                <Link to="email-order-success.html">
                                  Order Success
                                </Link>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li className="sidebar-main-title">
                <div>
                  <h6>Miscellaneous</h6>
                </div>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="image"></i>
                  <span>Gallery</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="gallery.html">Gallery Grid</Link>
                  </li>
                  <li>
                    <Link to="gallery-with-description.html">
                      Gallery Grid Desc
                    </Link>
                  </li>
                  <li>
                    <Link to="gallery-masonry.html">Masonry Gallery</Link>
                  </li>
                  <li>
                    <Link to="masonry-gallery-with-disc.html">
                      Masonry with Desc
                    </Link>
                  </li>
                  <li>
                    <Link to="gallery-hover.html">Hover Effects</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="edit"></i>
                  <span>Blog</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="blog.html">Blog Details</Link>
                  </li>
                  <li>
                    <Link to="blog-single.html">Blog Single</Link>
                  </li>
                  <li>
                    <Link to="add-post.html">Add Post</Link>
                  </li>
                </ul>
              </li>
              <li>
                <Link className="nav-link menu-title link-nav" to="faq.html">
                  <i data-feather="help-circle"></i>
                  <span>FAQ</span>
                </Link>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="user-check"></i>
                  <span>Job Search</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="job-cards-view.html">Cards view</Link>
                  </li>
                  <li>
                    <Link to="job-list-view.html">List View</Link>
                  </li>
                  <li>
                    <Link to="job-details.html">Job Details</Link>
                  </li>
                  <li>
                    <Link to="job-apply.html">Apply</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="layers"></i>
                  <span>Learning</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="learning-list-view.html">Learning List</Link>
                  </li>
                  <li>
                    <Link to="learning-detailed.html">Detailed Course</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="map"></i>
                  <span>Maps</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="map-js.html">Maps JS</Link>
                  </li>
                  <li>
                    <Link to="vector-map.html">Vector Maps</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="git-pull-request"></i>
                  <span>Editors</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="summernote.html">Summer Note</Link>
                  </li>
                  <li>
                    <Link to="ckeditor.html">CK editor</Link>
                  </li>
                  <li>
                    <Link to="simple-MDE.html">MDE editor</Link>
                  </li>
                  <li>
                    <Link to="ace-code-editor.html">ACE code editor</Link>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <Link className="nav-link menu-title" to="javascript:void(0)">
                  <i data-feather="database"></i>
                  <span>Knowledgebase</span>
                  <div class="according-menu">
                    <i class="fa fa-angle-right"></i>
                  </div>
                </Link>
                <ul className="nav-submenu menu-content">
                  <li>
                    <Link to="knowledgebase.html">Knowledgebase</Link>
                  </li>
                  <li>
                    <Link to="knowledge-category.html">Knowledge category</Link>
                  </li>
                  <li>
                    <Link to="knowledge-detail.html">Knowledge detail</Link>
                  </li>
                </ul>
              </li>
              <li>
                <Link
                  className="nav-link menu-title link-nav"
                  to="support-ticket.html"
                >
                  <i data-feather="headphones"></i>
                  <span>Support Ticket</span>
                </Link>
              </li>
            </ul>
          </div>
          <div className="right-arrow" id="right-arrow">
            <i data-feather="arrow-right"></i>
          </div>
        </div>
      </nav>
    </header>
  );
}
