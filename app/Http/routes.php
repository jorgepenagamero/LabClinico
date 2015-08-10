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


Route::get('/diversos/crear', ['as' => 'diversosCrear', 'uses' => 'DiversosController@index']);
Route::get('/diversos/editar/{id}', ['as' => 'diversosEditar', 'uses' => 'DiversosController@editar']);

// Hemograma
	require(__DIR__ . '/Routes/hemograma.php');


Route::get('/heces/crear', ['as' => 'hecesCrear', 'uses' => 'HecesController@crear']);
Route::get('/heces/editar/{id}', ['as' => 'hecesEditar', 'uses' => 'HecesController@Editar']);


Route::get('/quimica/crear', ['as' => 'quimicaCrear', 'uses' => 'QuimicaController@crear']);
Route::get('/quimica/editar/{id}', ['as' => 'quimicaEditar', 'uses' => 'QuimicaController@editar']);


Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
