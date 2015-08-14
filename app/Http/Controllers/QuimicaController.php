<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

use App\Paciente;
use App\pacienteAnalisis;
use App\Quimica;

class QuimicaController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		return view('dashboard.views.quimica.index');
	}

    public function crear($paciente_id){

        $paciente = Paciente::find($paciente_id);
        $quimica = new Quimica;
        $pacienteAnalisis = new PacienteAnalisis;
        $quimica->accion = "Crear";
        $quimica->medico = "";

        return view('dashboard.views.quimica.crear', compact('quimica', 'paciente', 'pacienteAnalisis'));
    }

    public function guardar(Request $request){

        return $request;
        
        if ($request->id == "") {
            $quimica = new Quimica;
            $pacienteAnalisis = new PacienteAnalisis;
        }else{
            $quimica = Quimica::find($request->id);
            $pacienteAnalisis = PacienteAnalisis::where('analisis', 'quimica')->where('analisis_id', $request->id)->first();
        }

        $this->validate($request, ['paciente_id' => 'required|numeric', 'medico' => 'required|max:150', 
                                    'tipo_analisis' => 'required|max:150']);

        $quimica->color = $request->color;
        $quimica->consistencia = $request->consistencia;
        $quimica->sangre = $request->sangre;
        $quimica->restos = $request->restos;
        $quimica->entrocitos = $request->entrocitos;
        $quimica->levadura = $request->levadura;
        $quimica->mucus = $request->mucus;
        $quimica->leucositos = $request->leucositos;
        $quimica->flora = $request->flora;
        $quimica->protozoarios = $request->protozoarios;
        $quimica->quistes = $request->quistes;
        $quimica->larvas = $request->larvas;
        $quimica->metazueros = $request->metazueros;
        $quimica->observaciones = $request->observaciones;
        $quimica->save();

        $pacienteAnalisis->paciente_id = $request->paciente_id;
        $pacienteAnalisis->medico = $request->medico;
        $pacienteAnalisis->analisis = $request->tipo_analisis;
        $pacienteAnalisis->analisis_id = $quimica->id;
        $pacienteAnalisis->save();

        return redirect()->route('quimicaEditar', $pacienteAnalisis->id);
    }

    public function editar($analisis_id){

        $pacienteAnalisis = PacienteAnalisis::find($analisis_id);

        $paciente = Paciente::find($pacienteAnalisis->paciente_id);

        $quimica = Quimica::find($pacienteAnalisis->analisis_id);
        $quimica->accion = "Editar";
        $quimica->imprimir = true;
        $quimica->medico = $pacienteAnalisis->medico;

        return view('dashboard.views.quimica.crear', compact('quimica', 'paciente', 'pacienteAnalisis'));
    }


}