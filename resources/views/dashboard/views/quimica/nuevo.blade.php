<tr ng-repeat="f in i track by $index" id="@{{'addr' +f}}">
	<td class="text-center"> @{{ f + 1}} </td>
	<td> 
		<input type="text" name="@{{'examen[' + f + ']'}}" ng-model="txt[f]" ng-change="buscar(txt[f], f);" class="form-control"/> 
		
		<div class="list-group" style="position:absolute;">
			<a href="" class="list-group-item" ng-repeat="examen in examenes[f]" ng-click="select(examen, f)"> 
				@{{examen.nombre}}
			</a>
		</div>

	</div>

	</td>

	<td> 
		<input type="text" name="@{{'resultado[' + f + ']'}}" class="form-control" required/> 
	</td>

	<td>
		<input type="text" name="@{{'valor[' + f + ']'}}" ng-model="valor[f]" list="@{{'valores' + f}}" class="form-control" required/>
		
		<datalist id="@{{'valores' + f}}">
			<option ng-repeat="valor in lvalores[f]" value="@{{valor.valor}}"/>
		</datalist>
	</td>
	<td style="width:50px;">
		<a ng-show="f>0" ng-click="delete(f);" class="btn btn-danger"><i class="fa fa-minus"></i></a>
	</td>
</tr>

<input type="hidden" id="numvalores" value="0">

<tr id='addr1'></tr>