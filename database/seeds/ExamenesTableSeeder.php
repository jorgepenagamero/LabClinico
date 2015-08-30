<?php

use Illuminate\Database\Seeder;
use App\Examen;
use App\ExamenValor;
use Faker\Factory as Faker;
     
class ExamenesTableSeeder extends Seeder {

    public function run()
    {
        $ex =  array(
            "Glucosa",
            "Glucosa pos pandrial",
            "Triglicéridos",
            "Colesterol",
            "Colesterol HDL",
            "Colesterol LDL",
            "Creatinina",
            "Acido Úrico",
            "Nitrógeno Ureico",
            "Urea",
            "TGP / ALT",
            "TGO / AST",
            "Proteínas totales",
            "Albumina",
            "Globulina",
            "Relación  A/G",
            "Bilirrubina total",
            "Bilirrubina directa",
            "Creatinina fosfoquinasa",
            "Fosfatasa alcalina",
            "Fosfatasa alcalina ( Barry )",
            "Fosfatasa acida",
            "Proteína en orina 24/h",
            "Sodio en sangre",
            "Calcio en sangre",
            "Potasio en sangre",
            "Fosforo en sangre",
            "Cloro en sangre",
            "Hemoglobina glicosilada",
            "Potasio en sangre – barry",
            "Proteína en orina 24/h",
            "Magnesio",
            "Tolerancia a la glucosa  5/h ",
            "Amilasa",
            "Lipasa",
            "PSA",
            "Tiempo de protrombina  TP",
            "T.de tromboplastina parcial TTp",
            "Tiempo de trombina TT",
            "Velocidad de eritrocediment",
            "Tiempo de sangramiento",
            "Tiempo de coagulación",
            "T3, ( Triyodotironina )",
            "T4, ( Tiroxina )",
            "TSH",
            "Estreptolicina o ( ASO )- ultra)",
            "Estreptolicina o ( ASO ) barry",
            "Alfa feto proteína ( AFP )",
            "( En embarazó )",
            "Proteína c reactiva (PCR) ultra",
            "Proteína C reactiva (PCR) Barry",
            "Factor reumatoideo",
            "Microalbumina en orina",
            "Anticuerpos para dengue IgM",
            "Anticuerpos para dengue IgG",
            "Antígenos febriles",
            "Ca 19 – 9 Elisa ( Cuantitativa )",
            "Toxoplasmosis IgG ( barry )",
            "Toxoplasmosis IgM (barry )",
            "Gama glutamil transferasa (GG)",
            "Factor reumatoideo ( FR )",
            "Prolactina",
            "Insulina en ayunas",
            "Anticoagulante lupico ",
            "Cardiolipina  IgG",
            "Cardiolipina  IgM",
            "Fibrinogeno",
            "Concentracion de crea",
            "Depuracion de crea 24 /h",
            "IgE, Total",
            "Ac. Antinucleares latex  ( ANA )",
            "Ac. Anticitrolinados IgG",
            "Helicobacter pylori IgM, IgG.",
            "Cortisol,  AM",
            "Microalbumina ( Orina )",
            "Hierro  serico",
            "Alfafetoproteinas",
            "Gonadotropina corionica cuant.",
            "Peptido Natriuretico ( BNP )",
            "Hb.Electroforesis"
           );


        for ($i=0; $i < count($ex); $i++) { 
            $examen = new Examen;
            $examen->nombre     = $ex[$i];
            $examen->save();
        }

    }
     
}