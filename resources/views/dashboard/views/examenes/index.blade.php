@extends('dashboard.base')

@section('titulo')
  Examenes
@endsection

@section('bread')

    <section class="content-header">
    <h1>
      Examenes
      <small>Lista</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Examenes</li>
    </ol>
    </section>

@endsection

@section('contenido')

<section class="content">

    <div class="box">
        <div class="box-header">
            <div class="btn-group">
                <div class="pull-left">
                    <form method="get" action="{{url('examen/buscar/')}}" role="search" >
                    <input class="form-control" type="search" name="txt" placeholder="Buscar">
                    </form>
                </div>
                <a href="{{ route('crearExamen') }}" class="btn btn-primary"> 
                    <i class="glyphicon glyphicon-plus"></i>  Agregar
                </a>
            </div>
        </div>

        <div class="box-body">
            <table class="table table-bordered table-hover" ng-init="cargarDatos()">
                <thead>
                    <tr>
                        <th>ID</th><th>Nombre</th><th>Valores</th>
                        <th>Fecha</th><th class="text-center"><i class="fa fa-cog"></i></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($examenes as $examen)
                    <tr>
                        <td>{{$examen->id}}</td>
                        <td>{{$examen->nombre}}</td>
                        <td>
                            @foreach($examen->valores as $valor)
                                {{$valor->valor}} <br>
                             @endforeach
                        </td>
                        <td>{{$examen->updated_at}}</td>
                        <td class="text-center">
                        <div class="btn-group btn-group-sm">
                            <a href="{{ route('editarExamen', array($examen->id)) }}" class="btn btn-default" title="Editar"><i class="fa fa-pencil"></i></a>
                        </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
                <tfoot>
                      <tr>
                        <th>ID</th><th>Nombre</th><th>Edad</th>
                        <th>Fecha</th><th class="text-center"><i class="fa fa-cog"></i></th>
                    </tr>
                </tfoot>
            </table>
            <?php  echo $examenes->render();?>
        </div>

    </div> 

</div>

</section>

@endsection