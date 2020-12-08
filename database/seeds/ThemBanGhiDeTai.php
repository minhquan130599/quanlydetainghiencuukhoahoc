<?php

use Illuminate\Database\Seeder;

class ThemBanGhiDeTai extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=17; $i<=200; $i++) {
	        $id = DB::table('tbldetai')->insertGetId([
	        	'fk_smaloainam' => rand(1,6),
	        	'pk_imatt' => 1,
	        	'pk_imattcu' => null,
	        	'pk_smaldt' => sprintf('LDT_0%s', rand(1,9)),
	        	'pk_smalh' => rand(1, 4),
	        	'pk_imadv' => null,
	        	'pk_imalv' => rand(1, 11),
	        	'smasodetai' => '',
	        	'stendt' => sprintf('Đề tài NCKH số %s', $i),
	        	'dngaybd' => strtotime('01-03-2016'),
	        	'dngaykt' => strtotime('01-03-2017'.'+27 days'),
	        	'dngayrahan' => '',
	        	'sdvphoihop' => '',
	        	'smuctieu' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae, omnis ducimus amet, porro iusto libero sed eaque suscipit eum a adipisci enim, voluptas culpa qui eveniet earum voluptatem quod unde.',
	        	'ssanpham' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, totam quod, odit, dicta ex, ab nostrum voluptatum ipsa nam sunt quisquam impedit. Repudiandae blanditiis minus accusantium, animi consectetur velit ullam.',
	        	'scapthiet' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad minus facere corrupti sapiente soluta, a esse delectus culpa distinctio doloremque maiores omnis eos aliquam, explicabo magni dolores, assumenda repellendus!',
	        	'sphuongphap' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, non voluptate repudiandae ea praesentium natus nisi labore recusandae eius quibusdam, minima culpa quis ullam sequi minus consequuntur eaque dignissimos, temporibus.',
	        	'sketcaudetai' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis nostrum sint, earum atque laboriosam! Sequi omnis iure eos enim, pariatur molestiae, deserunt ex reiciendis fugiat alias atque ipsum sapiente ab.',
	        	'sdonggopchinh' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo tenetur modi dolore dolor deleniti est maiores quo, debitis facere laborum, numquam obcaecati, voluptas, provident! Magnam necessitatibus eos et non unde.',
	        	'sketluan' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, facere, quia officiis et omnis beatae. Unde quia expedita beatae quod fuga modi saepe, est ex pariatur aspernatur illum dolorem reiciendis!',
	        	'sphamvi' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad a assumenda eius quis tempore cum minima at. Sequi, dolore modi natus consequatur unde minima et eius accusantium, maxime, quibusdam repellendus.',
	        	'sdcungdung' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
	        	'fcptong' => rand(5000000, 20000000),
	        	'snoidungdaicuong' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur at impedit deleniti rerum iste pariatur, culpa odio minus, dolor tempora eum voluptatem, veritatis est cum quod explicabo! In, odit, fugiat!'
	        ]);

	        DB::table('tblthamgiadetai')->insert([
	        	'pk_imadt' => $id,
	        	'pk_smacanbo' => sprintf('CB_%2d', $i),
	        	'pk_imavt' => 3,
	        	'snguoidangkyho' => 'Nguyễn Lê Thạch'
	        ]);
	    }
    }
}
