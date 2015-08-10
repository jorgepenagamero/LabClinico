<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Central | @yield('titulo')</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    
    <!-- Bootstrap 3.3.2 -->
    <link href="{{ asset('css/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ asset('css/AdminLTE.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/select2.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/skin-blue.min.css') }}" rel="stylesheet">

  </head>
  <body class="skin-blue">

    <div class="wrapper">
      
      @include('dashboard.header')
      @include('dashboard.aside')
      
      <div class="content-wrapper">

          @yield('bread')

          @yield('contenido')

      </div>
      
      @include('dashboard.footer')
     
    </div>

    <script src="{{ asset('js/classie.js') }}"></script>
    <script src="{{ asset('js/bootstrap.js') }}"></script>
    <script src="{{ asset('js/select2.min.js') }}"></script>
    <script src="{{ asset('js/jquery.slimScroll.min.js') }}"></script>
    {{-- // <script src="{{ asset('dash/js/dashboard.js') }}"></script> --}}
    <script src="{{ asset('js/app.min.js') }}"></script>
  
    @yield('js')
  </body>
</html>