<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Central | @yield('titulo')</title>

    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
     <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    
    <link href="{{ asset('css/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ asset('css/ng-tags-input.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/AdminLTE.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/skin-blue.min.css') }}" rel="stylesheet">
    <script src="{{ asset('js/angular.min.js') }}"></script>
    <script src="{{ asset('js/modernizr.js') }}"></script>

  </head>
  <body class="skin-blue sidebar-collapse">

    <div class="wrapper">
      
      @include('dashboard.header')
      @include('dashboard.aside')
      
      <div class="content-wrapper">

          @yield('bread')

          @yield('contenido')

      </div>
      
      @include('dashboard.footer')
     
    </div>

    <script src="{{ asset('js/bootstrap.js') }}"></script>
    <script src="{{ asset('js/jquery.slimScroll.min.js') }}"></script>
    <script src="{{ asset('js/classie.js') }}"></script>
    <script src="{{ asset('js/ng-tags-input.min.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
  
    @yield('js')
  </body>
</html>