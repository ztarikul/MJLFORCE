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
        Schema::create('visit_purposes', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique();
            $table->string('code')->unique()->nullable();
            $table->string('sap_code')->unique()->nullable();
            // purType => 1 : all; 2: existing; 3: other
            $table->integer('purType')->default(1);
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
        Schema::dropIfExists('visit_purposes');
    }
};
