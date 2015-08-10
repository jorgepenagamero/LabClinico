<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Examen;
use App\ExamenValor;

class ExamenesController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		$examenes = Examen::orderBy('id','desc')->get();
		return view('dashboard.views.examenes.index', compact('examenes'));
	}

	public function crear(){
		$examen = new Examen;
		$examen->accion = "Crear";

		return view('dashboard.views.examenes.crear', compact('examen'));
	}

	public function guardar(Request $request)
	{
		$examen = new Examen;
		
		$this->validate($request, ['nombre' => 'required|max:100']);
    	$examen->nombre = $request->nombre;
    	$examen->save();

		foreach ($request->valores as $valor) {
			$examenValor = new ExamenValor;

	    	$examenValor->examen_id = $examen->id;
	    	$examenValor->valor = $valor;
	    	$examenValor->save();
		}

    	return  Redirect('examenes');
	}

	public function editar($id){

		$examen = Examen::find($id);
		$examen->accion = "Editar";

		return view('dashboard.views.examenes.crear', compact('examen'));
	}

}