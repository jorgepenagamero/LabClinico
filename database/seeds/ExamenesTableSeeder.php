<?php

use Illuminate\Database\Seeder;
use App\Examen;
use Faker\Factory as Faker;
     
class ExamenesTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $examen = new Examen;

            $examen->nombre     = $faker->company;
            
            $examen->save();
           	
        }
    }
     
}