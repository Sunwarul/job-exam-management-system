<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Nunito';
        }

    </style>
</head>

<body class="antialiased">
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h1>Fill out this form</h1>
            </div>
            <div class="card-body">
                <form method="POST" action="{{ route('welcome') }}">
                    <input type="text" name="name" placeholder="Full Name" class="form-control">
                    <input type="text" name="password" placeholder="Password" class="form-control">
                    <input type="submit" value="Apply">
                </form>
            </div>
        </div>
    </div>
</body>

</html>
