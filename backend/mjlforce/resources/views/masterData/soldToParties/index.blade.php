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
                                        <th>Address</th>
                                        <th>EMP</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($soldToParties as $idx => $soldToParty)
                                        <tr>
                                            <td>{{ $soldToParty->acc_name }}</td>
                                            <td>{{ $soldToParty->customer_code ? $soldToParty->customer_code : 'NA' }}</td>
                                            <td>{{ $soldToParty->address }}</td>
                                            <td>{{ $soldToParty->employee?->name }}</td>
                                            <td><a type="button"
                                                    href="{{ route('cma.soldToPartyRequestForm', $soldToParty->id) }}"
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
