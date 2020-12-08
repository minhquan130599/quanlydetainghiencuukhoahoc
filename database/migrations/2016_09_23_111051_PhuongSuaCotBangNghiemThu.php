<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PhuongSuaCotBangNghiemThu extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tblntdetaicoso', function($table) {
            $table->renameColumn('dantbo', 'bsendmail');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tblntdetaicoso', function($table) {
            $table->renameColumn('bsendmail', 'dantbo');
        });
    }
}
