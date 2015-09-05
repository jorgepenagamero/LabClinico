<?php

use Illuminate\Database\Seeder;
use App\Quimica;
use Faker\Factory as Faker;
     
class QuimicaTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $quimica = new Quimica;
            
            $quimica->save();
            
        }
    }
     
}