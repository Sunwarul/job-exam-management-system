@extends('admin.dashboard')

@section('title', 'Create')

    @push('css')

    @endpush

@section('content')

    <!-- /.card-header -->
    <div class="card-body ">
        <h1>Create Exam Form</h1>
        {!! form($form) !!}
        {{-- <form role="form">
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label>Job title</label>
                        <input type="text" class="form-control" placeholder="Enter job title">
                    </div>
                    <div class="form-group">
                        <label>Job Description</label>
                        <textarea class="form-control" rows="6" placeholder="Enter Job Description"></textarea>
                    </div>

                    <div class="form-group">
                        <label>Job Circular File (PDF/Word)</label>
                        <input type="file" class="form-control" name="cirular">
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Create">
                    </div>

                </div>

            </div>
        </form> --}}
    </div>
    <!-- /.card-body -->

@endsection

@push('js')

@endpush
