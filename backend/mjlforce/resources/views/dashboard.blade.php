@extends('components.master')
@section('title', 'Dashboard')
@section('content')

    <div class="container-fluid dashboard-default-sec">
        <div class="row">
            <div class="col-xl-5 box-col-12 des-xl-100">
                <div class="row">
                    <div class="col-xl-12 col-md-6 box-col-6 des-xl-50">
                        <div class="card profile-greeting">
                            <div class="card-header">
                                <div class="header-top">
                                    <div class="setting-list bg-primary position-unset">
                                        <ul class="list-unstyled setting-option">
                                            <li>
                                                <div class="setting-white">
                                                    <i class="icon-settings"></i>
                                                </div>
                                            </li>
                                            <li>
                                                <i class="view-html fa fa-code font-white"></i>
                                            </li>
                                            <li>
                                                <i class="icofont icofont-maximize full-card font-white"></i>
                                            </li>
                                            <li>
                                                <i class="icofont icofont-minus minimize-card font-white"></i>
                                            </li>
                                            <li>
                                                <i class="icofont icofont-refresh reload-card font-white"></i>
                                            </li>
                                            <li>
                                                <i class="icofont icofont-error close-card font-white">
                                                </i>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body text-center p-t-0">
                                <h3 class="font-light">Wellcome Back, MIS!</h3>
                                <p>
                                    Welcome to MJL Force MIS admin dashboard.
                                </p>
                                <button class="btn btn-light">Go for a trip!</button>
                            </div>
                            <div class="confetti">
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="confetti-piece"></div>
                                <div class="code-box-copy">
                                    <button class="code-box-copy__btn btn-clipboard"
                                        data-clipboard-target="#profile-greeting" title="Copy">
                                        <i class="icofont icofont-copy-alt"></i>
                                    </button>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


@endsection
