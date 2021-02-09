@extends('admin.dashboard')

@section('title', 'Index')

    @push('css')

    @endpush

@section('content')

    <!-- /.card-header -->
    <div class="card-body">
        <div class="row">
            <div class="col-12">

                <div class="card">
                    <div class="card-header d-flex justify-content-around">
                        <div>
                            <h1 class="">All Examination</h1>
                        </div>
                        <div>
                            <h1><a href="{{ route('applications.create') }}" class="btn btn-primary">Create New
                                    Examination</a>
                            </h1>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped text-center">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Father</th>
                                    <th>Mother</th>
                                    <th>Email</th>
                                    <th>Photo</th>
                                    <th>Phone</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($applications as $application)
                                    <tr>
                                        <td>{{ $application->name }}</td>
                                        <td>{{ $application->father_name }}</td>
                                        <td>{{ $application->mother_name }}</td>
                                        <td>{{ $application->email }}</td>
                                        <td>{{ $application->photo }}</td>
                                        <td>{{ $application->phone }}
                                        </td>
                                        <td>
                                            <a href="">Edit</a>
                                        </td>
                                    </tr>
                                @endforeach

                            </tbody>
                            {{-- <tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>Circular File</th>
                                    <th>Date</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </tfoot> --}}
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

    </div>
    <!-- /.card-body -->

@endsection

@push('js')

    <script src="/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script>
        $(function() {
            $("#example1").DataTable({
                "responsive": true,
                "autoWidth": false,
            });
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
            });
        });

    </script>
@endpush
