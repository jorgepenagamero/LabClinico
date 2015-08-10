<form class="form-horizontal" method="POST" action="{{route('crearExamen')}}">
    {{-- <input type="hidden" name="_method" value="PUT"> --}}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">

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

              <tr id='addr0'>
                <td> <input type="text" name='valores[0]'  class="form-control" required/> </td>
              </tr>
              <tr id='addr1'></tr>

            </tbody>
        </table>
	    <br>
	        <a id='delete_row' class="btn btn-danger pull-left"><i class="fa fa-minus"></i></a>
	        <a id="add_row" class="btn btn-primary pull-right"><i class="fa fa-plus"></i></a>
	        <br><br><br><br>
    </div>
    <div class="box-footer">
        <a href="/examenes" class="btn btn-default">Volver</a>
        <button type="submit" class="btn btn-info pull-right">Guardar</button>
    </div>
</form>