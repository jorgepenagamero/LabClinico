<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Carbon\Carbon;

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

}