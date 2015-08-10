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

		return view('dashboard.views.expedientes.crear', compact('paciente','pacienteAnalisis', 'analisis'));
	}
	
	public function guardar(Request $request){
		if ($request->id == "") {
			$paciente = new Paciente;
			$ruta = strtolower($request->analisis)."/Crear/";
			// return $ruta;
		}else{
			$pacienteAnalisis = PacienteAnalisis::find($request->id);
			$paciente = Paciente::find($request->id);
			$ruta = strtolower($pacienteAnalisis->analisis)."/editar/".$request->id;
			// return $ruta;
		}

		$this->validate($request, ['nombre' => 'required|max:150', 'edad' => 'required|numeric']);

		$paciente->nombre 	= $request->nombre;
		$paciente->edad 	= $request->edad;
		$paciente->detalle_edad = $request->detalle_edad;
		$paciente->save();

                 
        // return redirect()->route($ruta);

        return Redirect($ruta);

	}

	public function editar($id){

		$pacienteAnalisis = PacienteAnalisis::find($id);

		$paciente = Paciente::find($pacienteAnalisis->paciente_id);
		$analisis = $pacienteAnalisis->analisis;
		$paciente->accion = "Editar";

		return view('dashboard.views.expedientes.crear', compact('paciente', 'pacienteAnalisis', 'analisis'));
	}

	public function pacienteAnalisis($id){

		$paciente = Paciente::find($id);
		$pacienteAnalisis = PacienteAnalisis::where('paciente_id', $id)->orderBy('id','desc')->get();

		return view('dashboard.views.expedientes.analisis', compact('pacienteAnalisis', 'paciente'));
	}

}