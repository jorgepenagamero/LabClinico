<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\PacienteAnalisis;

class Paciente extends Model {
    use SoftDeletes;
	protected $softDelete = true;

	public function numAnalisis($id){

		return PacienteAnalisis::Where('paciente_id',$id)->count();

	}

}
