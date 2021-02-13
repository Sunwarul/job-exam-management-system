@extends('admin.dashboard')

@section('title', 'Index')

    @push('css')
        <link href="https://cdn.jsdelivr.net/npm/@mdi/font@5.x/css/materialdesignicons.min.css" rel="stylesheet">
    @endpush

@section('content')
    <users-component></users-component>
@endsection

@push('js')
    <script src="{{ asset('js/app.js') }}"></script>
@endpush
