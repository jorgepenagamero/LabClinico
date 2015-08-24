<form class="form-horizontal" method="POST" action="{{route('quimicaCrear')}}" ng-controller="BuscadorCtrl" autocomplete="off">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<input type="hidden" name="id" value="{{ $quimica->id }}">
	<input type="hidden" name="paciente_id" value="{{ $paciente->id }}">
	<input type="hidden" name="tipo_analisis" value="Quimica">
	
	<div class="box-body">
		<div class="col-md-12 ">
			<div class="form-group">
				<label for="medico" class="col-md-4 control-label">Medico</label>
				<div class="col-md-5">
						<input type="text" name="medico" class="form-control" value="{{$quimica->medico}}"required autofocus>
				</div>
			</div>
		</div>
		<table class="table table-hover table-bordered" id="tab_logic">
			<thead>
				<tr class="bg-info"> 
					<th class="text-center"> # </th>
					<th class="text-center"> Examen realizado </th>
					<th class="text-center"> Resultado </th>
					<th class="text-center"> Valores normales </th>
					<th></th>
				</tr>
			</thead>
			<tbody>

			@if($quimica->accion == "Editar")
				@include('dashboard.views.quimica.editar')
				{{-- @include('dashboard.views.quimica.nuevo') --}}
			@else
				@include('dashboard.views.quimica.nuevo')
			@endif

			</tbody>
			<tfooter>
				<tr>
					<td></td><td></td><td></td><td></td>
					<td class="text-center">
						@if($paciente->accion == "Editar")
						<a onclick="agregar();" class="btn btn-primary"><i class="fa fa-plus"></i></a>
						@else
						<a ng-click="add(1);" class="btn btn-primary"><i class="fa fa-plus"></i></a>
						@endif
					</td>
				</tr>
			</tfooter>
		</table>
	</div>

	<br>
	<div class="box-footer">
		<a href="{{ route('pacienteAnalisis', array($paciente->id)) }}" class="btn btn-default">Cancelar</a>
		<button type="submit" class="btn btn-primary pull-right" style="margin-left:20px;">Guardar</button>
		@if($quimica->imprimir)
		<a href="{{ route('analisisImprimir', array('quimica', $quimica->id)) }}" target="_black" class="btn btn-info pull-right"><i class="fa fa-print"></i></a>
		@endif
	</div>
</form>

