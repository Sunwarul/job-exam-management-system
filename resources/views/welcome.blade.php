@extends('layouts.app')

@section('title', 'Welcome')

    @push('css')

    @endpush

@section('content')

    <div class="container-fluid">
        <div style="height: 60vh;" class="d-flex justify-content-center align-items-center">
            <div class="jumbotron px-5 py-5" style="width: 90%;">
                <h1 class="display-4 text-center">
                    Welcome to <strong>{{ config('app.name') }}</strong>
                </h1>
                <div>
                    <a class="btn btn-bg btn-block my-3 p-2 btn-success" href="{{ route('application_form.index') }}">
                        Apply for job
                    </a>
                </div>
                <p class="text-center">
                    Already applied?
                    <a class="" href="{{ route('login') }}">
                        Login
                    </a>
                    here
                </p>
            </div>
        </div>
    </div>

@endsection

@push('js')

@endpush
