<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

use App\Orina;
use App\Paciente;
use App\PacienteAnalisis;

class OrinaController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		// return view('dashboard.views.orina.index');
	}

	public function crear($paciente_id){
		$paciente = Paciente::find($paciente_id);
		$orina = new Orina;
		$pacienteAnalisis = new PacienteAnalisis;
		$orina->accion = "Crear";
		$orina->medico = "";

		return view('dashboard.views.orina.crear', compact('orina', 'paciente', 'pacienteAnalisis'));
	}
	
	public function guardar(Request $request){

		if ($request->id == "") {
			$orina = new Orina;
			$pacienteAnalisis = new PacienteAnalisis;
		}else{
			$orina = Orina::find($request->id);
			$pacienteAnalisis = PacienteAnalisis::where('analisis', 'Orina')->where('analisis_id', $request->id)->first();
		}

		$this->validate($request, ['paciente_id' => 'required|numeric', 'medico' => 'required|max:150', 
									'tipo_analisis' => 'required|max:150']);

		$orina->color		= $request->color;
		$orina->aspecto		= $request->aspecto;
		$orina->dencidad	= $request->dencidad;
		$orina->esterasa	= $request->esterasa;
		$orina->nitritos	= $request->nitritos;
		$orina->reaccion	= $request->reaccion;
		$orina->proteinas	= $request->proteinas;
		$orina->glucosa		= $request->glucosa;
		$orina->cetonicos	= $request->cetonicos;
		$orina->urobitmogeno	= $request->urobitmogeno;
		$orina->bilirubina	= $request->bilirubina;
		$orina->sangre		= $request->sangre;
		$orina->bacterias	= $request->bacterias;
		$orina->leucocitos	= $request->leucocitos;
		$orina->hematies	= $request->hematies;
		$orina->cilindros	= $request->cilindros;
		$orina->cristales	= $request->cristales;
		$orina->celulas		= $request->celulas;
		$orina->otros		= $request->otros;
		$orina->save();

		$pacienteAnalisis->paciente_id = $request->paciente_id;
		$pacienteAnalisis->medico = $request->medico;
		$pacienteAnalisis->analisis = $request->tipo_analisis;
		$pacienteAnalisis->analisis_id = $orina->id;
		$pacienteAnalisis->save();

		return redirect()->route('orinaEditar', $pacienteAnalisis->id);
	}

	public function editar($analisis_id){

		$pacienteAnalisis = PacienteAnalisis::find($analisis_id);

		$paciente = Paciente::find($pacienteAnalisis->paciente_id);

		$orina = Orina::find($pacienteAnalisis->analisis_id);
		$orina->accion = "Editar";
		$orina->imprimir = true;
		$orina->medico = $pacienteAnalisis->medico;

		return view('dashboard.views.orina.crear', compact('orina', 'paciente', 'pacienteAnalisis'));
	}

}