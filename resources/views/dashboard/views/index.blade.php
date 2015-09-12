@extends('dashboard.base')

@section('titulo')
  Dashboard
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Dashboard
      <small>Panel de Control</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    </ol>
    </section>

@endsection

@section('contenido')

    <section class="content" style="padding-bottom:0px;margin-bottom:0px;">
      
    <div class="row">

        <a href="{{ route('crearPaciente', array('orina')) }}" class="col-md-2 col-md-offset-1 col-sm-6">
            <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>Orina</h3>
                  <p>Examen</p>
                </div>
                <div class="icon">
                  <i class="fa fa-list"></i>
                </div>
                <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
            </div>
        </a>

        <a href="{{ route('crearPaciente', array('diversos')) }}" class="col-md-2 col-sm-6">
            <div class="small-box bg-green">
                <div class="inner">
                  <h3>Diversos</h3>
                  <p>Examen</p>
                </div>
                <div class="icon">
                  <i class="fa fa-list"></i>
                </div>
                <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
            </div>
        </a>

        <a href="{{ route('crearPaciente', array('hemograma')) }}" class="col-md-2 col-sm-6">
            <div class="small-box bg-blue">
                <div class="inner">
                  <h3>Hemograma</h3>
                  <p>Examen</p>
                </div>
                <div class="icon">
                  <i class="fa fa-list"></i>
                </div>
                <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
            </div>
        </a>

        <a href="{{ route('crearPaciente', array('heces')) }}" class="col-md-2 col-sm-6">
            <div class="small-box bg-red">
                <div class="inner">
                  <h3>Heces</h3>
                  <p>Examen</p>
                </div>
                <div class="icon">
                  <i class="fa fa-list"></i>
                </div>
                <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
            </div>
        </a>

        <a href="{{ route('crearPaciente', array('quimica')) }}" class="col-md-2 col-md-6">
            <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>Quimica</h3>
                  <p>Examen</p>
                </div>
                <div class="icon">
                  <i class="fa fa-list"></i>
                </div>
                <p href="#" class="small-box-footer">Crear <i class="fa fa-arrow-circle-right"></i></p>
            </div>
        </a>

    </div>
    <br>
    <div class="row">
            <div class="col-xs-12">
                <div class="box box-primary" style="padding-bottom:0px;">
                
                <div class="box-header">
                  <h3 class="box-title">Historial</h3>
                  {{-- Buscador --}}
                  {{-- <div class="box-tools">
                    <div class="input-group" style="width: 150px;">
                      <input type="text" name="historial_buscador" class="form-control input-sm pull-right" placeholder="Buscar">
                      <div class="input-group-btn">
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div> --}}
                </div>

                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                    <tbody><tr>
                      <th>Cliente</th>
                      <th>Medico</th>
                      <th>Analisis</th>
                      <th>Fecha</th>
                      <th class="text-center"><i class="fa fa-cog"></i></th>
                    </tr>
                    @foreach($pacienteAnalisis as $analisis)
                    <tr>
                        <td>{{$analisis->paciente->nombre}}</td>
                        <td>{{$analisis->medico}}</small></td>
                        <td>{{$analisis->analisis}}</small></td>
                        <td>{{$analisis->created_at}}</td>
                        <td class="text-center">
                        <div class="btn-group btn-group-sm">
                            <button onClick="imprimir('{{ route('analisisImprimir', array(strtolower($analisis->analisis),$analisis->analisis_id)) }}')" target="_black" class="btn btn-info"><i class="fa fa-print"></i></button>
                            <a href="{{route( strtolower($analisis->analisis).'Editar', $analisis->id)}}" class="btn btn-default" title="Historial">
                                <i class="fa fa-book"></i>
                            </a>
                        </div>
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                    </table>
                </div>
                </div>
            </div>
          </div>

    </section>

@endsection