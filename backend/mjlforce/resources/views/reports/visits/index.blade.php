@extends('components.master')
@section('title', 'Reports-Complaint')
@section('content')

    <div class="container-fluid">
        <div class="row">
            <!-- Zero Configuration  Starts-->
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                           
                                     <form class="theme-form mega-form" id="reportForm">
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="col-form-label">Business Team</label>
                                                <select class="form-select" id="business_team_id" name="business_team_id">
                                                 
                                                  
                                                </select>
                                            </div>
                                            <div class="col-md-8">
                                                <label class="col-form-label">Employee</label>
                                                <select class="form-select" id="employee_id" name="employee_id">
                                                    
                                                </select>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-form-label">From</label>
                                                <input type="text" class="form-control datepicker" name="start_date"
                                                    id="start_date">
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-form-label">To</label>
                                                <input type="text" class="form-control datepicker" name="end_date"
                                                    id="end_date">
                                            </div>
                                            <div class="col-md-4">
                                                <label class="col-form-label">Report</label>
                                                <div class="form-group m-checkbox-inline mb-0 custom-radio-ml">
                                                   <div class="radio radio-primary">
                                                        <input id="radio1" type="radio" name="report_type" value="activity" checked="">
                                                        <label for="radio1">Activity Log</label>
                                                    </div>
                                                    <div class="radio radio-primary">
                                                        <input id="radio4" type="radio" name="report_type" value="visit">
                                                        <label for="radio4">Visit Log</label>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                        </div>
                                       <div class="card-footer text-end mt-5">
                                            <div class="btn-group">
                                                <button class="btn btn-secondary" type="reset">Reset</button>
                                                <button class="btn btn-primary" type="submit">Search</button>
                                            </div>
                                       </div>
                                </form>

                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="display" id="basic-1">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Date</th>
                                        <th>EMP</th>
                                        <th>Action</th>
                                        <th>Remarks</th>
                                        <th>Address</th>
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
        $(document).ready(function() {
            $(".datepicker").datepicker({
                dateFormat: "yy-mm-dd", // Format: 2025-08-01
                changeMonth: true,
                changeYear: true,

            });
            initialForm();

        });

        function initialForm(){
            var business_team_id = $('#business_team_id').val();
            $.ajax({
                type: "GET",
                url: "{{route('reports.visitsIndex')}}",
                data: {
                    business_team_id: business_team_id,
                },

                success: function(res){
                    console.log(res);
                    var business_teams = res.business_teams;
                    $('#business_team_id').empty();
                    $('#business_team_id').append('<option value="">Choose..</option>');
                    $.each(business_teams, function(index, business_team){
                        $('#business_team_id').append('<option value="'+business_team.id+'">'+business_team.name+'</option>');
                    });

                    var employees = res.employees;
                    $('#employee_id').empty();
                    $('#employee_id').append('<option value="">Choose..</option>');
                    $.each(employees, function(index, employee){
                        $('#employee_id').append('<option value="'+employee.id+'">'+employee.name+'</option>');
                    });
                } 
            })
        }

        function fileDownload(path, file_name){
            event.preventDefault();
            $.ajax({
            type: "GET",
            url: "{{route('reports.fileDownload')}}",
            data: {
                filePath: path,
            },

            success: function(res){
                // window.open(res, '_blank');
                var link = document.createElement("a");

                // Set the link's href to the PDF URL
                link.href = res;

                // Set the download attribute with the desired file name
                link.download = file_name + ".pdf";

                // Append the link to the body
                document.body.appendChild(link);

                // Trigger a click on the link to start the download
                link.click();

                // Remove the link from the body
                document.body.removeChild(link);
            } 
            })
        }

        $('#business_team_id').change(function(){
            var business_team_id = $(this).val();
            // console.log(business_type);
            $.ajax({
                type: "GET",
                url: "{{route('reports.visitsIndex')}}",
                data: {
                    business_team_id: business_team_id,
                },

                success: function(res){
                    console.log(res);
                    var employees = res.employees;
                    $('#employee_id').empty();
                    $('#employee_id').append('<option value="">Choose..</option>');
                    $.each(employees, function(index, employee){
                        $('#employee_id').append('<option value="'+employee.id+'">'+employee.name+'</option>');
                    });
                } 
            })
        })

        $('#reportForm').submit(function(e){
            e.preventDefault();
            var formData = new FormData(this);
            $.ajax({
                type: "post",
                url: "{{ route('reports.visitsLog') }}",
                data: formData,
                contentType: false,
                processData: false,
                cache: false,
                beforeSend: function() {
                   
                },
                complete: function() {
                   
                },
                success: function(res) {
                    console.log(res);
                }
            })
        });

        
  

    </script>

@endsection
