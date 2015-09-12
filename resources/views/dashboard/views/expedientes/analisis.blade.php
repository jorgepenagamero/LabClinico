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
          <h3 class="box-title"><strong>Paciente:</strong> {{$paciente->nombre}} - <small>{{$paciente->edad}} {{$paciente->detalle_edad}}</small></h3>
          <span class="badge pull-right">{{ count($pacienteAnalisis) }} Análisis.</span>
        </div>

        <div class="box-body table-responsive">
        @if(count($pacienteAnalisis)<1)
            {{-- <div class="alert alert-info">No tiene ningun análisis.</div> --}}
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
                            <button onClick="imprimir('{{ route('analisisImprimir', array(strtolower($analisis->analisis), $analisis->analisis_id)) }}')" target="_black" class="btn btn-info"><i class="fa fa-print"></i></button>
                            
                            <a href="{{ url(strtolower($analisis->analisis).'/editar/'. $analisis->id) }}" class="btn btn-default" title="Historial">
                                <i class="fa fa-book"></i>
                            </a>


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
        <br>
            @include('dashboard.views.expedientes.examenes')
        </div>

    </div> 

</div>

@endsection