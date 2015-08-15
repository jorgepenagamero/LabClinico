@extends('dashboard.base')

@section('titulo')
  Crear Examen
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Examen
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
  
var i = parseInt(document.getElementById('numvalores').value);
// alert(i);
$("#add_row").click(function(){
$('#addr'+i).html("<td><input name='valores["+i+"]' type='text' class='form-control input-md' required autofocus/><td class='text-center'> <a onClick='eliminar("+i+");' class='btn btn-danger' alt='Eliminar'><i class='fa fa-minus'></i></a> </td>");

$('#tab_logic').append('<tr id="addr'+(i+1)+'"></tr>');
i++; 
});


function eliminar(id){
if(i>1){
    // alert(i);
    if (confirm("¿Seguro qué desea eliminar el valor?")) {
        $("#addr"+(id)).remove();
        i--;
    };
}
}
</script>

@endsection

