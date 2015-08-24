<?php namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use App\PacienteAnalisis;

class DashboardController extends Controller {


	public function __construct()
	{
		$this->middleware('auth');
	}


	public function index()
	{

		$pacienteAnalisis = PacienteAnalisis::take(7)->orderBy('id','desc')->get();;
		return view('dashboard.views.index', compact('pacienteAnalisis'));
	}

}