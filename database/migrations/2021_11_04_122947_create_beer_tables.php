<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBeerTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('beers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name', 40);
            $table->string('brewer', 40);
            $table->string('type', 40);
            $table->string('yeast', 40)->nullable();
            $table->decimal('perc', 4, 2)->nullable();
            $table->decimal('purchase_price', 8, 2)->nullable();
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::create('customers', function (Blueprint $table) {
            $table->bigIncrements('id')->unsigned();
            //$table->string('owner_id', 20)->unsigned()->nullable();
            $table->string('barname', 40);
            $table->string('address', 35)->nullable();
            $table->string('homenr', 8)->nullable();
            $table->string('zip', 20)->nullable();
            $table->string('city', 35);
            $table->string('phone', 17);
            $table->string('country', 20);
            $table->decimal('price_reduction', 5,2)->nullable();
            $table->string('bankcard', 34);
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::create('employees', function (Blueprint $table) {
            $table->bigIncrements('id')->unsigned();
            $table->string('firstname', 20);
            $table->string('lastname', 20);
            $table->string('prefix_name', 10)->nullable();
            $table->string('department', 30)->nullable();
            $table->string('employee_nr', 20)->nullable();
            $table->string('branche', 20);
            $table->string('titles', 10)->nullable();
            $table->string('salary_scale', 4)->nullable();
            $table->string('allowance', 11)->nullable();
            $table->string('salary', 11)->nullable();
            $table->string('function', 20)->nullable;
            $table->date('employee_since')->nullable();
            $table->date('birthday')->nullable();
            $table->string('address', 35)->nullable();
            $table->string('homenr', 5)->nullable();
            $table->string('zip', 20)->nullable();
            $table->string('city', 35);
            $table->string('province', 4)->nullable();
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id')->default(null)->nullable();    // !!  Blueprint-class does support composite primary keys, you just can't have one of those keys be auto incrementing. I usually do composite primary keys on pivot tables using Blueprint and it works fine

            $table->foreignId('customer_id')->references('id')->on('customers');
            //->onUpdate('cascade')->onDelete('cascade'); // ->onUpdate('cascade')

            $table->foreignId('employee_id')->references('id')->on('employees')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::create('order_beer', function (Blueprint $table) {
            //            $table->bigIncrements('id')->default(null)->nullable();    // !!  Blueprint-class does support composite primary keys, you just can't have one of those keys be auto incrementing. I usually do composite primary keys on pivot tables using Blueprint and it works fine

            $table->foreignId('order_id')->references('id')->on('orders')
                ->onUpdate('cascade')->onDelete('cascade'); // ->onUpdate('cascade')

            $table->foreignId('beer_id')->references('id')->on('beers')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->primary(['order_id', 'beer_id']);

            $table->decimal('amount', 8, 0);  // to aggregate, it must be an value, not a string!
            $table->decimal('price', 8,2); // to aggregate, it must be an value, not a string!
        });

        \DB::statement('ALTER TABLE `customers` AUTO_INCREMENT = 4;');
        \DB::statement('ALTER TABLE `employees` AUTO_INCREMENT = 29;');

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //       Eloquent::unguard();
        DB::statement('SET FOREIGN_KEY_CHECKS = 0');    // switch-off check on relations, to drop tables
        Schema::dropIfExists('beers');
        Schema::dropIfExists('orders');
        Schema::dropIfExists('order_beer');
        Schema::dropIfExists('customers');
        Schema::dropIfExists('employees');
        DB::statement('SET FOREIGN_KEY_CHECKS = 1'); // switch-on check on relations
    }
}
