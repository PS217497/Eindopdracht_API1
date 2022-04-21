<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class drivers extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('constructors')->insert([
            'constructor_id' => '1',
            'Name' => 'Sergio Pérez',
            'Code' => 'PER',
            'Number' => '11',
            'Nationality' => 'Mexican',
            'Url' => 'http://en.wikipedia.org/wiki/Sergio_P%C3%A9rez',
        ]);
        DB::table('constructors')->insert([
            'constructor_id' => '1',
            'Name' => 'Max Verstappen',
            'Code' => 'VER',
            'Number' => '33',
            'Nationality' => 'Dutch',
            'Url' => 'http://en.wikipedia.org/wiki/Max_Verstappen',
        ]);
    }
}
