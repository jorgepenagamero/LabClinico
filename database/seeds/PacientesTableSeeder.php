<?php

use Illuminate\Database\Seeder;
use App\Paciente;
use Faker\Factory as Faker;
     
class PacientesTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $paciente = new Paciente;

            $paciente->nombre       = $faker->name;
            $paciente->edad         = $faker->numberBetween(1,50);
            $paciente->detalle_edad = "Años";
            
            $paciente->save();
           	
        }
    }
     
}