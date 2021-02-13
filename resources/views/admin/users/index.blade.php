@extends('admin.dashboard')

@section('title', 'Index')

    @push('css')

    @endpush

@section('content')
    <div class="card-body">
        <h1>Users</h1>

        <div class="row">
            <div class="col-12">
                <users-component></users-component>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script src="{{ asset('js/app.js') }}"></script>
@endpush
