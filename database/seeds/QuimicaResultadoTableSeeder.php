<?php

use Illuminate\Database\Seeder;
use App\QuimicaResultado;
use Faker\Factory as Faker;
     
class QuimicaResultadoTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $quimicaResultado = new QuimicaResultado;

            $quimicaResultado->resultado = "Lorem ipsum dolor sit.";
            $quimicaResultado->examen = "Lorem ipsum.";
            $quimicaResultado->valor = "Lorem ipsum.";
            $quimicaResultado->quimica_id = $faker->numberBetween(1,30);
            
            $quimicaResultado->save();
            
        }
    }
     
}