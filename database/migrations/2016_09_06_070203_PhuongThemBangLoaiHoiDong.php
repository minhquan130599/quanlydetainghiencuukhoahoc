<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PhuongThemBangLoaiHoiDong extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tblloaihoidong', function (Blueprint $table) {
            $table->increments('pk_imaloaihd');
            $table->string('stenloaihd', 60);
            $table->string('smota', 30);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tblloaihoidong');
    }
}
