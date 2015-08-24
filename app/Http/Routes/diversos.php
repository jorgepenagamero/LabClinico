<?php

// Crear
Route::get('/diversos/crear/{id}', ['as' => 'diversoCrear', 'uses' => 'DiversosController@crear']);
Route::post('/diversos/crear', ['as' => 'diversoCrear', 'uses' => 'DiversosController@guardar']);

// Editar
Route::get('/diversos/editar/{id}', ['as' => 'diversosEditar', 'uses' => 'DiversosController@editar']);
Route::post('/diversos/editar/{id}', ['as' => 'diversosEditar', 'uses' => 'DiversosController@guardar']);
