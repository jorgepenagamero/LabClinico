<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Validator;

class Suscripcion extends Model {
    
    use SoftDeletes;
    protected $table = 'suscripciones';
    protected $softDelete = true;
    protected $fillable = [(
        'correo'
    )];

    public function guardar($datos) 
    {
        if($this->validar($datos)) 
        {
            $this->fill($datos);
            $this->save();
            return true;
        }
        return false;
    }

    public function validar($datos) 
    {
        $reglas = [
            'correo' => 'email|required|max:100|unique:suscripciones'
        ];        
        
        $validador = Validator::make($datos, $reglas);
        
        if ($validador->passes()) 
            return true;
        
        $this->errores = $validador->errors();
        return false;
    }

}
