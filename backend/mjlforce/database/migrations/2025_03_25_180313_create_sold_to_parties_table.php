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
        Schema::create('sold_to_parties', function (Blueprint $table) {
            $table->id();
            $table->integer('customer_code')->nullable()->unique()->comment('KNA1-KUNNR'); // 11 series Number from sap
            $table->integer('customer_acc_group')->nullable()->comment('KNA1-KTOKD'); // Z001 = s2p Z009 = sh2p
            $table->integer('company_code')->nullable()->comment('KNB1-BUKRS'); 
            $table->integer('sales_org')->nullable()->comment('KNVV-VKORG'); //1100
            $table->integer('distribution_ch')->nullable()->comment('KNVV-VTWEG');
            $table->integer('sales_division')->nullable()->comment('KNVV-SPART'); // 00 => common 


            $table->string('acc_name', 40)->nullable()->comment('ADRC-NAME1');
            $table->string('acc_name2', 40)->nullable()->comment('ADRC-NAME2'); 
            $table->string('search_term', 20)->nullable()->comment('ADRC-SORT1');
            $table->string('search_term2', 20)->nullable()->comment('ADRC-SORT2');
            $table->string('legacy_acc_code')->nullable()->comment('BUTOOO-BPEXT'); //External BP number
            $table->string('country')->nullable()->comment('ADRC-COUNTRY');
            $table->unsignedInteger('region')->nullable()->comment('ADRC-REGION');
            $table->foreignId('region_id')->constrained();

            $table->string('district')->nullable()->comment('ADRC-CITY1');


            $table->string('address', 60)->nullable()->comment('ADRC-STREET');
            $table->string('ceo')->nullable()->comment('ADRC-NAME_CO');
            $table->string('address_2', 40)->nullable()->comment('ADRC-STR_SUPPL3');
            $table->string('address_3', 40)->nullable()->comment('ADRC-LOCATION');
            $table->string('lang')->nullable()->comment('ADRC-LANGU');
            $table->string('phone')->nullable()->comment('ADRC-TEL_NUMBER');
            $table->string('mobile_phone')->nullable()->comment('KNA1_TELF2'); //SMS purpose
            $table->string('fax')->nullable()->unique()->comment('KNA1-TELFX');
            $table->string('email')->nullable()->unique()->comment('ADR6-SMTP_ADDR');
            $table->string('other_url')->nullable()->comment('ADR12-URL_ADDR');
            $table->string('postal_code')->nullable()->comment('ADRC-POST-CODE1');
            
            
            $table->string('contact_person_name')->nullable()->comment('ADRC_NAME_CO');
            $table->string('contact_person_tel')->nullable()->comment('ADRC-TEL_NUMBER');
            $table->string('contact_person_mobile')->nullable()->comment('ADRC2-TEL_NUMBER');

            $table->string('group')->nullable()->comment('BUT020-ADEXT');
            $table->string('payment_mode')->nullable()->comment('KNA1-KATRA'); //1G default
            $table->string('bin_no')->nullable()->unique()->comment('KNA1-BAHN5');
            $table->string('vat_reg_num')->nullable()->comment('KNA1-BAHNE');

            $table->string('recon_acc')->nullable()->comment('KNB1-AKONT'); //Reconcillation Account
            $table->string('fi_payment_terms')->nullable()->comment('KNB1-ZTERM'); //Z001, Z002 => 1days, 7days

            $table->string('currency')->nullable()->comment('KNVV-WAERS');
            $table->unsignedInteger('cust_pricing_procedure')->nullable()->comment('KNVV-KALKS');
            $table->unsignedInteger('shipping_condition')->nullable()->comment('KNVV-VSBED');
            $table->string('delivering_plant')->nullable()->comment('KNVV-VWERK');
            $table->string('other_combination')->nullable()->comment('KNVV-KZAZU'); // Tickbox = X 
            $table->string('incoterms')->nullable()->comment('KNVV-INCO1'); //FOB
            $table->string('incoterms_loc_1')->nullable()->comment('KNVV-INCO2_L'); //NA
            $table->string('sd_payment_terms')->nullable()->comment('KNVV-ZTERM'); // 001 Odays, Z002 7 days
            $table->unsignedInteger('acc_assignment_group')->nullable()->comment('KNVV-KTGRD'); //01
            $table->unsignedInteger('tax_classification')->nullable()->comment('KNVI-TAXKD'); //1

            $table->string('territory')->nullable()->comment('KNVV-BZIRK');
            $table->foreignId('territory_id')->constrained();
            $table->string('customer_group')->nullable()->comment('KNVV');
            $table->string('trade_category')->nullable()->comment('KNVV-KVGR1');
            $table->string('trade_sub_category')->nullable()->comment('KNVV-KVGR2');
            $table->string('customer_group_3')->nullable()->comment('KNVV-KVGR3'); //For Future USe
            $table->string('customer_group_4')->nullable()->comment('KNVV-KVGR4'); //For Future USe
            $table->string('customer_group_5')->nullable()->comment('KNVV-KVGR5'); //For Future USe
            $table->string('bp_type')->nullable(); //Z0001, Z009
            $table->string('attr_2')->nullable()->comment('KNVV-KATR2'); //For Future Use
            $table->string('attr_3')->nullable()->comment('KNVV-KATR3'); //For Future Use
            $table->string('attr_4')->nullable()->comment('KNVV-KATR4'); //For Future Use
            $table->string('factory_address_2')->nullable()->comment('ADRC-STR_SUPPL2'); //Not use

            $table->foreignId('loc_division_id')->nullable()->constrained();//non sap
            $table->foreignId('loc_district_id')->nullable()->constrained(); //non sap
            $table->foreignId('loc_upazila_id')->nullable()->constrained(); //non sap
            $table->foreignId('loc_post_office_id')->nullable()->constrained();//non sap
            
            $table->string('image')->nullable();
            $table->foreignId('employee_id')->constrained();
            // status = [1=>Pending, 2=>Processing, 3=>Rejected, 4=>Approved]
            $table->integer('status')->default(0);
            $table->boolean('activeStatus')->default(1);
            $table->integer('created_by')->nullable();
            $table->string('hostname')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sold_to_parties');
    }
};
