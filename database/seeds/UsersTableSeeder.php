<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder {
    
    public function run(){

        User::create(array(
            'email'     => 'lab@clinica.com',
            'name'  => 'Laboratorio Clinico Central',
            'password' => Hash::make('central'),
            'avatar'  => 'one.jpg'
        ));

    }

}