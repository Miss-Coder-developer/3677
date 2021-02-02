<?php

use App\Http\Controllers\Post\PostCommentController;
use App\Http\Controllers\Post\PostController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Api\User\FollowersController;
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
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'auth'], function () {
    Route::post('register', [AuthController::class, 'signup']);
    Route::post('login', [AuthController::class, 'login']);

    Route::group(['middleware' => 'auth:api'], function () {
        Route::get('logout', [AuthController::class, 'logout']);
        Route::get('user', [AuthController::class, 'user']);
    });

//    Route::group(['namespace'=>'User'], function (){
//      Route::post('/follower', [FollowersController::class, 'store']);
//      Route::delete('/follower/{id}', [FollowersController::class, 'destroy']);
//    });

    Route::namespace('Post')->group(function () {
        Route::post('/post', [PostController::class, 'store']);
        Route::delete('/post/{id}', [PostController::class, 'destroy']);
        Route::get('/post/{id}', [PostController::class, 'show']);
        Route::put('/post/edit/{id}', [PostController::class, 'update']);
        Route::post('/postlike', [PostController::class,'likepost']);
        Route::post('/comment/{id}', [PostCommentController::class, 'store']);
        Route::post('/comment/{post_id}/reply/{parent_id}', [PostCommentController::class, 'reply']);
        Route::post('/upload', [PostController::class, 'store'])->name('upload-file');
    });

//    Route::namespace('Comment')->group(function (){
//        Route::post('/comment/{id}', [PostCommentController::class, 'store']);
//    });
});

    
