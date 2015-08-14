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
      <li class="active">Quimica</li>
    </ol>
    </section>

@endsection

@section('contenido')

<section class="content">
      
    <div class="row col-sm-12">
        <div class="box box-primary">
          <h3 class="text-center col-xs-12">
              @if($quimica->accion == "Editar")
              <a href="{{ route('editarPaciente', array('quimica',$pacienteAnalisis->id)) }}" class="btn btn-default pull-left"><i class="fa fa-arrow-left"></i></a>
              @endif
              <strong>Paso 2:</strong> Examen quimica
          </h3>
          <hr>
          @include('dashboard.views.quimica.form')
        </div>
    </div>
</section>

@endsection


@section('js')

<script>
  
  $(document).ready(function(){
    var i=1;
    $("#add_row").click(function(){
    $('#addr'+i).html("<td>"+ (i+1) +"</td><td><input name='examen["+i+"]' type='text' class='form-control input-md'  /> </td><td><input  name='resultado["+i+"]' type='text'  class='form-control input-md'></td><td><input  name='valores["+i+"]' type='text'  class='form-control input-md'></td>");

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