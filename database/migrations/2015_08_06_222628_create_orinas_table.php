<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrinasTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('orinas', function(Blueprint $table)
		{
			$table->increments('id');

			$table->enum('color',array('Blanco','Negro','Rojo'));
			$table->enum('aspecto',array('Blanco','Negro','Rojo'));
			$table->enum('dencidad',array('Blanco','Negro','Rojo'));
			$table->enum('esterasa',array('Blanco','Negro','Rojo'));
			$table->enum('nitritos',array('Blanco','Negro','Rojo'));
			$table->enum('reaccion',array('Blanco','Negro','Rojo'));
			$table->enum('proteinas',array('Blanco','Negro','Rojo'));
			$table->enum('glucosa',array('Blanco','Negro','Rojo'));
			$table->enum('cetonicos',array('Blanco','Negro','Rojo'));

			$table->enum('urobitmogeno',array('Blanco','Negro','Rojo'));
			$table->enum('bilirubina',array('Blanco','Negro','Rojo'));
			$table->enum('sangre',array('Blanco','Negro','Rojo'));
			$table->enum('bacterias',array('Blanco','Negro','Rojo'));
			$table->string('leucocitos',150);
			$table->string('hematies',150);
			$table->string('cilindros',150);
			$table->string('cristales',150);
			$table->enum('celulas',array('Blanco','Negro','Rojo'));
			
			$table->text('otros');

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
		Schema::drop('orinas');
	}

}
