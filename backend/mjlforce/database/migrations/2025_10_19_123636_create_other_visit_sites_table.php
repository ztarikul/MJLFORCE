<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('other_visit_sites', function (Blueprint $table) {
            $table->id();
            $table->string('site_name')->nullable();
            $table->string('address')->nullable();
            $table->string('post_code')->nullable();
            $table->foreignId('loc_division_id')->nullable()->constrained();//non sap
            $table->foreignId('loc_district_id')->nullable()->constrained(); //non sap
            $table->foreignId('loc_upazila_id')->nullable()->constrained(); //non sap
            $table->foreignId('loc_post_office_id')->nullable()->constrained();//non sap
            $table->foreignId('employee_id')->nullable()->constrained();
            // status = [1=>Pending, 2=>Processing, 3=>Rejected, 4=>Approved]
            $table->integer('status')->default(1);
            $table->text('remarks')->nullable();
            $table->boolean('activeStatus')->default(true);
            $table->integer('created_by')->nullable();
            $table->string('hostname')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('other_visit_sites');
    }
};
