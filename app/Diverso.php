<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Diverso extends Model {
    use SoftDeletes;
	protected $softDelete = true;

}
