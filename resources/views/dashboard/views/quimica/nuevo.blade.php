<tr ng-repeat="f in i track by $index" id="@{{'addr' +f}}">
	
	<td class="text-center"> @{{ f + 1}} </td>
	<td> 
		<input type="text" name="@{{'examen[' + f + ']'}}" id="@{{'examen[' + f + ']'}}" ng-model="txt[f]" ng-change="buscar(txt[f], f);" class="form-control"/> 
		
		<div class="list-group" style="position:absolute; z-index:100;">
			<a href="" class="list-group-item" ng-repeat="examen in examenes[f]" ng-click="select(examen, f)"> 
				@{{examen.nombre}}
			</a>
		</div>

	</div>

	</td>

	<td> 
		<input type="text" name="@{{'resultado[' + f + ']'}}" id="@{{'resultado[' + f + ']'}}" class="form-control" required/> 
	</td>

	<td>
		<input type="hidden" name="@{{'valor[' + f + ']'}}" value="@{{lvalores[f]}}"/>
		<tags-input ng-model="lvalores[f]" class="form-control"  style="height:auto;"></tags-input>		
	</td>
	<td style="width:50px;">
		<a ng-show="f>0" ng-click="delete(f);" class="btn btn-danger"><i class="fa fa-minus"></i></a>
	</td>
</tr>

<input type="hidden" id="numvalores" value="0">

<tr id='addr1'></tr>