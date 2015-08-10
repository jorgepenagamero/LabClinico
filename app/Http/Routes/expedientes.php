<?php

Route::get('/expedientes', ['as' => 'expedientes', 'uses' => 'ExpedientesController@index']);

Route::get('/paciente/crear/{analisis}', ['as' => 'crearPaciente', 'uses' => 'ExpedientesController@crear']);
Route::post('/paciente/crear/{analisis}', ['as' => 'crearPaciente', 'uses' => 'ExpedientesController@guardar']);
Route::get('/paciente/editar/{id}', ['as' => 'editarPaciente', 'uses' => 'ExpedientesController@editar']);
Route::post('/paciente/editar/{id}', ['as' => 'editarPaciente', 'uses' => 'ExpedientesController@guardar']);

Route::get('/paciente/analisis/{id}', ['as' => 'pacienteAnalisis', 'uses' => 'ExpedientesController@pacienteAnalisis']);