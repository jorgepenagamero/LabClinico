<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Paciente;
use App\Orina;
use App\PacienteAnalisis;

class ExpedientesController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		$pacientes = Paciente::orderBy('id','desc')->get();
		return view('dashboard.views.expedientes.index', compact('pacientes'));
	}

	public function crear($analisis){

		$paciente = new Paciente;
		$pacienteAnalisis = new PacienteAnalisis;
		$paciente->accion = "Crear";
		$paciente->detalle_edad = "Años";

		return view('dashboard.views.expedientes.crear', compact('paciente','pacienteAnalisis', 'analisis'));
	}
	
	public function guardar(Request $request){

		$this->validate($request, ['nombre' => 'required|max:150', 'edad' => 'required|numeric']);
		
		// Paciente nuevo
		if ($request->analisis != "" && $request->analisis_id){
			// return "Editar desde analisis";
			$pacienteAnalisis = PacienteAnalisis::find($request->analisis_id);
			$paciente = Paciente::find($pacienteAnalisis->paciente_id);
		}
		// Editar paciente
		elseif (($request->analisis_id == "") && ($request->id != "")){
			// return "Editar paciente";
			$paciente = Paciente::find($request->id);
		}
		// Editar paciente desde Analisis
		else {
			$paciente = new Paciente;
		}

		$paciente->nombre 	= $request->nombre;
		$paciente->edad 	= $request->edad;
		$paciente->detalle_edad = $request->detalle_edad;
		$paciente->save();

		if ($request->analisis = "elejir") {
			$ruta = "/paciente/analisis/" . $paciente->id;
		}
		else{
			// Paciente nuevo
			if (($request->id == "") && ($request->analisis_id == "")){
				$ruta = strtolower($request->analisis)."/crear/".$paciente->id;
			}
			// Editar paciente
			elseif (($request->analisis_id == "") && ($request->id != "")){
				$ruta = 'expedientes';
			}
			// Editar paciente desde Analisis
			else{
				$ruta = strtolower($pacienteAnalisis->analisis)."/editar/".$request->analisis_id;
			}
		}

        return Redirect($ruta);

	}

	public function editar($tipo, $id){

		// Cuando se llaman de expedientes
		if ($tipo == "Expediente") {
			$paciente = Paciente::find($id);
			$pacienteAnalisis = new PacienteAnalisis;
			$analisis = $tipo;
		}
		// Cuando se llama de un analisis
		else{
			$pacienteAnalisis = PacienteAnalisis::find($id);
			$paciente = Paciente::find($pacienteAnalisis->paciente_id);
			$analisis = $pacienteAnalisis->analisis;
		}

		$paciente->accion = "Editar";

		return view('dashboard.views.expedientes.crear', compact('paciente', 'pacienteAnalisis', 'analisis'));
	}

	public function pacienteAnalisis($id){

		$paciente = Paciente::find($id);
		$pacienteAnalisis = PacienteAnalisis::where('paciente_id', $id)->orderBy('id','desc')->get();

		return view('dashboard.views.expedientes.analisis', compact('pacienteAnalisis', 'paciente'));
	}

}