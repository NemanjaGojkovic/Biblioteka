<?php

use App\Http\Controllers\API\AuthenticationController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookAuthorController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\CategoryBookController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CountryAuthorController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\PublisherBookController;
use App\Http\Controllers\PublisherController;
use App\Http\Controllers\UserBookController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/users', [UserController::class, 'index']);
Route::get('/users/{id}', [UserController::class, 'show']);
Route::resource('authors', AuthorController::class);
Route::resource('books', BookController::class);
Route::resource('categories', CategoryController::class);
Route::resource('publishers', PublisherController::class);
Route::resource('countries', CountryController::class);
Route::resource('users.books', UserBookController::class);
Route::resource('authors.books', BookAuthorController::class);
Route::resource('categories.books', CategoryBookController::class);
Route::resource('publishers.books', PublisherBookController::class);
Route::resource('countries.authors', CountryAuthorController::class);
Route::post('/register', [AuthenticationController::class, 'register']);
Route::post('/login', [AuthenticationController::class, 'login']);

