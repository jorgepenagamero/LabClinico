@extends('dashboard.base')

@section('titulo')
	Quimica
@endsection

@section('bread')

	<section class="content-header">
	<h1>
	  Quimica
	  <small>Examen</small>
	</h1>
	<ol class="breadcrumb">
	  <li><a href="/"><i class="fa fa-dashboard"></i> Inicio</a></li>
	  <li class="active">Orina</li>
	</ol>
	</section>

@endsection

@section('contenido')

<section class="content" ng-app="App">

	<div class="box box-info">
		<h3 class="text-center col-xs-12">
			@if($quimica->accion == "Editar")
			<a href="{{ route('editarPaciente', array('quimica',$pacienteAnalisis->id)) }}" class="btn btn-default pull-left"><i class="fa fa-arrow-left"></i></a>
			@endif
			<strong>Paso 2:</strong> Examen quimica
		</h3>
		<hr>
		@include('dashboard.views.quimica.form')

	</div>

</section>



@section('js')

<script>

    var i = parseInt(document.getElementById('numvalores').value);
    console.log("Inicio: " + i);

    function agregar(){
        $('#addr'+i).html("<td class='text-center'>" + (i+1) + "</td> <td> <input type='text' name='examen["+i+"]' class='form-control' required/> </td> <td> <input type='text' name='resultado["+i+"]' class='form-control' required/> </td> <td> <input type='text' name='valor["+i+"]' class='form-control' required/> </td> <td class='text-center'> <a onClick='eliminar("+i+");' class='btn btn-danger' alt='Eliminar'><i class='fa fa-minus'></i></a> </td> </td>");

        $('#tab_logic').append('<tr id="addr'+(i+1)+'"></tr>');
        i++;
        console.log("Despues de add: "+i);
    };


    function eliminar(id){
    if(i>1){
        console.log(id);
        if (confirm("¿Seguro qué desea eliminar el valor?")) {
            $("#addr"+(id)).remove();
            i--;
        };
        console.log("Despues de delete: "+i);
    }
    }

angular.module('App', [])

.controller('BuscadorCtrl', ['$scope', '$http', function ($scope, $http) {
  var j = parseInt(document.getElementById('numvalores').value);
  console.log(j);
  $scope.i = [j];
  $scope.examenes = [];
  $scope.lvalores = [];
  $scope.valor = [];
  $scope.txt = [];

  $scope.buscar = function(txt, id){
	if(txt != ""){
	  $http.get('http://sistema/examen/buscar/' + txt).success(function(response) {
		$scope.examenes[id] = response;
	  })
	  .error(function(response){
	  });
	}
	else{
	  $scope.examenes[id] = [];
	  $scope.valor[id] = "";
	  $scope.lvalores[id] = [];
	}

  };

  $scope.select = function(examen,id){
	  $http.get('http://sistema/examen/buscar/valor/' + examen.id) .success(function(response) {
		if(response.length > 0){
		  $scope.lvalores[id] = response;
		  $scope.valor[id] = response[0].valor;
		  $scope.txt[id] = examen.nombre;
		  $scope.examenes[id] = [];
		}
		else{
		  $scope.valor[id] = "Sin Valores";
		  $scope.txt[id] = examen.nombre;
		  $scope.examenes[id] = [];
		}
	  })
	  .error(function(response){
	  });

  }

  $scope.delete = function(a){
	if (confirm('¿Desea eliminar el Registro?')) {
		for (var i in $scope.i ) {
		  if ($scope.i[i] == a ){
			$scope.i.splice(i, 1);
		  }
		}
	}
  };

  $scope.add = function(a){
	$scope.i.push(j + 1);
	j++;
	console.log($scope.i);
  };


}]);


</script> 

@endsection

@endsection