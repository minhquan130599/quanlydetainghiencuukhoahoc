<?php

use Illuminate\Database\Seeder;

class ThemBanGhiCanboSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    	$gioitinh = ['Nam', 'Nữ'];

    	$tlds = array("gmail.com", "hotmail.com", "yahoo.com", "yahoo.com.vn", "moet.edu.vn");



    	$dauso = ['090','096','091','093','097','094','0120','098','0123','0121','0163','0124','0122','0164','0125','0126','0165','0127','0128','0166','0129','0167','0168','0169'];


    	for($i=17; $i<217; $i++) {
    		$int= mt_rand(18000,504853200);
    		$randgioitinh = array_rand($gioitinh, 1);
    		$randtlds = array_rand($tlds, 1);
    		$randdauso = array_rand($dauso, 1);

	        DB::table('tblcanbo')->insert([
	        	'pk_smacanbo' => sprintf('CB_%s',$i),
	        	'stendn' => str_random(8),
	        	'smatkhau' => Hash::make(123456),
	        	'pk_imanhomcb' => 4,
	        	'pk_imadv' => rand(1, 13),
	        	'pk_imadantoc' => rand(24,77),
	        	'pk_imatongiao' => rand(1, 5),
	        	'pk_imahh' => 4,
	        	'pk_imahv' => rand(1,4),
	        	'sanh' => 'upload/avatar/user.jpg',
	        	'shodem' => sprintf('Cán bộ %s', $i),
	        	'sten' => sprintf('Cán bộ %s', $i),
	        	'sngaysinh' => $string = date("d/m/Y", $int),
	        	'sgioitinh' =>$gioitinh[$randgioitinh],
	        	'semail' => sprintf('canbo%s@%s',$i, $tlds[$randtlds]),
	        	'sdienthoai' => sprintf('%s%s', $dauso[$randdauso], rand(1111111, 9999999)),
	        	'sdiachi' => null,
	        	'shokhautt' => null,
	        	'squequan' => null,
	        ]);
	    }
    }
}
