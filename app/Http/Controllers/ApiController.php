<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Carbon\Carbon;

use App\Examen;
use App\ExamenValor;

class ApiController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{
		// return view('dashboard.views.otros.perfil');
	}

	public function perfil()
	{

		$date = Carbon::now();
		$date->setTimezone('UTC -06:00');
		return view('dashboard.views.otros.perfil', compact('date'));
	}

	public function guardar()
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

}