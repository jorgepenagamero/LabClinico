<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Quimica extends Model {
    use SoftDeletes;
	protected $softDelete = true;

    public function resultados(){
        return $this->hasMany('App\QuimicaResultado', 'quimica_id');
    }

}
