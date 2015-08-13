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

            $orina->color = "Lorem ipsum dolor sit amet.";
            $orina->aspecto = "Lorem ipsum dolor sit amet.";
            $orina->dencidad = "Lorem ipsum dolor sit amet.";
            $orina->esterasa = "Lorem ipsum dolor sit amet.";
            $orina->nitritos = "Lorem ipsum dolor sit amet.";
            $orina->reaccion = "Lorem ipsum dolor sit amet.";
            $orina->proteinas = "Lorem ipsum dolor sit amet.";
            $orina->glucosa = "Lorem ipsum dolor sit amet.";
            $orina->cetonicos = "Lorem ipsum dolor sit amet.";
            $orina->urobitmogeno = "Lorem ipsum dolor sit amet.";
            $orina->bilirubina = "Lorem ipsum dolor sit amet.";
            $orina->sangre = "Lorem ipsum dolor sit amet.";
            $orina->bacterias = "Lorem ipsum dolor sit amet.";
            $orina->leucocitos = "Lorem ipsum dolor sit amet.";
            $orina->hematies = "Lorem ipsum dolor sit amet.";
            $orina->cilindros = "Lorem ipsum dolor sit amet.";
            $orina->cristales = "Lorem ipsum dolor sit amet.";
            $orina->celulas = "Lorem ipsum dolor sit amet.";
            $orina->otros = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!";
            
            $orina->save();
           	
        }
    }
     
}