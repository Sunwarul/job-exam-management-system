@extends('layouts.app')

@section('title', 'Application form')

    @push('css')

    @endpush

@section('content')
    <div class="card">
        <div class="card-header bg-info">
            <h3 class="text-center">Fill out this form carefully</h3>
        </div>
        <div class="card-body">
            {!! form($form) !!}
        </div>
    </div>

@endsection

@push('js')

@endpush
