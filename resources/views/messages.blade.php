@if ($message = Session::get('success'))
    <div class="alert alert-success alert-block text-center">
        {{ $message }}
    </div>
@endif

@if ($message = Session::get('error'))
    <div class="alert alert-danger alert-block text-center">
        {{ $message }}
    </div>
@endif

@if ($errors->any())
    <div class="alert alert-danger">
        <p><strong>Opps Something went wrong!</strong></p>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if ($message = Session::get('warning'))
    <div class="alert alert-warning alert-block text-center">
        {{ $message }}
    </div>
@endif
