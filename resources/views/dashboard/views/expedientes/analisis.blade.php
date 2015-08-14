@extends('dashboard.base')

@section('titulo')
  Dashboard
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      <a href="{{ route('expedientes') }}" class="btn btn-default"><i class="fa fa-arrow-left"></i></a>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="{{ route('expedientes') }}"><i class="fa fa-list"></i> Expedientes</a></li>
      <li class="active">Analisis</li>
    </ol>
    </section>

@endsection

@section('contenido')

<section class="content">

    <div class="box">

        <div class="box-header with-border">
          <h3 class="box-title">{{$paciente->nombre}} - <small>{{$paciente->edad}} {{$paciente->detalle_edad}}</small></h3>
        </div>

        <div class="box-body table-responsive">
        @if(count($pacienteAnalisis)<1)
        <div class="col-sm-4 col-sm-offset-4">
            <h1 class="text-center">Crear analisis</h1>
            <hr>
            <a href="{{ '/orina/crear/' . $paciente->id }}">
                <h2 class="box box-primary text-center">Orina</h2>
            </a>
            <a href="{{ '/diversos/crear/' . $paciente->id }}">
                <h2 class="box box-primary text-center">Diversos</h2>
            </a>
            <a href="{{ '/hemograma/crear/' . $paciente->id }}">
                <h2 class="box box-primary text-center">Hemograma</h2>
            </a>
            <a href="{{ '/heces/crear/' . $paciente->id }}">
                <h2 class="box box-primary text-center">Heces</h2>
            </a>
            <a href="{{ '/quimica/crear/' . $paciente->id }}">
                <h2 class="box box-primary text-center">Quimica</h2>
            </a>
        </div>
        @else
            <table class="table table-bordered table-hover">
                <thead>
                    <tr> 
                        <th>ID</th> <th>Medico</th> <th>Analisis</th>  <th>Fecha</th>
                        <th class="text-center"><i class="fa fa-cog"></i></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($pacienteAnalisis as $analisis)
                    <tr>
                        <td>{{$analisis->id}}</td>
                        <td>{{$analisis->medico}}</small></td>
                        <td>{{$analisis->analisis}}</small></td>
                        <td>{{$analisis->created_at}}</td>
                        <td class="text-center">
                        <div class="btn-group btn-group-sm">
                            @if($analisis->analisis == 'Orina')
                                <a href="{{ route('orinaEditar', array($analisis->id)) }}" class="btn btn-default" title="Historial">
                                    <i class="fa fa-book"></i>
                                </a>
                            @elseif($analisis->analisis == 'Heces')
                                <a href="{{ route('hecesEditar', array($analisis->id)) }}" class="btn btn-default" title="Historial">
                                    <i class="fa fa-book"></i>
                                </a>                        
                            @elseif($analisis->analisis == 'Hemograma')
                                <a href="{{ route('hemogramaEditar', array($analisis->id)) }}" class="btn btn-default" title="Historial">
                                    <i class="fa fa-book"></i>
                                </a>                            
                            @elseif($analisis->analisis == 'Diversos')
                                <a href="{{ route('diversosEditar', array($analisis->id)) }}" class="btn btn-default" title="Historial">
                                    <i class="fa fa-book"></i>
                                </a>                            
                            @elseif($analisis->analisis == 'Quimica')
                                <a href="{{ route('quimicaEditar', array($analisis->analisis_id)) }}" class="btn btn-default" title="Historial">
                                    <i class="fa fa-book"></i>
                                </a>
                            @endif
                        </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr> 
                        <th>ID</th> <th>Medico</th> <th>Analisis</th>  <th>Fecha</th>
                        <th class="text-center"><i class="fa fa-cog"></i></th>
                    </tr>
                </tfoot>
            </table>
        @endif
        </div>

    </div> 

</div>

@endsection