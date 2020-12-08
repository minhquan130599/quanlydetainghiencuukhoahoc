<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PhuongThemBangGiaHan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbldetai_giahan', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('fk_imadt');
            $table->string('dngayrahan', 20);
            $table->string('xacnhan', 1);
            $table->string('bsendmail', 1);
            $table->timestamps();
            $table->foreign('fk_imadt')->references('pk_imadt')
                                      ->on('tbldetai')
                                      ->onDelete('restrict')
                                      ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbldetai_giahan');
    }
}
