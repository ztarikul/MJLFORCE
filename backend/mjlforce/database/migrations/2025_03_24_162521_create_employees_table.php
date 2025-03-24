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
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->foreignId('user_id')->nullable()->constrained()->nullOnDelete();
            $table->string('emp_code')->nullable()->unique();
            $table->string('sap_code')->nullable()->unique();
            $table->string('image')->nullable()->unique();
            $table->string('mobile')->nullable()->unique();
            $table->string('email')->nullable()->unique();
            $table->string('address')->nullable()->unique();
            $table->string('doj')->nullable()->unique();
            $table->string('nkn_code')->nullable()->unique();
            $table->foreignId('designation_id')->constrained();
            $table->foreignId('business_team_id')->constrained();
            $table->foreignId('region_id')->constrained();
            $table->foreignId('territory_id')->constrained();
            $table->boolean('activeStatus')->default(1);
            $table->integer('created_by')->nullable();
            $table->string('hostname')->nullable();
            $table->timestamps();
            $table->softDeletes();
       
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('employees');
    }
};
