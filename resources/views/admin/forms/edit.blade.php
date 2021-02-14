@extends('admin.dashboard')

@section('title', 'Edit')

    @push('css')

    @endpush

@section('content')

    <!-- /.card-header -->
    <div class="card-body ">
        <h1>Edit Exam Form</h1>
        {!! form($form) !!}
    </div>
    <!-- /.card-body -->

@endsection

@push('js')

@endpush
