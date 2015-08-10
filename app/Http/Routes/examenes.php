<?php

// Listar
Route::get('/examenes', ['as' => 'examenes', 'uses' => 'ExamenesController@index']);

// Crear
Route::get('/examenes/crear', ['as' => 'crearExamen', 'uses' => 'ExamenesController@crear']);
Route::post('/examenes/crear', ['as' => 'crearExamen', 'uses' => 'ExamenesController@guardar']);

// Editar
Route::get('/examenes/editar/{id}', ['as' => 'editarExamen', 'uses' => 'ExamenesController@editar']);
Route::post('/examenes/editar/{id}', ['as' => 'editarExamen', 'uses' => 'ExamenesController@guardar']);