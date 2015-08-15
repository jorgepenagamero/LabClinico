<?php

use Illuminate\Database\Seeder;
use App\ExamenValor;
use Faker\Factory as Faker;
     
class ExamenValoresTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 60 ; $i++)
        {
            $examen = new ExamenValor;

            $examen->examen_id = $faker->numberBetween(1,30);
            $examen->valor     = $faker->company;
            
            $examen->save();
           	
        }
    }
     
}