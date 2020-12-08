<?php

use Illuminate\Database\Seeder;

class ThemBanGhiThamgiaDeTai extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=17; $i<= 100; $i++) {
        	DB::table('tblthamgiadetai')->insert([
        		'pk_imadt' => $i,
        		'pk_smacanbo' => sprintf('CB_%s', $i),
        		'pk_imavt' => 3
        	]);
        }
    }
}
