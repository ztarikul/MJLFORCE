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
            $table->float('jan_target')->default(0);
            $table->float('jan_percentage')->default(0);
            $table->float('jan_sales')->default(0);
            $table->float('feb_target')->default(0);
            $table->float('feb_sales')->default(0);
            $table->float('feb_percentage')->default(0);
            $table->float('mar_target')->default(0);
            $table->float('mar_sales')->default(0);
            $table->float('mar_percentage')->default(0);
            $table->float('apr_target')->default(0);
            $table->float('apr_sales')->default(0);
            $table->float('apr_percentage')->default(0);
            $table->float('may_target')->default(0);
            $table->float('may_sales')->default(0);
            $table->float('may_percentage')->default(0);
            $table->float('jun_target')->default(0);
            $table->float('jun_sales')->default(0);
            $table->float('jun_percentage')->default(0);
            $table->float('jul_target')->default(0);
            $table->float('jul_sales')->default(0);
            $table->float('jul_percentage')->default(0);
            $table->float('aug_target')->default(0);
            $table->float('aug_sales')->default(0);
            $table->float('aug_percentage')->default(0);
            $table->float('sep_target')->default(0);
            $table->float('sep_sales')->default(0);
            $table->float('sep_percentage')->default(0);
            $table->float('oct_target')->default(0);
            $table->float('oct_sales')->default(0);
            $table->float('oct_percentage')->default(0);
            $table->float('nov_target')->default(0);
            $table->float('nov_sales')->default(0);
            $table->float('nov_percentage')->default(0);
            $table->float('dec_target')->default(0);
            $table->float('dec_sales')->default(0);
            $table->float('dec_percentage')->default(0);
            $table->float('total_target')->default(0);
            $table->float('total_sales')->default(0);
            $table->float('total_percentage')->default(0);

            
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
