<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDiversosTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('diversos', function(Blueprint $table)
		{
			$table->increments('id');

			$table->string('muestra',250)->nullable();;
			$table->string('examen',250)->nullable();;
			$table->text('resultado')->nullable();;

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
		Schema::drop('diversos');
	}

}
