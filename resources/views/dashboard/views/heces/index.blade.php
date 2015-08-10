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

        @include('dashboard.views.heces.form')

    </div>

</section>

@endsection