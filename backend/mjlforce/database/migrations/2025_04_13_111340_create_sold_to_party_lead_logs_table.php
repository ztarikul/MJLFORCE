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
        Schema::create('sold_to_party_lead_logs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('sold_to_party_id')->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('lead_stage_id')->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->string('stage')->nullable();
            $table->string('remarks')->nullable();
            $table->boolean('activeStatus')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sold_to_party_lead_logs');
    }
};
