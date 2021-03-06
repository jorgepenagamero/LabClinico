@extends('dashboard.base')

@section('titulo')
  Heces
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Heces
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
            @if($heces->accion == "Editar")
            <a href="{{ route('editarPaciente', array('heces',$pacienteAnalisis->id)) }}" class="btn btn-default pull-left"><i class="fa fa-arrow-left"></i></a>
            @endif
            <strong>Paso 2:</strong> Examen Heces
        </h3>
        <hr>
        @include('dashboard.views.heces.form')

    </div>

</section>


@section('js')

<script>
  var $qEventSelect = $(".quistes-tags");
  
  var $AEventSelect = $(".activos-tags");

  $qEventSelect.on("select2:select", function (e) {
    if ($(".quistes").val() == "") {
      $(".quistes").val($(".quistes").val() + e.params.data.id);
    }else{
      $(".quistes").val($(".quistes").val() + ", " + e.params.data.id);
    };

  });
  $qEventSelect.on("select2:unselect", function (e) { 
    $(".quistes").val($(".quistes").val().replace( ', ' + e.params.data.id, ''));
    $(".quistes").val($(".quistes").val().replace(e.params.data.id, ''));
  });

  $AEventSelect.on("select2:select", function (e) { 
    if ($(".activos").val() == "") {
      $(".activos").val($(".activos").val() + e.params.data.id);
    }else{
      $(".activos").val($(".activos").val() + ", " + e.params.data.id);
    };
  });
  $AEventSelect.on("select2:unselect", function (e) { 
    $(".activos").val($(".activos").val().replace( ', ' + e.params.data.id, ''));
    $(".activos").val($(".activos").val().replace(e.params.data.id, ''));
  });

</script>

@endsection

@endsection