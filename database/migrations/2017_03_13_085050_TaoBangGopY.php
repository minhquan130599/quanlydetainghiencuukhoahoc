<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class TaoBangGopY extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_feedback', function (Blueprint $table) {
            $table->increments('feedback_id');
            $table->string('email', 255);
            $table->string('phone_number', 12);
            $table->text('content');
            $table->timestamps();
            //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_feedback');
    }
}
