<!DOCTYPE html>
<html lang="en  ">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <META NAME="description" CONTENT="InCubics.net provides a demo Laravel APi-server with get-request, Sanctum token usage">
    <META NAME="keywords" CONTENT="InCubits.net, API, Laravel, Sanctum, CRUD, educational, demo">
    <META NAME="robots" CONTENT="noindex, nofollow">

    <META NAME="author" CONTENT="InCubics.net" LANG="nl">
    <META NAME="copyright" CONTENT="InCubics.net &copy; {{ date('Y')}} - {{ (date('Y') + 1) }}" LANG="nl">
    <title>
        InCubics | Sanctum API-demo
    </title>

    <base href="{{url('/public')}}">
    <!-- Custom Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- twitter Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    {{--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--}}
    {{--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--}}

    <!-- FontAwsome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    {{--FAVICON --generated from image with: www.favicon-generator.org and site uses SSL (security)--}}
    {{--XAMPP in httpd.conf  mod_alias has:  alias /favicon.ico /path/to/your/images/directory/favicon.ico--}}
    <link rel="apple-touch-icon" href="/favicon.png">
    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="shortcut icon" href="/favicon.ico"/>

    <!-- CSS Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- FontAwsome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- Styles -->
    <style>
        @font-face {
            font-family: 'Vertigo';
            src: url('../fonts/exo/Exo-Light.ttf');/* format('truetype');*/
            /*src: url('../fonts/3d-let/3dlet.ttf');!* format('truetype');*!*/
            /*src: url('../fonts/cube/Cube.ttf');!* format('truetype');*!*/
        }
        @font-face {
            font-family: 'cube';
            src: url('../fonts/cube/Cube.ttf');
        format('truetype');
        }

        html, body {
            position: relative;
            background-color: #fff;
            color: #636b6f;
            font-size: medium;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }
        #incubics {
            position: absolute;
            top: 3%;
            left:6%;
            font-family: cube;
            font-size: small;
            color: #33b7b7;
        }
        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links > a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }
        .links a:hover {
            color: #33b7b7;
        }

        .m-b-md {
            margin-bottom: 22px;
        }

        .textarea {
            height: 150px;
        }

        .field_invalid
        {
            background-color: #f3a5ab;
        }
        .copyrights {
            position: absolute;
            text-align: right;
            bottom: 20px;
            font-size: 9px;
        }
        .copyrights a {
            text-decoration: none;
            color: #33b7b7;
        }

        /*/// TABLES /////////*/
        .table .row1column{
            font-weight: bold;
        }
        .table .tablerow-hover:hover > .row1column {  /* eq: hover row and change only the first cel <th>  -->   tr:hover > th   */
            background-color: #70BEBE;
        }
        .table td:hover {  /* eq: hover row and change only the first cel <th>  -->   tr:hover > th   */
            background-color: #96dbdd;
        }

    </style>
</head>
<body>
<div id="incubics">incubics</div>
<div class="flex-center position-ref">
    {{--            @if (Route::has('login'))
                    <div class="top-right links">
                        @auth
                            <a href="{{ url('/home') }}">Home</a>
                        @else
                            <a href="{{ route('login') }}">Login</a>

                            @if (Route::has('register'))
                                <a href="{{ route('register') }}">Register</a>
                            @endif
                        @endauth
                    </div>
                @endif--}}
    <div class="content">
        <div class="title m-b-md">
            sanctumA<span style="font-family:Vertigo; font-size:99px; font-weight: lighter">π</span>
        </div>
        <div class="m-b-md">
        </div>
        <div class="container">
            @yield('content')
        </div>

    </div>

</div>

<div class="container-fluid copyrights">
    <a href="{{url('http://incubics.net')}}">INCUBICS.net</a>   © <?= date('Y') .'-'.(date('Y') +1) ?>
</div>
</body>
</html>
