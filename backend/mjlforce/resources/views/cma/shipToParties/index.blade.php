@extends('components.master')
@section('title', 'Dashboard')
@section('content')

    <div class="container-fluid">
        <div class="row">
            <!-- Zero Configuration  Starts-->
            <div class="col-sm-12">
                <div class="card">
                    @if(session('error'))
                        <div class="alert alert-danger dark alert-dismissible fade show" role="alert"><strong>Error! </strong>  {{ session('error') }}
                            <button class="btn-close" type="button" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif
                    <div class="card-header">
                        <div class="row">
                            <div class="col-xxl-4 col-md-6 col-sm-12">
                                <h6>Ship-To-Party</h6>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="display" id="basic-1">
                                <thead>
                                    <tr>
                                        <th>S2P</th>
                                        <th>Name</th>
                                        <th>Address</th>
                                        <th>EMP</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($shipToParties as $idx => $shipToParty)
                                        <tr>
                                            <td>{{ $shipToParty->soldToParty->acc_name }}</td>
                                            <td>{{ $shipToParty->acc_name }}</td>
                                            <td>{{ $shipToParty->address }}</td>
                                            <td>{{ $shipToParty->employee->name }}</td>
                                            <td><a type="button"
                                                    href="{{ route('cma.shipToPartyRequestForm', $shipToParty->id) }}"
                                                    class="btn btn-secondary"><i class="fa fa-folder-open-o"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>

@endsection
