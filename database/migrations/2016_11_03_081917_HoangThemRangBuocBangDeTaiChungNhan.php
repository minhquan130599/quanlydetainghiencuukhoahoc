<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class HoangThemRangBuocBangDeTaiChungNhan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tbldetai_chungnhan', function($table) {
            $table->foreign('pk_imadt')
                  ->references('pk_imadt')
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
        Schema::table('tbldetai_chungnhan', function($table) {
            $table->dropForeign('pk_imadt');
        });
    }
}
