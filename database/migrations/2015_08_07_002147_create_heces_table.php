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

			$table->string('color', 100)->nullable();;
			$table->string('consistencia', 100)->nullable();;
			$table->string('sangre', 100)->nullable();;
			$table->string('restos', 100)->nullable();;
			$table->string('entrocitos', 100)->nullable();;
			$table->string('levadura', 100)->nullable();;
			$table->string('mucus', 100)->nullable();;
			$table->string('leucositos', 100)->nullable();;
			$table->string('flora', 100)->nullable();;
			$table->string('protozoarios', 100)->nullable();;
			$table->string('quistes', 100)->nullable();;
			$table->string('larvas', 100)->nullable();;
			$table->string('metazueros', 100)->nullable();;

			$table->text('observaciones')->nullable();;

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
