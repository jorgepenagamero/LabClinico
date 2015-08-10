<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePacienteAnalisisTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('paciente_analisis', function(Blueprint $table)
		{
			$table->increments('id');

			$table->integer('paciente_id');
			$table->string('medico');
			$table->enum('analisis', array('Orina','Heces','Hemograma','Diversos','Quimica'));
			$table->integer('analisis_id');

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
		Schema::drop('paciente_analisis');
	}

}
