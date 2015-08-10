@extends('dashboard.base')

@section('titulo')
  Dashboard
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Hemograma
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
            @if($hemograma->accion == "Editar")
            <a href="{{ route('editarPaciente', array($pacienteAnalisis->id)) }}" class="btn btn-default pull-left"><i class="fa fa-arrow-left"></i></a>
            @endif
            <strong>Paso 2:</strong> Examen Hemograma
        </h3>
        <hr>
        @include('dashboard.views.hemograma.form')

    </div>

</section>

@endsection