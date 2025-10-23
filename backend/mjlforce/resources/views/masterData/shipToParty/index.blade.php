@extends('components.master')
@section('title', 'Dashboard')
@section('content')

    <div class="container-fluid">
        <div class="row">
            <!-- Zero Configuration  Starts-->
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-xxl-4 col-md-6 col-sm-12">
                                <h6>Sold-To-Party</h6>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="display" id="basic-1">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Cust. Code</th>
                                        <th>Sold-To-Party</th>
                                        <th>Address</th>
                                        <th>EMP</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($shipToParties as $idx => $shipToParty)
                                        <tr>
                                            <td>{{ $shipToParty->acc_name }}</td>
                                            <td>{{ $shipToParty->customer_code ? $shipToParty->customer_code : 'NA' }}</td>
                                            <td>{{ $shipToParty->soldToParty?->customer_code }}</td>
                                            <td>{{ $shipToParty->address }}</td>
                                            <td>{{ $shipToParty->employee?->name }}</td>
                                            <td><a type="button"
                                                    href="{{ route('masterData.detailsShipToParties', $shipToParty->id) }}"
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
