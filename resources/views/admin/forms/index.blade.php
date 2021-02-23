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
                            <h1 class="">All Examination Form</h1>
                        </div>
                        <div>
                            <h1><a href="{{ route('forms.create') }}" class="btn btn-primary">Create New Examination</a>
                            </h1>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped text-center">
                            <thead>
                                <tr>
                                    <th>Exam Name</th>
                                    <th>Circular File</th>
                                    <th>Exam Date</th>
                                    <th>Exam Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($forms as $form)
                                    <tr>
                                        <td>{{ $form->exam_name }}</td>
                                        <td>
                                            @if ($form->exam_circular)
                                                <img src="{{ asset('storage') . '/' . $form->exam_circular }}"
                                                    alt="Exam image" width="100" />
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td>{{ $form->exam_date }}</td>
                                        <td>{{ $form->exam_activity_status == 'taken' ? 'Already Taken ✅' : 'Not Taken Yet 🔜' }}
                                        </td>
                                        <td>
                                            <a href="{{ route('forms.edit', $form->id) }}">Edit</a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
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
