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
        Schema::create('employee_activity_logs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('employee_id')->nullable()->constrained();
            $table->date('date')->nullable();
            $table->string('action')->nullable();
            $table->text('remarks')->nullable();
            $table->integer('log_type')->nullable(); // 1= Authenticate, 2=visit, 3=form-entry
            $table->decimal('lat', 9, 6)->nullable();
            $table->decimal('long', 9, 6)->nullable();
            $table->text('address')->nullable();
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
        Schema::dropIfExists('employee_activity_logs');
    }
};
