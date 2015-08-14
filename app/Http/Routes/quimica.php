<?php

// Crear
Route::get('/quimica/crear/{id}', ['as' => 'quimicaCrear', 'uses' => 'QuimicaController@crear']);
Route::post('/quimica/crear', ['as' => 'quimicaCrear', 'uses' => 'QuimicaController@guardar']);

// Editar
Route::get('/quimica/editar/{id}', ['as' => 'quimicaEditar', 'uses' => 'QuimicaController@Editar']);
Route::post('/quimica/editar/{id}', ['as' => 'quimicaEditar', 'uses' => 'QuimicaController@guardar']);
