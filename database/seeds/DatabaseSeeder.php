<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();

		// $this->call('UsersTableSeeder');
		
		// $this->call('ExamenesTableSeeder');
		// $this->call('ExamenValoresTableSeeder');
		// $this->call('PacientesTableSeeder');
		// $this->call('PacienteAnalisisTableSeeder');
		// $this->call('HemogramaTableSeeder');
		$this->call('OrinaTableSeeder');
	}

}
