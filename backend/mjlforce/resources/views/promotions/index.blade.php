@extends('components.master')
@section('title', 'Promotions')
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
                                        data-original-title="test" onclick="element_add()">Add New</button>

                                </div>
                            </div>
                            {{-- Division --}}

                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table" id="basic-1">
                                <thead>
                                    <tr>
                                        <th>Title</th>
                                        <th>Start</th>
                                        <th>End</th>
                                        <th>Created On</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($promotions as $idx => $promo)
                                        <tr>
                                            <th>{{ $promo->title }}</th>
                                            <th>{{ $promo->start_from }}</th>
                                            <th>{{ $promo->end_to }}</th>
                                            <th>{{ $promo->created_at }}</th>

                                            <th>
                                                <div class="btn-group">
                                                    <a class="btn btn-info btn-sm"
                                                        href="{{ route('offer_and_discount.promotionalItems', $promo->id) }}"><i
                                                            class="fa fa-eye"></i></a>
                                                    <button class="btn btn-success btn-sm"
                                                        onclick="element_edit('{{ $promo->id }}')"><i
                                                            class="fa fa-edit"></i></button>
                                                    <button class="btn btn-danger btn-sm"
                                                        onclick="element_delete('{{ $promo->id }}')"><i
                                                            class="fa fa-trash-o"></i></button>
                                                </div>
                                            </th>

                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    {{-- create modal --}}
                    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <form class="theme-form mega-form" id="addForm">
                                    <div class="modal-body">

                                        @csrf
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="col-form-label">Title</label>
                                                <input type="text" class="form-control" name="title" id="title">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Sap Code</label>
                                                <input type="text" class="form-control" name="sap_code" id="sap_code">
                                            </div>

                                            <div class="col-md-12">
                                                <label class="col-form-label">Description</label>
                                                <input type="text" class="form-control" name="description"
                                                    id="description">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Start From</label>
                                                <input type="text" class="form-control datepicker" name="start_from"
                                                    id="start_from">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">End To</label>
                                                <input type="text" class="form-control datepicker" name="end_to"
                                                    id="end_to">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Type</label>
                                                <input type="text" class="form-control" name="type" id="type"
                                                    value="1">
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-secondary" type="button"
                                                data-bs-dismiss="modal">Close</button>
                                            <button class="btn btn-primary" type="submit">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    {{-- edit modal --}}
                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <form class="theme-form mega-form" id="editForm">
                                    <div class="modal-body">
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="col-form-label">Title</label>
                                                <input type="text" class="form-control" name="title"
                                                    id="edit_title">
                                                <input type="hidden" id="edit_id">
                                            </div>

                                            <div class="col-md-12">
                                                <label class="col-form-label">Sap Code</label>
                                                <input type="text" class="form-control" name="sap_code"
                                                    id="edit_sap_code">
                                            </div>

                                            <div class="col-md-12">
                                                <label class="col-form-label">Description</label>
                                                <input type="text" class="form-control" name="description"
                                                    id="edit_description">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Start From</label>
                                                <input type="text" class="form-control datepicker" name="start_from"
                                                    id="edit_start_from">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">End To</label>
                                                <input type="text" class="form-control datepicker" name="end_to"
                                                    id="edit_end_to">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Type</label>
                                                <input type="text" class="form-control" name="type" id="edit_type"
                                                    value="1">
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-secondary" type="button"
                                                data-bs-dismiss="modal">Close</button>
                                            <button class="btn btn-primary" type="submit">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {

            $(".datepicker").datepicker({
                dateFormat: "yy-mm-dd", // Format: 2025-08-01
                changeMonth: true,
                changeYear: true,

            });

            $('#addForm').submit(function(e) {
                let formData = new FormData(this);
                e.preventDefault();
                $.confirm({
                    title: 'Confirm!',
                    content: 'Are you sure you want to add this Promotion?',
                    btnClass: 'btn-blue',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-blue',
                            action: function() {
                                $.ajax({
                                    type: "POST",
                                    url: "{{ route('offer_and_discount.storePromotion') }}",
                                    data: formData,
                                    contentType: false,
                                    processData: false,
                                    cache: false,
                                    beforeSend: function() {
                                        $('.loader_div').show();
                                    },
                                    complete: function() {
                                        $('.loader_div').hide();
                                    },
                                    success: function(res) {

                                        if (res.status === 'success') {
                                            $.toast({
                                                heading: 'Success',
                                                text: res.message,
                                                icon: 'success',
                                                position: 'top-right'
                                            });
                                            setTimeout(function() { // wait for 5 secs(2)
                                                window.location.href = res
                                                    .redirect_url; // then redirect
                                            }, 3000);

                                        } else {

                                            $.toast({
                                                heading: 'Failed',
                                                text: res.message,
                                                icon: 'error',
                                                position: 'top-right'
                                            });
                                        }
                                    },
                                    error: function(error) {
                                        // $('.loader_div').hide();
                                        console.log(error);
                                        $.toast({
                                            heading: 'Error',
                                            text: error.responseJSON
                                                .message,
                                            icon: 'error',
                                            position: 'top-right'
                                        });

                                    }
                                });
                            }
                        },
                        cancel: function() {
                            $.alert('Canceled!');
                        },

                    }
                });

            });
            // end of addfunction


            $('#editForm').submit(function(e) {
                let formData = new FormData(this);
                let id = $('#edit_id').val();
                e.preventDefault();
                $.confirm({
                    title: 'Confirm!',
                    content: 'Are you sure you want to update this promotion?',
                    btnClass: 'btn-blue',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-blue',
                            action: function() {
                                $.ajax({
                                    type: "POST",
                                    url: "{{ url('offer_and_discount/update_promotion') }}" +
                                        "/" + id,
                                    data: formData,
                                    contentType: false,
                                    processData: false,
                                    cache: false,
                                    beforeSend: function() {
                                        $('.loader_div').show();
                                    },
                                    complete: function() {
                                        $('.loader_div').hide();
                                    },
                                    success: function(res) {
                                        console.log(res);
                                        if (res.status === 'success') {
                                            $.toast({
                                                heading: 'Success',
                                                text: res.message,
                                                icon: 'success',
                                                position: 'top-right'
                                            });
                                            setTimeout(function() { // wait for 5 secs(2)
                                                window.location.href = res
                                                    .redirect_url; // then redirect
                                            }, 3000);

                                        } else {

                                            $.toast({
                                                heading: 'Failed',
                                                text: res.message,
                                                icon: 'error',
                                                position: 'top-right'
                                            });
                                        }
                                    },
                                    error: function(error) {
                                        // $('.loader_div').hide();
                                        console.log(error);
                                        $.toast({
                                            heading: 'Error',
                                            text: error.responseJSON
                                                .message,
                                            icon: 'error',
                                            position: 'top-right'
                                        });

                                    }
                                });
                            }
                        },
                        cancel: function() {
                            $.alert('Canceled!');
                        },

                    }
                });

            });
            // end of editfunction

            ///end of jQuery Onload
        });


        function element_add() {
            // $('#addForm')[0].reset();
            $('#addModal').modal('show');

        }


        function element_edit(id) {
            $.ajax({
                type: "GET",
                url: "{{ url('offer_and_discount/edit_promotion') }}" + "/" + id,
                success: function(res) {
                    console.log(res);
                    if (res.status === 'success') {
                        $('#edit_id').val(res.promotion.id);
                        $('#edit_title').val(res.promotion.title);
                        $('#edit_sap_code').val(res.promotion.sap_code);
                        $('#edit_description').val(res.promotion.description);
                        $('#edit_start_from').val(res.promotion.start_from);
                        $('#edit_end_to').val(res.promotion.end_to);
                        $('#edit_type').val(res.promotion.type);
                        $('#editModal').modal('show');
                    } else {
                        $.toast({
                            heading: 'Failed',
                            text: res.message,
                            icon: 'error',
                            position: 'top-right'
                        });
                    }
                },
                error: function(error) {
                    console.log(error);
                    $.toast({
                        heading: 'Error',
                        text: error.responseJSON.message,
                        icon: 'error',
                        position: 'top-right'
                    });
                }
            });
        }

        function element_delete(id) {
            $.confirm({
                title: 'Confirm Delete!',
                content: 'Are you sure you want to delete this promotion?',
                btnClass: 'btn-red',
                buttons: {
                    confirm: {
                        btnClass: 'btn-red',
                        action: function() {
                            $.ajax({
                                type: "GET",
                                url: "{{ url('offer_and_discount/delete_promotion') }}" +
                                    "/" + id,
                                contentType: false,
                                processData: false,
                                cache: false,
                                beforeSend: function() {
                                    $('.loader_div').show();
                                },
                                complete: function() {
                                    $('.loader_div').hide();
                                },
                                success: function(res) {
                                    if (res.status === 'success') {
                                        $.toast({
                                            heading: 'Success',
                                            text: res.message,
                                            icon: 'success',
                                            position: 'top-right'
                                        });
                                        setTimeout(function() { // wait for 5 secs(2)
                                            window.location.href = res
                                                .redirect_url; // then redirect
                                        }, 3000);

                                    } else {

                                        $.toast({
                                            heading: 'Failed',
                                            text: res.message,
                                            icon: 'error',
                                            position: 'top-right'
                                        });
                                    }
                                },
                                error: function(error) {
                                    // $('.loader_div').hide();
                                    console.log(error);
                                    $.toast({
                                        heading: 'Error',
                                        text: error?.responseJSON
                                            ?.message,
                                        icon: 'error',
                                        position: 'top-right'
                                    });

                                }
                            });
                        }
                    },
                    cancel: function() {
                        $.alert('Canceled!');
                    },

                }
            });
        }
    </script>

@endsection
