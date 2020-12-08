<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class HoangTaobangTblThongbao extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tblThongbao', function (Blueprint $table) {
            $table->increments('pk_imatb');
            $table->string('stieude', 60);
            $table->longText('snoidung');
            $table->boolean('strangthai');
            $table->string('snguoinhan')->nullable();
            $table->foreign('snguoinhan')->references('pk_smacanbo')->on('tblcanbo');
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
        Schema::dropIfExists('tblThongbao');
    }
}
