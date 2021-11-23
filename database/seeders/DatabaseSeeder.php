<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

//        $this->call(LaratrustSeeder::class);

        $this->call(UserSeeder::class);
        $this->command->info("default users completed");

        (new \App\Models\User())->find(1)->attachRole('root');
        (new \App\Models\User())->find(2)->attachRole('admin');
        (new \App\Models\User())->find(3)->attachRole('user');
//        (new \App\Models\User())->find(4)->attachRole('user');
        $this->command->info("Users attached to Laratust-roles completed");


        // extra users (not attached to a role
        (new \App\Models\User())->factory(50)->create();
        //php artisan migrate:refresh --seed
        $this->command->info("Creating customer-users completed");

        $this->call(BeerSeeder::class);
        $this->command->info("Seeding beer-tables");
    }
}
