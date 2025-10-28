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
                                        data-original-title="test" onclick="element_add()">Add New</button>

                                </div>
                            </div>
                            {{-- Division --}}

                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="display" id="basic-1">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Code</th>
                                        <th>Designation</th>
                                        <th>Business Team</th>
                                        <th>Region</th>
                                        <th>Territory</th>
                                        <th>Reports to</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($employees as $idx => $employee)
                                        <tr>
                                            <th>{{ $employee->name }}</th>
                                            <th>{{ $employee->sap_code }}</th>
                                            <th>{{ $employee->designation?->name }}</th>
                                            <th>{{ $employee->businessTeam?->name }}</th>
                                            <th>{{ $employee->region?->name }}</th>
                                            <th>{{ $employee->territory?->name }}</th>
                                            <th>{{ $employee->supervisorOfEmployee?->name }}</th>
                                            <th>
                                                <div class="btn-group">
                                                    <button class="btn btn-success btn-sm"
                                                        onclick="element_edit('{{ $employee->id }}')"><i
                                                            class="fa fa-edit"></i></button>
                                                    <button class="btn btn-danger btn-sm"
                                                        onclick="element_delete('{{ $employee->id }}')"><i
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
                                                <label class="col-form-label">Name</label>
                                                <input type="text" class="form-control" name="name" id="name">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Card ID</label>
                                                <input type="text" class="form-control" name="card_id" id="card_id">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">EMP Code</label>
                                                <input type="text" class="form-control" name="emp_code" id="emp_code">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Sap Code</label>
                                                <input type="text" class="form-control" name="sap_code" id="sap_code">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Gender</label>
                                                <select class="form-select" id="gender" name="gender">
                                                    <option value="">Please Select</option>
                                                    <option value="1">Male</option>
                                                    <option value="2">Female</option>
                                                    <option value="3">Others</option>
                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Mobile</label>
                                                <input type="tel" class="form-control" name="mobile" id="mobile">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Email</label>
                                                <input type="email" class="form-control" name="email" id="email">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Address</label>
                                                <input type="text" class="form-control" name="address" id="address">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Date of Join</label>
                                                <input type="text" class="form-control datepicker" name="doj"
                                                    id="doj">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">NKN</label>
                                                <input type="text" class="form-control" name="nkn_code"
                                                    id="nkn_code">
                                            </div>

                                            <div class="col-md-12">
                                                <label class="col-form-label">Designation</label>
                                                <select class="form-select" id="designation_id" name="designation_id">

                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Business Team</label>
                                                <select class="form-select" id="business_team_id"
                                                    name="business_team_id">

                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Territory</label>
                                                <select class="form-select" id="territory_id" name="territory_id">

                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Supervsor</label>
                                                <select class="form-select" id="supervisor_id" name="supervisor_id">

                                                </select>
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
                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                                <label class="col-form-label">Name</label>
                                                <input type="text" class="form-control" name="name"
                                                    id="edit_name">
                                                <input type="hidden" id="edit_id">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Card ID</label>
                                                <input type="text" class="form-control" name="card_id"
                                                    id="edit_card_id">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">EMP Code</label>
                                                <input type="text" class="form-control" name="emp_code"
                                                    id="edit_emp_code">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Sap Code</label>
                                                <input type="text" class="form-control" name="sap_code"
                                                    id="edit_sap_code">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Gender</label>
                                                <select class="form-select" id="edit_gender" name="gender">

                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Mobile</label>
                                                <input type="tel" class="form-control" name="mobile"
                                                    id="edit_mobile">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Email</label>
                                                <input type="email" class="form-control" name="email"
                                                    id="edit_email">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Address</label>
                                                <input type="text" class="form-control" name="address"
                                                    id="edit_address">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Date of Join</label>
                                                <input type="text" class="form-control datepicker" name="doj"
                                                    id="edit_doj">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">NKN</label>
                                                <input type="text" class="form-control" name="nkn_code"
                                                    id="edit_nkn_code">
                                            </div>

                                            <div class="col-md-12">
                                                <label class="col-form-label">Designation</label>
                                                <select class="form-select" id="edit_designation_id"
                                                    name="designation_id">

                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Business Team</label>
                                                <select class="form-select" id="edit_business_team_id"
                                                    name="business_team_id">

                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Territory</label>
                                                <select class="form-select" id="edit_territory_id" name="territory_id">

                                                </select>
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Supervsor</label>
                                                <select class="form-select" id="edit_supervisor_id" name="supervisor_id">

                                                </select>
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
                    content: 'Are you sure you want to add this employee?',
                    btnClass: 'btn-blue',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-blue',
                            action: function() {
                                $.ajax({
                                    type: "POST",
                                    url: "{{ route('employees.store') }}",
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
                    content: 'Are you sure you want to update this customer group?',
                    btnClass: 'btn-blue',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-blue',
                            action: function() {
                                $.ajax({
                                    type: "POST",
                                    url: "{{ url('employees/update') }}" +
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
            $.ajax({
                type: "GET",
                url: "{{ route('employees.create') }}",
                success: function(res) {
                    if (res.status === 'success') {
                        console.log(res)
                        let _businessTeams = '<option value="">Please Select</option>';
                        $.each(res.businessTeams, function(key, value) {
                            _businessTeams += `<option value="${value.id}">${value.name}</option>`;
                        });
                        $('#business_team_id').html(_businessTeams);

                        let _designations = '<option value="">Please Select</option>';
                        $.each(res.designations, function(key, value) {
                            _designations += `<option value="${value.id}">${value.name}</option>`;
                        });
                        $('#designation_id').html(_designations);

                        let _territories = '<option value="">Please Select</option>';
                        $.each(res.territories, function(key, value) {
                            _territories += `<option value="${value.id}">${value.name}</option>`;
                        });
                        $('#territory_id').html(_territories);

                        let _supervisors = '<option value="">Please Select</option>';
                        $.each(res.employees, function(key, value) {
                            _supervisors += `<option value="${value.id}">${value.name}</option>`;
                        });
                        $('#supervisor_id').html(_supervisors);

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
                url: "{{ url('employees/edit') }}" + "/" + id,
                success: function(res) {
                    console.log(res);
                    if (res.status === 'success') {
                        $('#edit_id').val(res.employee.id);
                        $('#edit_name').val(res.employee.name);
                        $('#edit_card_id').val(res.employee.card_id);
                        $('#edit_emp_code').val(res.employee.emp_code);
                        $('#edit_sap_code').val(res.employee.sap_code);

                        let _gender = ""
                        res.employee.gender === "1" ? _gender = `<option value="1" seleceted>Male</option>
                                                    <option value="2">Female</option>
                                                    <option value="3">Others</option>` : (res.employee.gender ===
                            "2" ? _gender = `<option value="1">Male</option>
                                                    <option value="2" selected>Female</option>
                                                    <option value="3">Others</option>` : _gender = `<option value="1">Male</option>
                                                    <option value="2">Female</option>
                                                    <option value="3" selected>Others</option>`);

                        $('#edit_gender').html(_gender);

                        $('#edit_mobile').val(res.employee.mobile);
                        $('#edit_email').val(res.employee.email);
                        $('#edit_address').val(res.employee.address);
                        $('#edit_doj').val(res.employee.doj);
                        $('#edit_nkn_code').val(res.employee.nkn_code);

                        let _businessTeams = res.employee.business_team ? '<option value="' + res.employee
                            .business_team.id + '">' + res.employee.business_team.name + '</option>' :
                            '<option value="">Please Select</option>';
                        $.each(res.businessTeams, function(key, value) {
                            if (value.id !== res.employee.business_team?.id) {
                                _businessTeams += `<option value="${value.id}">${value.name}</option>`;
                            }
                        });
                        $('#edit_business_team_id').html(_businessTeams);

                        let _designations = res.employee.designation ? '<option value="' + res.employee
                            .designation.id + '">' + res.employee.designation.name + '</option>' :
                            '<option value="">Please Select</option>';
                        $.each(res.designations, function(key, value) {
                            if (value.id !== res.employee.designations?.id) {
                                _designations += `<option value="${value.id}">${value.name}</option>`;
                            }
                        });
                        $('#edit_designation_id').html(_designations);

                        let _territories = res.employee.territory ? '<option value="' + res.employee.territory
                            .id + '">' + res.employee.territory.name + '</option>' :
                            '<option value="">Please Select</option>';
                        $.each(res.territories, function(key, value) {
                            if (value.id !== res.employee.designations?.id) {
                                _territories += `<option value="${value.id}">${value.name}</option>`;
                            }
                        });
                        $('#edit_territory_id').html(_territories);

                        let _supervisors = res.employee.supervisor_of_employee ? '<option value="' + res
                            .employee.supervisor_of_employee.id + '">' + res.employee.supervisor_of_employee
                            .name + '</option>' : '<option value="">Please Select</option>';
                        $.each(res.supervisors, function(key, value) {
                            if (value.id !== res.employee.designations?.id) {
                                _supervisors += `<option value="${value.id}">${value.name}</option>`;
                            }
                        });
                        $('#edit_supervisor_id').html(_supervisors);

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
                content: 'Are you sure you want to delete this employee?',
                btnClass: 'btn-red',
                buttons: {
                    confirm: {
                        btnClass: 'btn-red',
                        action: function() {
                            $.ajax({
                                type: "GET",
                                url: "{{ url('employees/delete') }}" +
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
