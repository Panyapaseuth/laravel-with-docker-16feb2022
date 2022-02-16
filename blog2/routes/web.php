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

/*Route::get('/', function () {
    return view('welcome');
});*/


//Comment For another people cannot access in Backend If you want go to Backend just Uncomment
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('/', 'HomeController@index');

Route::get('locale/{locale}', function ($locale){
    Session::put('locale', $locale);
    return redirect()->back();
});


Route::get('{slug}', 'PagesController@show');

Route::get('post/all', 'BlogController@index');

Route::get('post/{slug}', 'BlogController@show');

Route::get('product/all', 'ProductsController@index');

Route::get('product/{slug}', 'ProductsController@show');

Route::get('content/{slug}', 'HomeController@show');


/*Route::get('/post/posts', function () {
    return view('page.post');
});*/

/*Route::get('/post/show', function () {
    return view('page.postshow');
});*/

/*Route::get('/front/test', function () {
    return view('page.test');
});*/
