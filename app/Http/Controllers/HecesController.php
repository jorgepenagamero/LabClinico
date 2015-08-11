<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

use App\Heces;
use App\Paciente;
use App\PacienteAnalisis;

class HecesController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		return view('dashboard.views.heces.index');
	}

	public function crear($paciente_id){
		$paciente = Paciente::find($paciente_id);
		$heces = new Heces;
		$pacienteAnalisis = new PacienteAnalisis;
		$heces->accion = "Crear";
		$heces->medico = "";

		return view('dashboard.views.heces.crear', compact('heces', 'paciente', 'pacienteAnalisis'));
	}

	public function guardar(Request $request){

		if ($request->id == "") {
			$heces = new Heces;
			$pacienteAnalisis = new PacienteAnalisis;
		}else{
			$heces = Heces::find($request->id);
			$pacienteAnalisis = PacienteAnalisis::where('analisis', 'Heces')->where('analisis_id', $request->id)->first();
		}

		$this->validate($request, ['paciente_id' => 'required|numeric', 'medico' => 'required|max:150', 
									'tipo_analisis' => 'required|max:150']);

		$heces->color = $request->color;
		$heces->consistencia = $request->consistencia;
		$heces->sangre = $request->sangre;
		$heces->restos = $request->restos;
		$heces->entrocitos = $request->entrocitos;
		$heces->levadura = $request->levadura;
		$heces->mucus = $request->mucus;
		$heces->leucositos = $request->leucositos;
		$heces->flora = $request->flora;
		$heces->protozoarios = $request->protozoarios;
		$heces->quistes = $request->quistes;
		$heces->larvas = $request->larvas;
		$heces->metazueros = $request->metazueros;
		$heces->observaciones = $request->observaciones;
		$heces->save();

		$pacienteAnalisis->paciente_id = $request->paciente_id;
		$pacienteAnalisis->medico = $request->medico;
		$pacienteAnalisis->analisis = $request->tipo_analisis;
		$pacienteAnalisis->analisis_id = $heces->id;
		$pacienteAnalisis->save();

		return redirect()->route('hecesEditar', $pacienteAnalisis->id);
	}

	public function editar($analisis_id){

		$pacienteAnalisis = PacienteAnalisis::find($analisis_id);

		$paciente = Paciente::find($pacienteAnalisis->paciente_id);

		$heces = Heces::find($pacienteAnalisis->analisis_id);
		$heces->accion = "Editar";
		$heces->imprimir = true;
		$heces->medico = $pacienteAnalisis->medico;

		return view('dashboard.views.heces.crear', compact('heces', 'paciente', 'pacienteAnalisis'));
	}


}