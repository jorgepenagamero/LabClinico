<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

use App\Paciente;
use App\PacienteAnalisis;
use App\Hemograma;

class HemogramaController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		return view('dashboard.views.hemograma.index');
	}

	public function crear($paciente_id){
		$paciente = Paciente::find($paciente_id);
		$hemograma = new Hemograma;
		$pacienteAnalisis = new PacienteAnalisis;
		$hemograma->accion = "Crear";
		$hemograma->medico = "";

		return view('dashboard.views.hemograma.crear', compact('hemograma', 'paciente', 'pacienteAnalisis'));
	}

	public function guardar(Request $request){

		if ($request->id == "") {
			$hemograma = new Hemograma;
			$pacienteAnalisis = new PacienteAnalisis;
		}else{
			$hemograma = Hemograma::find($request->id);
			$pacienteAnalisis = PacienteAnalisis::where('analisis', 'Hemograma')->where('analisis_id', $request->id)->first();
		}

		$this->validate($request, ['paciente_id' => 'required|numeric', 'medico' => 'max:150', 
									'tipo_analisis' => 'required|max:150']);

		$hemograma->globulos = $request->globulos;
		$hemograma->hematocritos = $request->hematocritos;
		$hemograma->hemoglobina = $request->hemoglobina;
		$hemograma->volumen = $request->volumen;
		$hemograma->concentracion = $request->concentracion;
		$hemograma->globular = $request->globular;
		$hemograma->blancos = $request->blancos;
		$hemograma->basofitos = $request->basofitos;
		$hemograma->eosinofilos = $request->eosinofilos;
		$hemograma->neutrofilos = $request->neutrofilos;
		$hemograma->liniocitos = $request->liniocitos;
		$hemograma->monocitos = $request->monocitos;
		$hemograma->plaquetas = $request->plaquetas;
		$hemograma->observaciones = $request->observaciones;
		$hemograma->save();

		$pacienteAnalisis->paciente_id = $request->paciente_id;
		$pacienteAnalisis->medico = $request->medico;
		$pacienteAnalisis->analisis = $request->tipo_analisis;
		$pacienteAnalisis->analisis_id = $hemograma->id;
		$pacienteAnalisis->save();

		return redirect()->route('hemogramaEditar', $pacienteAnalisis->id);
	}

	public function editar($analisis_id){

		$pacienteAnalisis = PacienteAnalisis::find($analisis_id);

		$paciente = Paciente::find($pacienteAnalisis->paciente_id);

		$hemograma = Hemograma::find($pacienteAnalisis->analisis_id);
		$hemograma->accion = "Editar";
		$hemograma->imprimir = true;
		$hemograma->medico = $pacienteAnalisis->medico;

		return view('dashboard.views.hemograma.crear', compact('hemograma', 'paciente', 'pacienteAnalisis'));
	}

}