@extends('dashboard.base')

@section('titulo')
  Dashboard
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Orina
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
            <a href="{{ route('editarPaciente', array('orina', $pacienteAnalisis->id)) }}" class="btn btn-default pull-left"><i class="fa fa-arrow-left"></i></a>
            <strong>Paso 2:</strong> Examen Orina
        </h3>
        <hr>
        @include('dashboard.views.orina.form')

    </div>

</section>

@endsection