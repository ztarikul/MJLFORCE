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
        Schema::create('sales_target_vs_achievements', function (Blueprint $table) {
            $table->id();
            $table->year('year')->nullable();
            $table->string('emp_sap_code');
            $table->string('emp_name')->nullable();
            $table->float('jan_target')->nullable();
            $table->float('jan_percentage')->nullable();
            $table->float('jan_sales')->nullable();
            $table->float('feb_target')->nullable();
            $table->float('feb_sales')->nullable();
            $table->float('feb_percentage')->nullable();
            $table->float('mar_target')->nullable();
            $table->float('mar_sales')->nullable();
            $table->float('mar_percentage')->nullable();
            $table->float('apr_target')->nullable();
            $table->float('apr_sales')->nullable();
            $table->float('apr_percentage')->nullable();
            $table->float('may_target')->nullable();
            $table->float('may_sales')->nullable();
            $table->float('may_percentage')->nullable();
            $table->float('jun_target')->nullable();
            $table->float('jun_sales')->nullable();
            $table->float('jun_percentage')->nullable();
            $table->float('jul_target')->nullable();
            $table->float('jul_sales')->nullable();
            $table->float('jul_percentage')->nullable();
            $table->float('aug_target')->nullable();
            $table->float('aug_sales')->nullable();
            $table->float('aug_percentage')->nullable();
            $table->float('sep_target')->nullable();
            $table->float('sep_sales')->nullable();
            $table->float('sep_percentage')->nullable();
            $table->float('oct_target')->nullable();
            $table->float('oct_sales')->nullable();
            $table->float('oct_percentage')->nullable();
            $table->float('nov_target')->nullable();
            $table->float('nov_sales')->nullable();
            $table->float('nov_percentage')->nullable();
            $table->float('dec_target')->nullable();
            $table->float('dec_sales')->nullable();
            $table->float('dec_percentage')->nullable();
            $table->float('total_target')->nullable();
            $table->float('total_sales')->nullable();
            $table->float('total_percentage')->nullable();

            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sales_target_vs_achievements');
    }
};
