<?php

// Crear
Route::get('/heces/crear/{id}', ['as' => 'hecesCrear', 'uses' => 'HecesController@crear']);
Route::post('/heces/crear', ['as' => 'hecesCrear', 'uses' => 'HecesController@guardar']);

// Editar
Route::get('/heces/editar/{id}', ['as' => 'hecesEditar', 'uses' => 'HecesController@Editar']);
Route::post('/heces/editar/{id}', ['as' => 'hecesEditar', 'uses' => 'HecesController@guardar']);