angular.module('Websis', [])

.controller('MainCtrl', ['$scope', function ($scope) {
	
	$scope.view = 0;

	$scope.setView = function(view){

		$('a.list-group-item').each(function (index) {

			if ((index + 1) === view) {
				$(this).addClass('active');
			}else{
				$(this).removeClass('active');
			};
		    
		});

		$scope.view = view;
		
	}

}])

.controller('TecnologiasCtrl', ['$scope', function ($scope) {
	
	$scope.logos = 	[
					{url: 'http://www.w3schools.com/html', img: 'html'},
					{url: 'http://www.w3schools.com/js', img: 'js'},
					{url: 'http://www.w3schools.com/css', img: 'css'},
					{url: 'http://laravel.com', img: 'laravel'},
					{url: 'https://angularjs.org', img: 'angular'},
					{url: 'http://getbootstrap.com', img: 'bootstrap'},
					{url: 'https://github.com', img: 'github'},
					{url: 'http://ionicframework.com', img: 'ionic'},
					{url: 'https://www.mysql.com', img: 'mysql'},
					{url: 'https://nodejs.org', img: 'node'},
					{url: 'http://www.sublimetext.com', img: 'sublime'},
					// {url: 'http://gruntjs.com', img: 'grunt'},
					{url: 'https://cordova.apache.org', img: 'cordova'}
					];

}])

.controller('SuscripcionCtrl', ['$scope', '$http', function ($scope, $http) {
	
	$scope.submit = function(){
		if($scope.suscripcion){
			var suscripcion = {};
			suscripcion.correo = $scope.suscripcion;
			// console.log(suscripcion);

			$http.post('http://localhost:8000/suscripcion', suscripcion).
			  success(function(data, status) {
			    console.log(status);
			    if (status == 201) {
			    	$scope.msj = "Ya formas parte de la familia";
			    	$scope.suscrito = true;
				}else{
				    $scope.errores = data;
				}
			  }).
			  error(function(data, status) {
			    console.log(status);
			    $scope.errores = ["La suscripción no se realizo, intente más tarde."];
			  });
		}
	}

	$scope.email = function(){
		if($scope.correo){

			console.log($scope.correo);

			$http.post('http://localhost:8000/email', $scope.correo).
			  success(function(data, status) {
			    console.log(status);
			    if (status == 201) {
			    	$scope.correo = {};
			    	$scope.suscrito = true;
			    	$scope.msj = "Gracias por escribirnos.";
			    	$('#email').modal('hide')
				}else{
				    $scope.emailErrores = data;
				}
			  }).
			  error(function(data, status) {
			    console.log(status);
			    $scope.emailErrores = ["El correo no se envio, intente más tarde."];
			  });
		}
	}

}])
;