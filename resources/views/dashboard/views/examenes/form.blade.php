<form class="form-horizontal" method="POST" action="{{route('crearExamen')}}">

<input type="hidden" name="_token" value="{{ csrf_token() }}">
<input type="hidden" name="id" value="{{ $examen->id }}">

<div class="box-body">
	<br>
	<div class="form-group">
        <label for="nombre" class="col-sm-4 control-label">Nombre</label>
        <div class="col-sm-5">
            <input type="text" name="nombre" class="form-control" value="{{$examen->nombre}}" required autofocus>
        </div>
    </div>
    <br>
    <table class="table table-bordered" id="tab_logic" style="margin:auto; width:50%;">

        <h4 class="text-center"> Valores </h4>
		<hr>
        <tbody>
        @if($examen->accion == "Editar")
        @foreach ($valores as $index => $valor)
          <tr id='{{ 'addr'. $index}}'>
            <td> 
                <input type="text" name='{{ 'valores['. $index .']'}}'  class="form-control" value="{{$valor->valor}}" required/> 
            </td>
            @if($index>0)
            <td style="width:50px;" class="text-center">    
                <a onClick="eliminar({{$index}});" class="btn btn-danger" alt="Eliminar"><i class="fa fa-minus"></i></a>
            </td>
            @else
            @endif
          </tr>
            <input type="hidden" id="numvalores" value="{{count($valores)}}">
        @endforeach
          <tr id='{{'addr' . count($valores)}}'></tr>
        @else
            <tr id='addr0'>
            <td style="width:50px;"></td>
            <td style="width:50px;"> 
                <input type="text" name='valores[0]' class="form-control" required/> 
            </td>
            <input type="hidden" id="numvalores" value="1">
          </tr>
          <tr id='addr1'></tr>
        @endif
        </tbody>
        <tfooter>
          <tr>
            <td></td>
            <td><a id="add_row" class="btn btn-primary pull-right"><i class="fa fa-plus"></i></a></td></tr>
        </tfooter>
    </table>        
    <br><br>
</div>
<div class="box-footer">
    <a href="/examenes" class="btn btn-default">Volver</a>
    <button type="submit" class="btn btn-info pull-right">Guardar</button>
</div>
</form>