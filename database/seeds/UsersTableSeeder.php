<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder {
    
    public function run(){

        User::create(array(
            'email'     => 'admin@admin.com',
            'name'  => 'Laboratorio Clinico Central',
            'password' => Hash::make('admin'),
            'avatar'  => 'one.jpg'
        ));

    }

}