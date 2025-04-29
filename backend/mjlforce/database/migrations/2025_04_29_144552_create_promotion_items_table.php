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
        Schema::create('promotion_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('promotion_id')->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('material_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->string('material_name')->nullable();                                                                                                                            
            $table->string('material_image')->nullable();                                                                                                                            
            $table->float('offer_qnty')->nullable();
            $table->string('promo_material_name')->nullable();                                                                                                                            
            $table->float('promo_qnty')->nullable();
            $table->string('promo_material_image')->nullable(); 
            $table->string('description')->nullable();
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
        Schema::dropIfExists('promotion_items');
    }
};
