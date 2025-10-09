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
                                        data-original-title="test" onclick="element_add('{{ $promotion->id }}')">Add
                                        New</button>

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
                                        <th>Product</th>
                                        <th>Offer Qnty</th>
                                        <th>Offer Item</th>
                                        <th>Promo Qnty</th>
                                        <th>Start</th>
                                        <th>End</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($promotionalItems as $idx => $item)
                                        <tr>
                                            <td>{{ $promotion->title }}</td>
                                            <td>{{ $item->material_name }}</td>
                                            <td>{{ $item->offer_qnty }}</td>
                                            <td>{{ $item->promo_material_name }}</td>
                                            <td>{{ $item->promo_qnty }}</td>
                                            <td>{{ $promotion->start_from }}</td>
                                            <td>{{ $promotion->end_to }}</td>

                                            <th>
                                                <div class="btn-group">

                                                    <button class="btn btn-success btn-sm"
                                                        onclick="element_edit('{{ $item->id }}')"><i
                                                            class="fa fa-edit"></i></button>
                                                    <button class="btn btn-danger btn-sm"
                                                        onclick="element_delete('{{ $item->id }}')"><i
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
                                                <label class="col-form-label">Promotion</label>
                                                <select class="form-select" id="promotion_id" name="promotion_id">

                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Material</label>
                                                <select class="form-select" id="material_id" name="material_id">

                                                </select>
                                            </div>

                                            <div class="col-md-12">
                                                <label class="col-form-label">Offer Quantity</label>
                                                <input type="number" class="form-control" name="offer_qnty"
                                                    id="offer_qnty">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Promo Material</label>
                                                <input type="text" class="form-control" name="promo_material_name"
                                                    id="promo_material_name">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Promo Quanty</label>
                                                <input type="number" class="form-control" name="promo_qnty"
                                                    id="promo_qnty">
                                            </div>

                                            <div class="col-md-12">
                                                <label class="col-form-label">Description</label>
                                                <input type="text" class="form-control" name="description"
                                                    id="description">
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
                    content: 'Are you sure you want to add this Product in this Promotion?',
                    btnClass: 'btn-blue',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-blue',
                            action: function() {
                                $.ajax({
                                    type: "POST",
                                    url: "{{ route('offer_and_discount.storePromotionalItems') }}",
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

            $('#material_id').change(function(e) {
                let selectedOption = $(this).find('option:selected');
                let materialName = selectedOption.text();
                $('#promo_material_name').val(materialName);
            })

            ///end of jQuery Onload
        });


        function element_add(promotion_id) {
            // $('#addForm')[0].reset();
            $.ajax({
                type: "GET",
                url: "{{ url('offer_and_discount/create_promotional_items') }}" + "/" + promotion_id,
                success: function(res) {
                    if (res.status === 'success') {
                        console.log(res)
                        let _materials = '<option value="">Please Select</option>';
                        $.each(res.materials, function(key, value) {
                            _materials += `<option value="${value.id}">${value.name}</option>`;
                        });
                        $('#material_id').html(_materials);

                        let _promotions =
                            `<option selected value="${res.promotion.id}">${res.promotion.title}</option>`;

                        $('#promotion_id').html(_promotions);


                        $('#addModal').modal('show');
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
                                url: "{{ url('offer_and_discount/delete_promotional_items') }}" +
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
