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
        Schema::create('existing_visits', function (Blueprint $table) {
            $table->id();
            $table->foreignId('sold_to_party_id')->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('ship_to_party_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('visit_purpose_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->text('other_purpose')->nullable();
            $table->string('sales_performance')->nullable();
            $table->string('stock_verification')->nullable();
            $table->string('mkt_mat_display')->nullable();
            $table->text('remarks')->nullable();
            $table->decimal('lat', 9, 6)->nullable();
            $table->decimal('long', 9, 6)->nullable();
            $table->string('image')->nullable();
            $table->foreignId('employee_id')->nullable()->constrained();
            $table->integer('status')->nullable();
            $table->integer('created_by')->nullable();
            $table->boolean('activeStatus')->default(true);
            $table->string('hostname')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('existing_visits');
    }
};
