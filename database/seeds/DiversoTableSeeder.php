<?php

use Illuminate\Database\Seeder;
use App\Diverso;
use Faker\Factory as Faker;
     
class DiversoTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $diverso = new Diverso;

            $diverso->muestra = "Lorem ipsum dolor sit.";
            $diverso->examen = "Lorem ipsum.";
            $diverso->resultado = "Lorem ipsum.";
            
            $diverso->save();
            
        }
    }
     
}