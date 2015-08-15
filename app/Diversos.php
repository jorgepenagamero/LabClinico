<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Diversos extends Model {
    use SoftDeletes;
	protected $softDelete = true;

}
