<?php

use Illuminate\Database\Seeder;
use App\PacienteAnalisis;
use Faker\Factory as Faker;
     
class PacienteAnalisisTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $pacienteAnalisis = new PacienteAnalisis;

            $pacienteAnalisis->paciente_id  = $faker->numberBetween(1,30);
            $pacienteAnalisis->medico       = $faker->name;
            $pacienteAnalisis->analisis     = $faker->numberBetween(1,5);
            $pacienteAnalisis->analisis_id  = $faker->numberBetween(1,15);

            $pacienteAnalisis->save();
           	
        }
    }
     
}