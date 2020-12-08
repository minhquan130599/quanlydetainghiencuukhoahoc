<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PhuongThemThuocTinhBangDeTai extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tbldetai', function($table) {
            $table->unique('stendt');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbldetai', function($table) {
            $table->dropUnique('tbldetai_stendt_unique');
        });
    }
}
