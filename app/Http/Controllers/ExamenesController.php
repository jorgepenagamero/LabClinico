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
		$examenes = Examen::orderBy('id','desc')->paginate(10);
		return view('dashboard.views.examenes.index', compact('examenes'));
	}

	public function crear(){
		$examen = new Examen;
		$examen->accion = "Crear";

		return view('dashboard.views.examenes.crear', compact('examen'));
	}

	public function guardar(Request $request)
	{
		// dd($request);
		if ($request->id == "") {
			$examen = new Examen;
		}else{
			$examen = Examen::find($request->id);
			$this->elimarValores($examen->id);
		}
		
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

		$valores = $examen->valores;

		return view('dashboard.views.examenes.crear', compact('examen', 'valores'));
	}

	private function elimarValores($id){

		$valores = ExamenValor::where('examen_id', $id)->get();

		foreach ($valores as $valor) {
			$valor->delete();
		}
	}

}