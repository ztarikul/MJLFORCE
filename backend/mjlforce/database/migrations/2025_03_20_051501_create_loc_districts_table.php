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
        Schema::create('loc_districts', function (Blueprint $table) {
            $table->id();
            $table->foreignId('loc_division_id')->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->string('name')->unique();
            $table->string('bn_name')->nullable();
            $table->string('lat')->nullable();
            $table->string('long')->nullable();
            $table->boolean('activeStatus')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('loc_districts');
    }
};
