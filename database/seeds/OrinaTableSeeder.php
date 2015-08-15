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

            $orina->color = "Lorem ipsum.";
            $orina->aspecto = "Lorem ipsum.";
            $orina->dencidad = "Lorem ipsum.";
            $orina->esterasa = "Lorem ipsum.";
            $orina->nitritos = "Lorem ipsum.";
            $orina->reaccion = "Lorem ipsum.";
            $orina->proteinas = "Lorem ipsum.";
            $orina->glucosa = "Lorem ipsum.";
            $orina->cetonicos = "Lorem ipsum.";
            $orina->urobitmogeno = "Lorem ipsum.";
            $orina->bilirubina = "Lorem ipsum.";
            $orina->sangre = "Lorem ipsum.";
            $orina->bacterias = "Lorem ipsum.";
            $orina->leucocitos = "Lorem ipsum.";
            $orina->hematies = "Lorem ipsum.";
            $orina->cilindros = "Lorem ipsum.";
            $orina->cristales = "Lorem ipsum.";
            $orina->celulas = "Lorem ipsum.";
            $orina->otros = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!";
            
            $orina->save();
           	
        }
    }
     
}