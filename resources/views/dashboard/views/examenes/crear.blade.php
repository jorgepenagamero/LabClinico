@extends('dashboard.base')

@section('titulo')
  Crear Examen
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Creación
      <small>{{$examen->accion}}</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="{{ route('examenes') }}"><i class="fa fa-list"></i> Examenes</a></li>
      <li class="active">Creación</li>
    </ol>
    </section>

@endsection

@section('contenido')

<section class="content">
	@if (count($errors) > 0)
	    <div class="alert alert-danger" style="margin:5px;padding:5px;">
	        <ul> @foreach ($errors->all() as $error) <li>{{ $error }}</li> @endforeach </ul>
	    </div>
	@endif
    <div class="box box-info">

		@include('dashboard.views.examenes.form')

    </div>

</section>
@endsection

@section('js')
<script>
  
$(document).ready(function(){
      var i=1;
      $("#add_row").click(function(){
      $('#addr'+i).html("<td><input name='valores["+i+"]' type='text' class='form-control input-md' required autofocus/>");

      $('#tab_logic').append('<tr id="addr'+(i+1)+'"></tr>');
      i++; 
      });

      $("#delete_row").click(function(){
      
            if(i>1){
                $("#addr"+(i-1)).html('');
                i--;
            }
      });

});		

</script>

@endsection

