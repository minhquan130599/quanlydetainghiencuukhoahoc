<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TaoKhoaNgoaiPhanBoKinhPhi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tblphanbokinhphi', function($table) {
            $table->foreign('fk_smacanbo')->references('pk_smacanbo')->on('tblcanbo')->onDelete('restrict')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tblphanbokinhphi', function($table) {
            $table->dropForeign(['fk_smacanbo']);
        });
    }
}
