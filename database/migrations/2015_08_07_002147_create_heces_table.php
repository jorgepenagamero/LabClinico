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

			$table->string('color', 100);
			$table->string('consistencia', 100);
			$table->string('sangre', 100);
			$table->string('restos', 100);
			$table->string('entrocitos', 100);
			$table->string('levadura', 100);
			$table->string('mucus', 100);
			$table->string('leucositos', 100);
			$table->string('flora', 100);
			$table->string('protozoarios', 100);
			$table->string('quistes', 100);
			$table->string('larvas', 100);
			$table->string('metazueros', 100);

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
