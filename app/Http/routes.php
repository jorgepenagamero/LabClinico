<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', ['as' => 'dashboard', 'uses' => 'DashboardController@index']);


// Route::get('/analisis/paciente/{analisis}', ['as' => 'analisisPaciente', 'uses' => 'AnalisisController@paciente']);
// Route::post('/analisis/paciente/{analisis}', ['as' => 'analisisPaciente', 'uses' => 'AnalisisController@pacienteGuardar']);

//Examenes
	require(__DIR__ . '/Routes/examenes.php');

//Expedientes
	require(__DIR__ . '/Routes/expedientes.php');

// Orina
	require(__DIR__ . '/Routes/orina.php');

// Hemograma
	require(__DIR__ . '/Routes/hemograma.php');

// Heces
	require(__DIR__ . '/Routes/heces.php');

Route::get('/diversos/crear', ['as' => 'diversosCrear', 'uses' => 'DiversosController@index']);
Route::get('/diversos/editar/{id}', ['as' => 'diversosEditar', 'uses' => 'DiversosController@editar']);


Route::get('/quimica/crear', ['as' => 'quimicaCrear', 'uses' => 'QuimicaController@crear']);
Route::get('/quimica/editar/{id}', ['as' => 'quimicaEditar', 'uses' => 'QuimicaController@editar']);

// Imprimir
Route::get('/analisis/imprimir/{analisis}/{id}', ['as' => 'analisisImprimir', 'uses' => 'AnalisisController@analisis']);

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
