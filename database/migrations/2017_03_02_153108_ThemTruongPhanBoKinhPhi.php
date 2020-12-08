<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ThemTruongPhanBoKinhPhi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tblphanbokinhphi', function($table) {
            $table->string('sotienchu', 255);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tblphanbokinhphi', function ($table) {
            $table->dropColumn(['sotienchu']);
        });
    }
}
