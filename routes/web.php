<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
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

    Route::get('/howto/{view?}', function (Request $request) {
        if(empty($request->view)){ $request->view = 'main';}
        return view('howto.'.$request->view);
    });


Route::get('/', function () {
    return view('welcome');
});

    /////////////////////////////////////////////////////////////
    Route::get('/postman_testing', function () {
        //download POSTMAN workspace to test (json)
        $file=storage_path()."/app/public/download/sanctumApi 2021.postman_collection.json";
        $headers=array('Content-Type: application/json',);
        return Response::download($file, 'sanctumApi 2021.postman_collection.json', $headers);
    });
    /////////////////////////////////////////////////////////////
    //    renewing the databasestructure and it's dummy-data  //
    Route::get('/refreshdata', function () {

        $tables = \DB::select('SHOW TABLES');
        $tables = array_map('current',$tables);
        DB::statement('SET FOREIGN_KEY_CHECKS=0;'); // remove relations-check
        foreach($tables as $table){
            Schema::dropIfExists($table);       // drop table
        }

        $path = public_path('refresh_data_sanctumApi.sql'); // file in root in public-folder
        $sql = file_get_contents($path);
        DB::unprepared($sql);

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');  // replace relations-check

        return redirect('/')->with(['warning'=> true, 'message'=>'database refreshed; dropped, new tables, new dummydata']);
    });

    /////////////////////////////////////////////////////////////


