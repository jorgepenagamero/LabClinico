<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

use App\Paciente;
use App\PacienteAnalisis;
use App\Diverso;

class DiversosController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		return view('dashboard.views.diversos.crear');
	}

    public function crear($paciente_id){

        $paciente = Paciente::find($paciente_id);
        $diverso = new Diverso;
        $pacienteAnalisis = new PacienteAnalisis;
        $diverso->accion = "Crear";
        $diverso->medico = "";

        return view('dashboard.views.diversos.crear', compact('diverso', 'paciente', 'pacienteAnalisis'));
    }

     public function guardar(Request $request){

        // dd($request);

        if ($request->id == "") {
            $diverso = new Diverso;
            $pacienteAnalisis = new PacienteAnalisis;
        }else{
            $diverso = Diverso::find($request->id);
            $pacienteAnalisis = PacienteAnalisis::where('analisis', 'Diversos')->where('analisis_id', $request->id)->first();
        }

        $this->validate($request, ['paciente_id' => 'required|numeric', 'medico' => 'required|max:150', 
                                    'tipo_analisis' => 'required|max:150']);

        // Guardar examen
        $diverso->muestra = $request->muestra;
        $diverso->examen = $request->examen;
        $diverso->resultado = $request->resultado;
        $diverso->save();

        // Guardar analisis.
        $pacienteAnalisis->paciente_id = $request->paciente_id;
        $pacienteAnalisis->medico = $request->medico;
        $pacienteAnalisis->analisis = $request->tipo_analisis;
        $pacienteAnalisis->analisis_id = $diverso->id;
        $pacienteAnalisis->save();


        return redirect()->route('diversosEditar', $pacienteAnalisis->id);
    }

    public function editar($analisis_id){
        
        $pacienteAnalisis = PacienteAnalisis::find($analisis_id);
        $paciente = Paciente::find($pacienteAnalisis->paciente_id);

        $diverso = Diverso::find($pacienteAnalisis->analisis_id);
        $diverso->accion = "Editar";
        $diverso->imprimir = true;
        $diverso->medico = $pacienteAnalisis->medico;

        return view('dashboard.views.diversos.crear', compact('diverso', 'paciente', 'pacienteAnalisis'));
    }


}