<?php

namespace Database\Seeders;

use Faker\Generator as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        DB::table('users')->insert([                // add a single user, prefer to use seeder-file
            'name'     => 'RootMe',
            'email'    => 'root@app.com',
            'password' => bcrypt('password'),
            'remember_token' => Str::random(10),
            'email_verified_at' => $faker->dateTimeBetween('-30 days', '-25 days'),
            'created_at' => $faker->dateTimeBetween('-30 days', '-15 days'),
            'updated_at' => $faker->dateTimeBetween('-15 days', '-1 days'),
        ]);

        DB::table('users')->insert([                // add a single user, prefer to use seeder-file
            'name'     => 'AdminMe',
            'email'    => 'admin@app.com',
            'password' => bcrypt('password'),
            'remember_token' => Str::random(10),
            'email_verified_at' => date('Y-m-d H:i:s'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
//        DB::table('users')->insert([                // add a single user, prefer to use seeder-file
//            'name'     => 'EmployeeMe',
//            'email'    => 'employee@app.com',
//            'password' => bcrypt('password'),
//            'remember_token' => Str::random(10),
//            'email_verified_at' => $faker->dateTimeBetween('-30 days', '-25 days'),
//            'created_at' => $faker->dateTimeBetween('-30 days', '-15 days'),
//            'updated_at' => $faker->dateTimeBetween('-15 days', '-1 days'),
//        ]);

        DB::table('users')->insert([                // add a single user, prefer to use seeder-file
            'name'     => 'UserMe',
            'email'    => 'user@app.com',
            'password' => bcrypt('password'),
            'remember_token' => Str::random(10),
            'email_verified_at' => $faker->dateTimeBetween('-30 days', '-25 days'),
            'created_at' => $faker->dateTimeBetween('-30 days', '-15 days'),
            'updated_at' => $faker->dateTimeBetween('-15 days', '-1 days'),
        ]);

        DB::table('users')->insert([                // add a single user, prefer to use seeder-file
            'name'     => 'VisitorMe',
            'email'    => 'visitor@app.com',
            'password' => bcrypt('password'),
            'remember_token' => Str::random(10),
            'email_verified_at' => $faker->dateTimeBetween('-30 days', '-25 days'),
            'created_at' => $faker->dateTimeBetween('-30 days', '-15 days'),
            'updated_at' => $faker->dateTimeBetween('-15 days', '-1 days'),
        ]);
    }
}
