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
        Schema::create('ship_to_partyprocess_logs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ship_to_party_id')->constrained()->onDelete('cascade')->onUpdate('cascade');
            //chk_to / chk_from = [1=> employee, 2=> Leads,  3=>SV, 4=>MIS, 5=>SAP]
            $table->integer('chk_from')->nullable();
            $table->integer('chk_to')->nullable();
            // status [1=> pending, 2=> approved. 3 => rejected];
            $table->integer('status')->nullable();
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
        Schema::dropIfExists('ship_to_partyprocess_logs');
    }
};
