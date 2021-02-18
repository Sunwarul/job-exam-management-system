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
            $table->timestamp('date_of_birth');
            $table->string('photo')->nullable();
            $table->string('signature')->nullable();
            $table->string('phone');
            $table->string('email');
            $table->string('password');
            $table->string('gender');
            $table->string('freedom_fighter_quota')->default('no')->nullable();
            $table->string('employment_status')->default('no')->nullable();
            $table->string('ethnic_minority_status')->default('no')->nullable();
            $table->string('marital_status')->default('no')->nullable();
            $table->string('disability_status')->default('no')->nullable();
            $table->string('nationality')->default('bangladeshi');
            $table->string('national_id_card_number');

            $table->string('height')->default('0')->nullable();
            $table->string('weight')->default('0')->nullable();
            $table->string('chest')->default('0')->nullable();

            // Educational Information

            // 1. SSC
            $table->string('ssc_exam_type');
            $table->string('ssc_board');
            $table->string('ssc_roll_number');
            $table->string('ssc_result');
            $table->string('ssc_group');
            $table->string('ssc_passing_year');

            // 2. HSC
            $table->string('hsc_exam_type');
            $table->string('hsc_board');
            $table->string('hsc_roll_number');
            $table->string('hsc_result');
            $table->string('hsc_group');
            $table->string('hsc_passing_year');


            // Graduation
            $table->string('graduation_examination_title');
            $table->string('graduation_subject');
            $table->string('graduation_institute_name');
            $table->string('graduation_result');
            $table->string('graduation_passing_year');
            $table->string('graduation_course_duration')->default('4')->nullable();


            // Masters
            $table->string('masters_examination_title')->nullable();
            $table->string('masters_subject')->nullable();
            $table->string('masters_institute_name')->nullable();
            $table->string('masters_result')->nullable();
            $table->string('masters_passing_year')->nullable();
            $table->string('masters_course_duration')->nullable();


            $table->text('permanent_address')->nullable();
            $table->text('present_address')->nullable();


            // Address 1
            // $table->string('permanent_village');
            // $table->string('permanent_district');
            // $table->string('permanent_upazilla');
            // $table->string('permanent_post_office');
            // $table->string('permanent_postal_code');

            // Address 2
            // $table->string('present_village')->nullable();
            // $table->string('present_district')->nullable();
            // $table->string('present_upazilla')->nullable();
            // $table->string('present_post_office')->nullable();
            // $table->string('present_postal_code')->nullable();

            // Manual payments
            $table->string('payment_method')->nullable();
            $table->string('payment_account_number')->nullable();
            $table->string('payment_amount')->nullable();
            $table->string('transaction_number')->nullable();
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
