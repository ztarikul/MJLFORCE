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
                                        <th>Trade Cat.</th>
                                        <th>Code</th>
                                        <th>Trade Sub Cat.</th>
                                        <th>Code</th>
                                        <th>Action</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($tradeSubCategories as $subCat)
                                        <tr>
                                            <td>{{ $subCat->tradeCategory?->name }}</td>
                                            <td>{{ $subCat->tradeCategory?->sap_code }}</td>
                                            <td>{{ $subCat->name }}</td>
                                            <td>{{ $subCat->sap_code }}</td>
                                            <th>
                                                <div class="btn-group">
                                                    <a class="btn btn-success btn-sm" href="#"><i class="fa fa-edit"></i></a>
                                                    <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></button>
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
