<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHemogramasTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('hemogramas', function(Blueprint $table)
		{
			$table->increments('id');

			$table->string('globulos', 100)->nullable();
			$table->string('hematocritos', 100)->nullable();
			$table->string('hemoglobina', 100)->nullable();
			$table->string('volumen', 100)->nullable();
			$table->string('concentracion', 100)->nullable();
			
			$table->string('globular', 100)->nullable();
			$table->string('blancos', 100)->nullable();
			$table->string('basofitos', 100)->nullable();
			$table->string('eosinofilos', 100)->nullable();
			$table->string('neutrofilos', 100)->nullable();
			$table->string('liniocitos', 100)->nullable();
			$table->string('monocitos', 100)->nullable();
			$table->string('plaquetas', 100)->nullable();

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
		Schema::drop('hemogramas');
	}

}
