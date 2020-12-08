<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ThemBangTblDeTaiGiahan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tbldetai_giahan', function($table) {
            $table->string('noidung', 200);
            $table->text('lydo');
            $table->string('filedinhkem', 100);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbldetai_giahan', function ($table) {
            $table->dropColumn(['noidung']);
            $table->dropColumn(['lydo']);
            $table->dropColumn(['filedinhkem']);
        });
    }
}
