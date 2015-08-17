<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class QuimicaResultado extends Model {

    protected $SoftDeletes = true;

    // public function evalor(){
    //     return $this->belongsTo('App\ExamenValor', 'valor_examen_id');
    // }

}
