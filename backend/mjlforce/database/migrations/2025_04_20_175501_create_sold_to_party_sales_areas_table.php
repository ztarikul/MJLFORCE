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
        Schema::create('sold_to_party_sales_areas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('sold_to_party_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('distribution_ch_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('customer_group_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('trade_category_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('trade_sub_category_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sold_to_party_sales_areas');
    }
};
