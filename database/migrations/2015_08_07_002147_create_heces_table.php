<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHecesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('heces', function(Blueprint $table)
		{
			$table->increments('id');

			$table->enum('color',array('Blanco','Negro','Rojo'));
			$table->enum('consistencia',array('Blanco','Negro','Rojo'));
			$table->enum('sangre',array('+','++','+++'));
			$table->enum('restos',array('Blanco','Negro','Rojo'));
			$table->enum('entrocitos',array('Blanco','Negro','Rojo'));
			$table->enum('levadura',array('Blanco','Negro','Rojo'));
			$table->enum('mucus',array('+','++','+++'));
			$table->enum('leucositos',array('Blanco','Negro','Rojo'));
			$table->enum('flora',array('Blanco','Negro','Rojo'));
			$table->enum('protozoarios',array('Blanco','Negro','Rojo'));
			$table->enum('quistes',array('Blanco','Negro','Rojo'));
			$table->enum('larvas',array('Blanco','Negro','Rojo'));
			$table->enum('metazueros',array('Blanco','Negro','Rojo'));

			$table->text('observaciones');

			$table->softDeletes();
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('heces');
	}

}
