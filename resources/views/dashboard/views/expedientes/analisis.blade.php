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
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title text-center">Crear analisis</h3>
              </div>
              <div class="panel-body">
                <a href="{{ '/orina/crear/' . $paciente->id }}" class="col-md-2 col-md-offset-1 col-sm-6">
                    <div class="small-box bg-aqua">
                        <div class="inner"> <h3>Orina</h3> <p>Examen</p> </div>
                        <div class="icon"> <i class="fa fa-list"></i> </div>
                        <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
                    </div>
                </a>

                <a href="{{ '/diversos/crear/' . $paciente->id }}" class="col-md-2 col-sm-6">
                    <div class="small-box bg-green">
                        <div class="inner"> <h3>Diversos</h3> <p>Examen</p> </div>
                        <div class="icon"> <i class="fa fa-list"></i> </div>
                        <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
                    </div>
                </a>

                <a href="{{ '/hemograma/crear/' . $paciente->id }}" class="col-md-2 col-sm-6">
                    <div class="small-box bg-blue">
                        <div class="inner"> <h3>Hemograma</h3> <p>Examen</p> </div>
                        <div class="icon"> <i class="fa fa-list"></i> </div>
                        <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
                    </div>
                </a>

                <a href="{{ '/heces/crear/' . $paciente->id }}" class="col-md-2 col-sm-6">
                    <div class="small-box bg-red">
                        <div class="inner"> <h3>Heces</h3> <p>Examen</p> </div>
                        <div class="icon"> <i class="fa fa-list"></i> </div>
                        <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
                    </div>
                </a>

                <a href="{{ '/quimica/crear/' . $paciente->id }}" class="col-md-2 col-md-6">
                    <div class="small-box bg-yellow">
                        <div class="inner"> <h3>Quimica</h3> <p>Examen</p> </div>
                        <div class="icon"> <i class="fa fa-list"></i> </div>
                        <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
                    </div>
                </a>
              </div>
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
                                <a href="{{ route('quimicaEditar', array($analisis->id)) }}" class="btn btn-default" title="Historial">
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