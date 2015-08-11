@extends('dashboard.base')

@section('titulo')
  Dashboard
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

@endsection