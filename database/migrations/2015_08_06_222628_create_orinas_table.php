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

			$table->string('color',100);
			$table->string('aspecto',100);
			$table->string('dencidad',100);
			$table->string('esterasa',100);
			$table->string('nitritos',100);
			$table->string('reaccion',100);
			$table->string('proteinas',100);
			$table->string('glucosa',100);
			$table->string('cetonicos',100);

			$table->string('urobitmogeno',100);
			$table->string('bilirubina',100);
			$table->string('sangre',100);
			$table->string('bacterias',100);
			$table->string('leucocitos',100);
			$table->string('hematies',100);
			$table->string('cilindros',100);
			$table->string('cristales',100);
			$table->string('celulas',100);
			
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
