<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuimicaResultadosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('quimica_resultados', function(Blueprint $table)
		{
			$table->increments('id');

			$table->string('resultado', 150);
			$table->integer('valor_examen_id');
			$table->integer('quimica_id');

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
		Schema::drop('quimica_resultados');
	}

}
