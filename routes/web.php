<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'ShopController@index');
Route::get('/shop', 'ShopController@shop');
Route::get('/shoplist', 'ShopController@shoplist');
Route::get('/login', 'ShopController@login');
Route::get('/order', 'ShopController@order');
Route::post('/loginisok','ShopController@loginisok');
Route::get('/outlogin','ShopController@outlogin');
//加入购物车之后返回界面是get请求会出错，需要改成any
Route::any('/sreach','ShopController@sreach');
Route::get('/addcart','ShopController@addcart');
Route::post('/settlement','ShopController@settlement');
Route::get('/delorder','ShopController@delorder');
