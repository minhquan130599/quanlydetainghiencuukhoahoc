<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PhuongSuaCauTrucBangDeTai extends Migration
{
    /**
     * Cột đơn vị phối hợp được trưng dụng, đổi thành cột email
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tbldetai', function($table) {
            $table->renameColumn('sdvphoihop', 'bsendmail');
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
            $table->renameColumn('bsendmail', 'sdvphoihop');
        });
    }
}
