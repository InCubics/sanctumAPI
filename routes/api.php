<?php

    use Illuminate\Support\Facades\Route;
    use App\Http\Controllers\oAuthController;
    use App\Http\Controllers\SelectController;
    use App\Http\Controllers\CrudController;

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

    Route::post('/signin', [oAuthController::class, 'signin']);

    Route::group(['middleware' => ['cors','json.response']], function ()
    {      // 'scheme' => 'https'
                Route::get('/{model}/{id}',                     [SelectController::class, 'findRecord']);
                Route::get('/{model}',                          [SelectController::class, 'allRecords']);

        Route::group(['middleware' => ['auth:sanctum']], function () {
                Route::post('/{model}',                         [CrudController::class, 'createRecord']);
                Route::put('/{model}/{id}/{with?}/{rel_id?}',   [CrudController::class, 'updateRecord']);
                Route::delete('/{model}/{id}/{with?}/{rel_id?}',[CrudController::class, 'deleteRecord']);
        });
    });

    // API-landingpage
    Route::any('/', function () {
        return response()->json(
            ['this_api-server'  => 'Laravel 8.0 Sanctum API-server',
            'read_me'       => 'Demo server het beer-order db and users. API server with dynamic Model-calls, usage of FormRequest for validation and basic CRUD-functionality. API-login with seeded users provides an Sanctum-tokens. There is no Roll-Based-Access_Control (RBAC) implemented. Responses in json and contain data, meta-data and the request-data. On requests find and all an collection with related Models can be created.',
            'see'           => 'http://sanctumapi.incubics.net',
            'request' => null,
            'meta' => ['success'    => true,
                'status'     => 200,
                'message'=> 'landingpage API-server']
        ])
            ->withHeaders(array_merge(['Content-Type' => 'application/json'],
                ['response_state' => 200,
                    'creator' => "incubics.net (c) ".date('Y').'-'.(date('Y')+1)]));
    });


    // last route, if all other routes fail
    Route::fallback(function () {
        return response()->json(['error' => 'Not Found!'], 404);
    });
