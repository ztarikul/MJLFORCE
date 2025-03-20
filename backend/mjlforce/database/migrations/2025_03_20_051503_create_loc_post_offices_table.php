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
        Schema::create('loc_post_offices', function (Blueprint $table) {
            $table->id();
            $table->foreignId('loc_upazila_id')->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->string('post_office')->unique();
            $table->string('post_code')->nullable();
            $table->boolean('activeStatus')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('loc_post_offices');
    }
};
