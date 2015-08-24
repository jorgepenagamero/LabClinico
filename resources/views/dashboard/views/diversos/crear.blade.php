@extends('dashboard.base')

@section('titulo')
  Diversos
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Diversos
      <small>Examen</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Diversos</li>
    </ol>
    </section>

@endsection

@section('contenido')

<section class="content">

    <div class="box box-info">
        <h3 class="text-center col-xs-12">
            @if($diverso->accion == "Editar")
            <a href="{{ route('editarPaciente', array('diverso',$pacienteAnalisis->id)) }}" class="btn btn-default pull-left"><i class="fa fa-arrow-left"></i></a>
            @endif
            <strong>Paso 2:</strong> Examen diverso
        </h3>
        <hr>
        @include('dashboard.views.diversos.form')

    </div>

</section>

@endsection