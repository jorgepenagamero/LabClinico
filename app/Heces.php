<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Heces extends Model {
    use SoftDeletes;
	protected $softDelete = true;

}
