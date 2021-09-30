<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', [
    'as' => 'show', 'uses' => 'RateController@show'
]);
 
$router->get('currencies', [
    'as' => 'currencies', 'uses' => 'RateController@currencies'
]);

$router->get('currencies/{id}', [
    'as' => 'currenciesId', 'uses' => 'RateController@currenciesId'
]);