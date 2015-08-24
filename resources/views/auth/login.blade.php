<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Central | Log in</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

    <link href="{{ asset('css/bootstrap.css') }}" rel="stylesheet">
    <link href="{{ asset('css/AdminLTE.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/animate.css') }}" rel="stylesheet">

  </head>
  <body class="login-page">

  	<div class="login-box animated fadeIn">
	    <div class="login-logo">
	      	<a href="#"><img src="/img/logo.png" alt="Logo" width="200"></a>
	      	<hr>
	    </div>
	    <div class="login-box-body">
      	
      	<form role="form" method="POST" action="/auth/login">
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			
			<div class="form-group form-group-lg has-feedback">
			  	<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
			  	<input type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
			</div>

			<div class="form-group form-group-lg has-feedback">
			  	<span class="glyphicon glyphicon-lock form-control-feedback"></span>
			  	<input type="password" class="form-control" name="password" required>
			</div>

		  	<div class="form-group form-group-lg text-center">    
		    	<div class="checkbox">
		      		<label>
		        		<input type="checkbox" name="remember"> Recordarme
		      		</label>
		    	</div>                        
		  	</div>
			<div class="form-group form-group-lg">
				<button type="submit" class="btn btn-primary btn-block btn-lg btn-flat">Entrar</button>
			</div>
		</form>
		@if (count($errors) > 0)
			<div class="alert alert-danger">
				@foreach ($errors->all() as $error)
					<p>{{ $error }}</p>
				@endforeach
			</div>
		@endif

			{{-- <a href="/password/email">I forgot my password</a><br> --}}
			{{-- <a href="register.html" class="text-center">Register a new membership</a> --}}
		</div>
    </div>
    
    <script src="{{ asset('js/bootstrap.js') }}"></script>

  </body>
</html>
