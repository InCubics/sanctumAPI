<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BeerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->command->info('Beerdatabase tables seeding');
        DB::unprepared(file_get_contents(storage_path('app/public/beer_sql.sql')));
        // this defined in config/filesystem.php. sql-file placed in: storage/app/public
        //        DB::unprepared(file_get_contents('database/seeders/beer_sql.sql'));   // when file is not public accessable
        DB::unprepared('SET AUTOCOMMIT = 1;');
        $this->command->info('All tables Beer-database seeded bysql-file!');
    }
}
