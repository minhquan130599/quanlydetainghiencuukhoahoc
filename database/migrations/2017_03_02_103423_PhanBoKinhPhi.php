<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class PhanBoKinhPhi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tblphanbokinhphi', function($table) {
            $table->string('fk_smacanbo');
            $table->index('fk_smacanbo', 'fk_smacanbo');
            //$table->foreign('fk_smacanbo')->references('tblcanbo')->on('pk_smacanbo')->onDelete('restrict')->onUpdate('cascade');
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
            $table->dropIndex(['fk_smacanbo']);
            $table->dropColumn(['fk_smacanbo']);
        });

    }
}
