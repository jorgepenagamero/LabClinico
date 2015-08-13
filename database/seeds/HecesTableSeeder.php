<?php

use Illuminate\Database\Seeder;
use App\Heces;
use Faker\Factory as Faker;
     
class HecesTableSeeder extends Seeder {
     
    public function run()
    {
        $faker = Faker::create();

        for($i = 1; $i <= 30 ; $i++)
        {
            $heces = new Heces;

            $heces->color = "Lorem ipsum dolor sit amet.";
            $heces->consistencia = "Lorem ipsum dolor sit amet.";
            $heces->sangre = "Lorem ipsum dolor sit amet.";
            $heces->restos = "Lorem ipsum dolor sit amet.";
            $heces->entrocitos = "Lorem ipsum dolor sit amet.";
            $heces->levadura = "Lorem ipsum dolor sit amet.";
            $heces->mucus = "Lorem ipsum dolor sit amet.";
            $heces->leucositos = "Lorem ipsum dolor sit amet.";
            $heces->flora = "Lorem ipsum dolor sit amet.";
            $heces->protozoarios = "Lorem ipsum dolor sit amet.";
            $heces->quistes = "Lorem ipsum dolor sit amet.";
            $heces->larvas = "Lorem ipsum dolor sit amet.";
            $heces->metazueros = "Lorem ipsum dolor sit amet.";

            $heces->observaciones = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!";
            
            $heces->save();
           	
        }
    }
     
}