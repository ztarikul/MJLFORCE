<header class="main-nav">
    <div class="sidebar-user text-center">
        <a class="setting-primary" href="javascript:void(0)"><i data-feather="settings"></i></a><img
            class="img-90 rounded-circle" src="{{ asset('assets/images/dashboard/1.png') }}" alt="" />
        <div class="badge-bottom">
            <span class="badge badge-primary">New</span>
        </div>
        <a href="user-profile.html">
            <h6 class="mt-3 f-14 f-w-600">{{ auth()->user()->username }}</h6>
        </a>
        <p class="mb-0 font-roboto">Human Resources Department</p>

    </div>
    <nav>
        <div class="main-navbar">
            <div class="left-arrow" id="left-arrow">
                <i data-feather="arrow-left"></i>
            </div>
            <div id="mainnav">
                <ul class="nav-menu custom-scrollbar">
                    <li class="back-btn">
                        <div class="mobile-back text-end">
                            <span>Back</span><i class="fa fa-angle-right ps-2" aria-hidden="true"></i>
                        </div>
                    </li>
                    <li class="sidebar-main-title">
                        <div>
                            <h6>General</h6>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a class="nav-link menu-title" href="javascript:void(0)"><i data-feather="home"></i><span>Master
                                Data</span></a>
                        <ul class="nav-submenu menu-content">
                            <li><a href="{{ route('locations.index') }}">Locations</a></li>
                            <li><a href="{{ route('employees.index') }}">Employees</a></li>
                            <li><a href="{{ route('masterData.customerGroupIndex') }}">Customer Groups</a></li>
                            <li><a href="{{ route('masterData.businessTeamIndex') }}">Business Team</a></li>
                            <li><a href="{{ route('masterData.regionsIndex') }}">Regions</a></li>
                            <li><a href="{{ route('masterData.distributionChannelIndex') }}">Distribution Channel</a>
                            </li>
                            <li><a href="{{ route('masterData.territoryIndex') }}">Territories</a></li>
                            <li><a href="{{ route('masterData.tradeCategoryIndex') }}">Trade Categories</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a class="nav-link menu-title" href="javascript:void(0)"><i
                                data-feather="airplay"></i><span>Privilege</span></a>
                        <ul class="nav-submenu menu-content">
                            <li><a href="{{ route('roles.index') }}">Roles</a></li>
                            <li><a href="#">Permissions</a></li>
                            <li><a href="{{ route('roles.userRolePermission_index') }}">User
                                    Role</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a class="nav-link menu-title" href="javascript:void(0)"><i
                                data-feather="layout"></i><span>Admin</span></a>
                        <ul class="nav-submenu menu-content">
                            <li><a href="{{ route('users.index') }}">User</a></li>

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="nav-link menu-title" href="javascript:void(0)"><i
                                data-feather="layout"></i><span>Reports</span></a>
                        <ul class="nav-submenu menu-content">
                            {{-- <li><a href="box-layout.html">Boxed</a></li>
                            <li><a href="layout-rtl.html">RTL</a></li>
                            <li><a href="layout-dark.html">Dark</a></li>
                            <li><a href="footer-light.html">Footer Light</a></li>
                            <li><a href="footer-dark.html">Footer Dark</a></li>
                            <li><a href="footer-fixed.html">Footer Fixed</a></li> --}}
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a class="nav-link menu-title" href="javascript:void(0)"><i
                                data-feather="cloud"></i><span>CMA</span></a>
                        <ul class="nav-submenu menu-content">
                            <li><a href="{{ route('cma.newSoldToPartyIndex') }}">New CMA(S2P)</a></li>
                            <li><a href="{{ route('cma.newShipToPartyIndex') }}">New CMA(SH2P)</a></li>
                            <li><a href="{{ route('masterData.soldToParties') }}">Sold-to-Party</a></li>
                            <li><a href="raised-button.html">Ship-To-Party</a></li>

                        </ul>
                    </li>



                </ul>
            </div>
            <div class="right-arrow" id="right-arrow">
                <i data-feather="arrow-right"></i>
            </div>
        </div>
    </nav>
</header>
