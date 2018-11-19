<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::get('crear-procesos','ProcesosController@crear');

Route::post('stored','ProcesosController@stored');

Route::get('ver-procesos','ProcesosController@listaProcesos');

Route::get('ver-procesos/{fecha}','ProcesosController@filtrarProcesos');

Route::get('ver-proceso/{id}','ProcesosController@verProceso');

Route::post('update','ProcesosController@update');