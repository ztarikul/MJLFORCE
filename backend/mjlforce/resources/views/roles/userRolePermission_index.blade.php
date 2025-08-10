@extends('components.master')
@section('title', 'Role Management')
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
                                    {{-- <button class="btn btn-outline-primary" type="button" data-bs-toggle="modal"
                                        data-original-title="test" data-bs-target="#addModal">Add New</button> --}}

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
                                        <th>#</th>
                                        <th>Username</th>
                                        <th>Roles</th>
                                        <th>Action</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i = 0;
                                    @endphp
                                    @foreach ($users as $idx => $user)
                                        <tr>
                                            <th scope="row">{{ ++$i }}</th>
                                            <th>{{ $user->username }}</th>
                                            <td>
                                                @foreach ($user->roles as $role)
                                                    <span class="badge bg-light text-dark">{{ $role->name }} </span>
                                                @endforeach
                                            </td>
                                            <td>
                                                <div class="btn-group">
                                                    <button class="btn btn-success btn-sm"
                                                        onclick="element_edit('{{ $user->id }}')"><i
                                                            class="fa fa-edit"></i></button>

                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
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
                                                <label class="col-form-label">Username</label>
                                                <input type="text" class="form-control" name="username" id="username"
                                                    disabled>
                                                <input type="hidden" id="edit_user_id">
                                            </div>
                                            <div class="col-md-12">
                                                <label class="col-form-label">Role</label>
                                                <div class="row" id="role_name_div">
                                                {{-- Coming from Jquery --}}
                                                </div>

                                            </div>
                                            <hr />
                                            <div class="col-md-12 mt-3">
                                                <label class="col-form-label">Permission</label>
                                                <span class="text-secondary"><i>(Permission those are already assigned by
                                                        Roles are not allowed to change)</i></span>
                                                    <div class="row" id="permission_via_role_name_div">
                                                        {{-- Coming from Jquery --}}
                                                    </div>
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


            $('#editForm').submit(function(e) {
                let formData = new FormData(this);
                let id = $('#edit_id').val();
                e.preventDefault();
                $.confirm({
                    title: 'Confirm!',
                    content: 'Are you sure you want to update this role?',
                    btnClass: 'btn-blue',
                    buttons: {
                        confirm: {
                            btnClass: 'btn-blue',
                            action: function() {
                                $.ajax({
                                    type: "POST",
                                    url: "{{ url('roles/update') }}" +
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

        function element_edit(id) {
            $.ajax({
                type: "GET",
                url: "{{ url('roles/userRolePermission_edit') }}" + "/" + id,
                success: function(res) {
                    if (res.status === 'success') {
                        console.log(res);

                       $('#username').val(res.user.username);
                        var userRoles = Object.values(res.userRoles);
                        var userPermissionsViaRoles = Object.values(res.userPermissionsViaRoles);
                        var userDirectPermissions = Object.values(res.userDirectPermissions);
                        var _roleNameHtml = '';
                        res.roles.map(role => {
                        _roleNameHtml += `<label class="d-block" for="chk-ani">
                                                <input class="checkbox_animated" id="chk-ani" type="checkbox"
                                                value="${role.name}" name="role_id[]" ${userRoles.includes(role.name) ? 'checked' : ''}>
                                                ${role.name}
                                            </label>`;
                        });

                        $('#role_name_div').html(_roleNameHtml);

                        var _permissionsHtml = '';
                        res.permissions.map(permission => {
                       
                        _permissionsHtml += `<label class="d-block" for="chk-ani">
                                                <input class="checkbox_animated" id="chk-ani" type="checkbox"
                                                value="${permission.name}" name="permission_id[]" ${userPermissionsViaRoles.includes(permission.id) ? 'checked disabled' : (userDirectPermissions.includes(permission.id) ? 'checked' : "")}>
                                                ${permission.name}
                                            </label>`;
                        
                        
                        
                        });
                        $('#permission_via_role_name_div').html(_permissionsHtml);
                        $('#editModal').modal('show');
                    }else {
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
                content: 'Are you sure you want to delete this role?',
                btnClass: 'btn-red',
                buttons: {
                    confirm: {
                        btnClass: 'btn-red',
                        action: function() {
                            $.ajax({
                                type: "GET",
                                url: "{{ url('roles/delete') }}" +
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
