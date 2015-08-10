<?php

use Illuminate\Database\Seeder;
use App\Orina;
use Faker\Factory as Faker;
     
class OrinaTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $orina = new Orina;

            $orina->color = $faker->numberBetween(1,3);
            $orina->aspecto = $faker->numberBetween(1,3);
            $orina->dencidad = $faker->numberBetween(1,3);
            $orina->esterasa = $faker->numberBetween(1,3);
            $orina->nitritos = $faker->numberBetween(1,3);
            $orina->reaccion = $faker->numberBetween(1,3);
            $orina->proteinas = $faker->numberBetween(1,3);
            $orina->glucosa = $faker->numberBetween(1,3);
            $orina->cetonicos = $faker->numberBetween(1,3);
            $orina->urobitmogeno = $faker->numberBetween(1,3);
            $orina->bilirubina = $faker->numberBetween(1,3);
            $orina->sangre = $faker->numberBetween(1,3);
            $orina->bacterias = $faker->numberBetween(1,3);
            $orina->leucocitos = "Lorem ipsum dolor sit amet.";
            $orina->hematies = "Lorem ipsum dolor sit amet.";
            $orina->cilindros = "Lorem ipsum dolor sit amet.";
            $orina->cristales = "Lorem ipsum dolor sit amet.";
            $orina->celulas = $faker->numberBetween(1,3);
            $orina->otros = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!";
            
            $orina->save();
           	
        }
    }
     
}