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
                            <div class="col-xxl-4 col-md-6 col-sm-12">
                                <div class="btn-group btn-group-pill" role="group" aria-label="Basic example">
                                    

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
                                        <th>Date</th>
                                        <th>Site name</th>
                                        <th>Address</th>
                                        <th>Complaint Type</th>
                                        <th>Complaint</th>
                                        <th>Sales Person</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($complaints as $idx => $item)
                                        <tr>
                                            <td>{{ $item['date'] }}</td>
                                            <td>{{ $item['site_name'] }}</td>
                                            <td>{{ $item['site_address'] }}</td>
                                            <td>{{ $item['complaint_type'] }}</td>
                                            <td>{{ $item['complaint'] }}</td>
                                            <td>{{ $item['employee_name'] }}</td>
                                            <td>
                                            <td>
                                                <div class="btn-group">
                                                    <button class="btn btn-success btn-sm"
                                                        onclick="element_edit('{{ $item['image_1'] }}', '{{ $item['image_2'] }}', '{{ $item['image_3']}}')"><i
                                                            class="fa fa-edit"></i></button>
                                                  
                                                </div>
                                            </td>
                                         
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>




                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    <button class="btn-close" type="button" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>


                                <div class="modal-body">
                                    <div class="gallery my-gallery card-body row complaint-imagebox" itemscope="">
                                       
                                    
                                    </div>
                                </div>



                            
                            </div>
                        </div>
                    </div>

         
                </div>
            </div>


        </div>
    </div>


    <script>
        $(document).ready(function() {

        });

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


        
        function element_edit(image_1, image_2, image_3) {

            console.log('image1', image_1, 'image_2',image_2, 'image_3', image_3);

            let _html = ` <figure class="col-xl-4 col-md-4 xl-33" itemprop="associatedMedia" itemscope=""><a href="`+image_1+`" class="big-image_1" itemprop="contentUrl" data-size="1600x950"><img class="img-thumbnail small-image_1" src="`+image_1+`" itemprop="thumbnail" alt="Image description"></a>
                                        <figcaption itemprop="caption description">Image 1</figcaption>
                                        </figure>
                                        <figure class="col-xl-4 col-md-4 xl-33" itemprop="associatedMedia" itemscope=""><a  href="`+image_2+`" class="big-image_2" itemprop="contentUrl" data-size="1600x950"><img class="img-thumbnail small-image_2" src="`+image_2+`"  itemprop="thumbnail" alt="Image description"></a>
                                        <figcaption itemprop="caption description">Image 2</figcaption>
                                        </figure>
                                        <figure class="col-xl-4 col-md-4 xl-33" itemprop="associatedMedia" itemscope=""><a href="`+image_3+`" class="big-image_3" itemprop="contentUrl" data-size="1600x950"><img class="img-thumbnail small-image_3" src="`+image_3+`" itemprop="thumbnail" alt="Image description"></a>
                                        <figcaption itemprop="caption description">Image 3</figcaption>
                                        </figure>`

             $('.complaint-imagebox').html(_html);                          
             $('#editModal').modal('show');
    
        }

    </script>

@endsection
