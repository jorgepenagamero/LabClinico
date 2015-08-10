<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class PacienteAnalisis extends Model {

	protected $table = 'paciente_analisis';
	protected $softDelete = true;

	public function paciente(){
		return $this->belongsTo('App\Paciente', 'paciente_id');
	}
}
