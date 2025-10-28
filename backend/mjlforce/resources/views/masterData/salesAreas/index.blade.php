@extends('components.master')
@section('title', 'Sales Areas')
@section('content')

    <div class="container-fluid">
        <div class="row">
            <!-- Zero Configuration  Starts-->
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-xxl-4 col-md-6 col-sm-12">
                                <div class="btn-group btn-group-pill" role="group" aria-label="Basic example">
                                    <button class="btn btn-outline-primary" type="button" data-bs-toggle="modal"
                                        data-original-title="test" data-bs-target="#addModal">Add</button>

                                </div>
                            </div>
                            {{-- Division --}}


                            <div class="modal fade" id="addModal" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                            <button class="btn-close" type="button" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">...</div>
                                        <div class="modal-footer">
                                            <button class="btn btn-primary" type="button"
                                                data-bs-dismiss="modal">Close</button>
                                            <button class="btn btn-secondary" type="button">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="display" id="basic-1">
                                <thead>
                                    <tr>
                                        <th>Distribution Channel</th>
                                        <th>DC</th>
                                        <th>Customer Group</th>
                                        <th>CG</th>
                                        <th>Trade Cat</th>
                                        <th>CG1</th>
                                        <th>Trade Sub Cat</th>
                                        <th>CG2</th>
                                        <th>Action</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($salesAreas as $area)
                                        <tr>
                                            <td>{{ $area->distributionCh?->name }}</td>
                                            <td>{{ $area->distributionCh?->sap_code }}</td>
                                            <td>{{ $area->customerGroup?->name }}</td>
                                            <td>{{ $area->customerGroup?->sap_code }}</td>
                                            <td>{{ $area->tradeCategory?->name }}</td>
                                            <td>{{ $area->tradeCategory?->sap_code }}</td>
                                            <td>{{ $area->tradeSubCategory?->name }}</td>
                                            <td>{{ $area->tradeSubCategory?->sap_code }}</td>
                                            <th>
                                                <div class="btn-group">
                                                    <button class="btn btn-success btn-sm" href="#"><i
                                                            class="fa fa-edit"></i></button>
                                                    <button class="btn btn-danger btn-xs"><i
                                                            class="fa fa-trash-o"></i></button>
                                                </div>
                                            </th>

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
