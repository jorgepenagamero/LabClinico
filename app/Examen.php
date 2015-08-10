<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Examen extends Model {

	protected $table = 'examenes';
	protected $softDelete = true;

	public function valores() 
    {
        return $this->hasMany('App\ExamenValor','examen_id');
    }

}
