@extends('dashboard.base')

@section('titulo')
  Dashboard
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Expedientes
      <small>Lista</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Expedientes</li>
    </ol>
    </section>

@endsection

@section('contenido')

<section class="content">

    <div class="box">

        <div class="btn-group"  style="margin:5px;">
            <div class="pull-left">
                <input class="form-control" type="search" ng-model="buscar" placeholder="Buscar">
            </div>
            <a href="{{ route('crearPaciente', array('elejir')) }}" class="btn btn-default"> 
                <i class="glyphicon glyphicon-plus"></i>  Agregar
            </a>
        </div>

        <div class="box-body table-responsive">
            <table class="table table-bordered table-hover" ng-init="cargarDatos()">
                <thead>
                    <tr>
                        <th>ID</th><th>Nombre</th><th>Edad</th><th>Analisis</th>
                        <th>Fecha</th><th class="text-center"><i class="fa fa-cog"></i></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($pacientes as $paciente)
                    <tr>
                        <td>{{$paciente->id}}</td>
                        <td>
                            <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}">
                                {{$paciente->nombre}}
                            </a>
                        </td>
                        <td>{{$paciente->edad}} <small>{{$paciente->detalle_edad}}</small></td>
                        <td class="text-center">{{$paciente->numAnalisis($paciente->id)}}</td>
                        <td>{{$paciente->created_at}}</td>
                        <td class="text-center">
                        <div class="btn-group btn-group-sm">
                            <a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default" title="Historial">
                                <i class="fa fa-history"></i>
                            </a>
                            {{-- <a href="{{ route('editarPaciente', array($paciente->id)) }}" class="btn btn-default" title="Editar"><i class="fa fa-pencil"></i></a> --}}
                        </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr>
                        <th>ID</th><th>Nombre</th><th>Edad</th><th>Analisis</th>
                        <th>Fecha</th><th class="text-center"><i class="fa fa-cog"></i></th>
                    </tr>
                </tfoot>
            </table>
        </div>

    </div> 

</div>

@endsection