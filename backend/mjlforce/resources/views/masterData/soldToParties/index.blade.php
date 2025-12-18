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
                            <table class="display" id="dataTable">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th>Name</th>
                                        <th>Cust. Code</th>
                                        <th>Address</th>
                                        <th>Mobil</th>
                                        <th>Omera</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>


<script>

    $(function() {
        $('#dataTable').DataTable({
            searching: true,
            processing: true,
            serverSide: true,
            ajax: "{{ route('masterData.soldToParties') }}",
            columns: [
                { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: true, searchable: false },
                { data: 'acc_name', name: 'acc_name'},
                { data: 'customer_code', name: 'customer_code'},
                { data: 'address', name: 'address' },
                { data: 'employee', name: 'employee'},
                { data: 'omera_employee', name: 'omera_employee'},
                { data: 'action', name: 'action'},
            ],
            bSort: false,
            dom: 'lBfrtip',
            buttons: [
                'excel', 'pdf', 
            ],
            "lengthMenu": [ [10, 25, 50, -1], [10, 25, 50, 'All'] ],
            responsive: true,
                });
            });

    function element_sync(id) {
            $.confirm({
                title: 'Confirm Delete!',
                content: 'Are you sure you want to sync this customer all info with SAP?',
                btnClass: 'btn-success',
                buttons: {
                    confirm: {
                        btnClass: 'btn-success',
                        action: function() {
                            $.ajax({
                                type: "POST",
                                url: "{{ url('masterData/sold_to_party_sync') }}" +
                                    "/" + id,
                                data: {
                                    '_token': '{{ csrf_token() }}',
                                },
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
