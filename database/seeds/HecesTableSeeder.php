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

            $heces->color = "Lorem ipsum.";
            $heces->consistencia = "Lorem ipsum.";
            $heces->sangre = "Lorem ipsum.";
            $heces->restos = "Lorem ipsum.";
            $heces->entrocitos = "Lorem ipsum.";
            $heces->levadura = "Lorem ipsum.";
            $heces->mucus = "Lorem ipsum.";
            $heces->leucositos = "Lorem ipsum.";
            $heces->flora = "Lorem ipsum.";
            $heces->protozoarios = "Lorem ipsum.";
            $heces->quistes = "Lorem ipsum.";
            $heces->larvas = "Lorem ipsum.";
            $heces->metazueros = "Lorem ipsum.";

            $heces->observaciones = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!";
            
            $heces->save();
           	
        }
    }
     
}