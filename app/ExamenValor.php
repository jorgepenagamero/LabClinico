<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ExamenValor extends Model {

	protected $table = "examen_valores";
	protected $softDelete = true;
	
	public function examen()
    {
        return $this->belongsTo('App\Examen','examen_id');
    }

}
