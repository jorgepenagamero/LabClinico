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

			$table->double('globulos', 7, 4);
			$table->double('hematocritos', 7, 4);
			$table->double('hemoglobina', 7, 4);
			$table->double('volumen', 7, 4);
			$table->double('concentracion', 7, 4);
			
			$table->double('globular', 7, 4);
			$table->double('blancos', 7, 4);
			$table->double('basofitos', 7, 4);
			$table->double('eosinofilos', 7, 4);
			$table->double('neutrofilos', 7, 4);
			$table->double('liniocitos', 7, 4);
			$table->double('monocitos', 7, 4);
			$table->double('plaquetas', 7, 4);

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
