<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

use App\PacienteAnalisis;
use App\Paciente;
use App\Orina;
use App\Hemograma;
use App\Heces;

class AnalisisController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


    public function analisis($analisis, $id){

    	$pacienteAnalisis = PacienteAnalisis::where('analisis', $analisis)->where('analisis_id', $id)->first();
    	$paciente = Paciente::find($pacienteAnalisis->paciente_id);
    	$paciente->medico = $pacienteAnalisis->medico;

        switch ($analisis) {
            case 'orina':
                $data = Orina::find($id);
                break;
            
            case 'hemograma':
                $data = Hemograma::find($id);
                break;

            case 'heces':
                $data = Heces::find($id);
                break;
        }
 		$pdf = \PDF::loadView('pdf.' . $analisis, compact('analisis', 'data', 'paciente'))->setPaper([0,0,612,396]);
 		return $pdf->stream();

    }

}