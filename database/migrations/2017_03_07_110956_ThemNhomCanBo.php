<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ThemNhomCanBo extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tbl_manual', function($table) {
            $table->integer('pk_imanhomcb')->nullable();
            $table->foreign('pk_imanhomcb')->references('pk_imanhomcb')->on('tblnhomcb');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tbl_manual', function($table) {
            $table->dropColumn('pk_imanhomcb');
        });
    }
}
