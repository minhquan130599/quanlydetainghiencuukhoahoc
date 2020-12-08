<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ThemIndexCanBo extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tblcanbo', function($table) {
            $table->index(['shodem', 'semail', 'sdienthoai']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tblcanbo', function($table) {
            $table->dropIndex(['shodem', 'semail', 'sdienthoai']);
        });
    }
}
