<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Prueba</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <link href="css/style.css" rel="stylesheet">
        <link href="../../css/style.css" rel="stylesheet">
    </head> 
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @if (Auth::check())
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ url('/login') }}">Login</a>
                        <a href="{{ url('/register') }}">Registrar</a>
                    @endif
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    Prueba PHP 
                </div>
                <div class="col-md-12">
                    <p>Jeisson Philipee Castiblanco López<br>
                    phillipee01@gmail.com<br>
                    Cel. 3213784036</p>                    
                </div>
               
            </div>
        </div>
    </body>
</html>
