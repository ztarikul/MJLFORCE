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
        Schema::create('other_visits', function (Blueprint $table) {
            $table->id();
            $table->string('site_name')->nullable();
            $table->string('address')->nullable();
            $table->string('post_code')->nullable();
            $table->foreignId('visit_purpose_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->text('other_purpose')->nullable();
            $table->foreignId('loc_division_id')->nullable()->constrained();//non sap
            $table->foreignId('loc_district_id')->nullable()->constrained(); //non sap
            $table->foreignId('loc_upazila_id')->nullable()->constrained(); //non sap
            $table->foreignId('loc_post_office_id')->nullable()->constrained();//non sap
            
            $table->string('image')->nullable();
            $table->decimal('lat', 9, 6)->nullable();
            $table->decimal('long', 9, 6)->nullable();
            $table->foreignId('employee_id')->nullable()->constrained();
            // status = [1=>Pending, 2=>Processing, 3=>Rejected, 4=>Approved]
            $table->integer('status')->default(1);
            $table->text('remarks')->nullable();
            $table->boolean('activeStatus')->default(1);
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
        Schema::dropIfExists('other_visits');
    }
};
