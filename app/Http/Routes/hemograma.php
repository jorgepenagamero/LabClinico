<?php

// Crear
Route::get('/hemograma/crear/{id}', ['as' => 'hemogramaCrear', 'uses' => 'HemogramaController@crear']);
Route::post('/hemograma/crear', ['as' => 'hemogramaCrear', 'uses' => 'HemogramaController@guardar']);

// Editar
Route::get('/hemograma/editar/{id}', ['as' => 'hemogramaEditar', 'uses' => 'HemogramaController@Editar']);
Route::post('/hemograma/editar/{id}', ['as' => 'hemogramaEditar', 'uses' => 'HemogramaController@guardar']);


Route::get('/analisis/imprimir/{analisis}/{id}', ['as' => 'analisisImprimir', 'uses' => 'AnalisisController@analisis']);