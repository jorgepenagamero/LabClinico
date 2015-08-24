<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
// use Carbon\Carbon;

use App\Examen;
use App\ExamenValor;
use App\Paciente;

class ApiController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		// return view('dashboard.views.otros.perfil');
	}


	public function info()
	{
		return view('dashboard.views.otros.info');
	}

	public function buscarExamen($txt){

		$examens = Examen::where('nombre', 'LIKE', $txt.'%')->orderBy('nombre','asc')->take(10)->get();

		return (new Response($examens,200))->header('Content-Type', 'application/json');
	}

	public function buscarExamenValor($id){

		$valores = ExamenValor::where('examen_id', $id)->get();

		return (new Response($valores,200))->header('Content-Type', 'application/json');
	}

	public function buscarPaciente(Request $request){

		$txt = $request->get('txt');
		// return $txt;
		$pacientes = Paciente::where('nombre', 'LIKE', '%'.$txt.'%')->orderBy('nombre','asc')->get();

		return view('dashboard.views.expedientes.index', compact('pacientes'));
	}
	public function buscarExamenL(Request $request){

		$txt = $request->get('txt');
		
		$examenes = Examen::where('nombre', 'LIKE', '%'.$txt.'%')->orderBy('nombre','asc')->get();

		return view('dashboard.views.examenes.index', compact('examenes'));
	}

}