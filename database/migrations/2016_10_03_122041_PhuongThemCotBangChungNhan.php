<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PhuongThemCotBangChungNhan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tbldetai_chungnhan', function($table) {
            $table->string('filebanmem', 255);
            $table->string('bquyenbaocao', 1)->default(0);
            $table->string('bsendmail', 1)->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbldetai_chungnhan', function ($table) {
            $table->dropColumn(['filebanmem', 'bquyenbaocao', 'bsendmail']);
        });
    }
}
