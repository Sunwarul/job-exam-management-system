<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateApplicationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('applications', function (Blueprint $table) {

            $table->id();

            // Personal Information
            $table->string('name');
            $table->string('father_name');
            $table->string('mother_name');
            $table->timestamp('birthday');
            $table->string('photo');
            $table->string('signature');
            $table->string('phone');
            $table->string('email');
            $table->string('password');
            $table->string('gender');
            $table->string('freedom_fighter_quota');
            // DateTime
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
        Schema::dropIfExists('applications');
    }
}
