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
        Schema::create('complaints', function (Blueprint $table) {
            $table->id();
            $table->foreignId('sold_to_party_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('other_visit_site_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->string('site_name')->nullable();
            $table->string('phone')->nullable();
            $table->text('site_address')->nullable();
            $table->foreignId('complaint_type_id')->nullable()->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->string('complaint_type')->nullable();
            $table->text('complaint')->nullable();
            $table->foreignId('employee_id')->nullable()->constrained();
            $table->string('image_1')->nullable();
            $table->string('image_2')->nullable();
            $table->string('image_3')->nullable();
            $table->date('date')->nullable();
            $table->decimal('lat', 9, 6)->nullable();
            $table->decimal('long', 9, 6)->nullable();
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
        Schema::dropIfExists('complaints');
    }
};
