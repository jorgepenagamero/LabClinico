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

// Quimica
    require(__DIR__ . '/Routes/quimica.php');

// Diversos
    require(__DIR__ . '/Routes/diversos.php');

// Imprimir
Route::get('/analisis/imprimir/{analisis}/{id}', ['as' => 'analisisImprimir', 'uses' => 'AnalisisController@analisis']);

// Info
Route::get('/informacion', ['as' => 'info', 'uses' => 'ApiController@info']);

// Buscar
Route::get('examen/buscar/{txt}', 'ApiController@buscarExamen');
Route::get('examen/buscar/valor/{id}', 'ApiController@buscarExamenValor');
Route::get('paciente/buscar/',  'ApiController@buscarPaciente');
Route::get('examen/buscar/',  'ApiController@buscarExamenL');

// Autenticacion
Route::controllers(['auth' => 'Auth\AuthController', 'password' => 'Auth\PasswordController', ]);
