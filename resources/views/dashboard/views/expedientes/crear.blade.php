@extends('dashboard.base')

@section('titulo')
  Expedientes
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Expediente
      <small>{{$paciente->accion}}</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="{{ route('expedientes') }}"><i class="fa fa-list"></i> Expedientes</a></li>
      <li class="active">Paso 1</li>
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
       <h3 class="text-center"><strong>Paso 1:</strong> Información del paciente</h3>
        @include('dashboard.views.expedientes.form')

    </div>

</section>

@endsection