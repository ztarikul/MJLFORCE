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
                                        <th>Mobil</th>
                                        <th>Omera</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($soldToParties as $idx => $soldToParty)
                                        <tr>
                                            <td>{{ $soldToParty->acc_name }}</td>
                                            <td>{{ $soldToParty->customer_code ? $soldToParty->customer_code : 'NA' }}</td>
                                            <td>{{ $soldToParty->address }}</td>
                                            <td>{{  $soldToParty->employee?->name }}</td>
                                            <td>{{  $soldToParty->omeraEmployee?->name }}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <a type="button"
                                                    href="{{ route('masterData.detailsSoldToParties', $soldToParty->id) }}"
                                                    class="btn btn-secondary"><i class="fa fa-folder-open-o"></i>
                                                    </a>
                                                    <button class="btn btn-info" data-bs-toggle="tooltip" data-bs-placement="top" title="Sync with SAP" onclick="element_sync('{{ $soldToParty->id }}')"><i class="fa fa-spin fa-refresh"></i></button>
                                                </div>
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


<script>
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
