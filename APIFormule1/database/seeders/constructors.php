<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class constructors extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('constructors')->insert([
            'Name' => 'Red Bull',
            'Nationality' => 'Austrian',
            'Url' => 'http://en.wikipedia.org/wiki/Red_Bull_Racing',
        ]);
    }
}
