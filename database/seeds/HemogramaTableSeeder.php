<?php

use Illuminate\Database\Seeder;
use App\Hemograma;
use Faker\Factory as Faker;
     
class HemogramaTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $hemograma = new Hemograma;

            $hemograma->globulos = $faker->numberBetween(1,5);
            $hemograma->hematocritos = $faker->numberBetween(1,5);
            $hemograma->hemoglobina = $faker->numberBetween(1,5);
            $hemograma->volumen = $faker->numberBetween(1,5);
            $hemograma->concentracion = $faker->numberBetween(1,5);
            $hemograma->globular = $faker->numberBetween(1,5);
            $hemograma->blancos = $faker->numberBetween(1,5);
            $hemograma->basofitos = $faker->numberBetween(1,5);
            $hemograma->eosinofilos = $faker->numberBetween(1,5);
            $hemograma->neutrofilos = $faker->numberBetween(1,5);
            $hemograma->liniocitos = $faker->numberBetween(1,5);
            $hemograma->monocitos = $faker->numberBetween(1,5);
            $hemograma->plaquetas = $faker->numberBetween(1,5);
            $hemograma->observaciones = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!";
            
            $hemograma->save();
           	
        }
    }
     
}