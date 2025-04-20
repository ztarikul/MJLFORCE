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
        Schema::create('business_teams', function (Blueprint $table) {
            $table->id();
            // Employee Teams
            $table->string('name')->unique(); // Industrial, Automotive, Omera
            $table->string('code')->unique()->nullable(); 
            $table->string('sap_code')->unique()->nullable();
            $table->string('description')->nullable();
            $table->boolean('activeStatus')->default(true);
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
        Schema::dropIfExists('business_teams');
    }
};
