@extends('dashboard.base')

@section('titulo')
  Dashboard
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Quimica
      <small>Examen</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Orina</li>
    </ol>
    </section>

@endsection

@section('contenido')

<section class="content">

    <div class="box box-info">
        <h3 class="text-center col-xs-12">
            @if($quimica->accion == "Editar")
            <a href="{{ route('editarPaciente', array('quimica',$pacienteAnalisis->id)) }}" class="btn btn-default pull-left"><i class="fa fa-arrow-left"></i></a>
            @endif
            <strong>Paso 2:</strong> Examen quimica
        </h3>
        <hr>
        @include('dashboard.views.quimica.form')

    </div>

</section>



@section('js')

<script>

  var i= parseInt(document.getElementById('resultados').value);

  $("#add_row").click(function(){
  $('#addr'+i).html("<td>"+ (i+1) +"</td><td><input type='text' class='form-control input-md'  /> </td><td><input  name='resultados["+i+"]' type='text'  class='form-control input-md' required></td><td><input  name='valores["+i+"]' type='text'  class='form-control input-md' required><td class='text-center'> <a onClick='eliminar("+(i)+");' class='btn btn-danger' alt='Eliminar'><i class='fa fa-minus'></i></a></td>");

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

@endsection