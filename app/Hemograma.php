<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Hemograma extends Model {
    use SoftDeletes;
	protected $softDelete = true;

}
