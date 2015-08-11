<?php

// Crear
Route::get('/orina/crear/{id}', ['as' => 'orinaCrear', 'uses' => 'OrinaController@crear']);
Route::post('/orina/crear', ['as' => 'orinaCrear', 'uses' => 'OrinaController@guardar']);

// Editar
Route::get('/orina/editar/{id}', ['as' => 'orinaEditar', 'uses' => 'OrinaController@editar']);
Route::post('/orina/editar/{id}', ['as' => 'orinaEditar', 'uses' => 'OrinaController@guardar']);
