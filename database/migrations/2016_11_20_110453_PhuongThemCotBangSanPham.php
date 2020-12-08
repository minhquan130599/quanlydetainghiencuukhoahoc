<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PhuongThemCotBangSanPham extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tblsanpham', function($table) {
            $table->integer('pk_imadt')->nullable();
            $table->foreign('pk_imadt')
                  ->references('pk_imadt')->on('tbldetai')
                  ->onUpdate('cascade')
                  ->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tblsanpham', function($table) {
            $table->dropColumn(['pk_imadt']);
        });
    }
}
