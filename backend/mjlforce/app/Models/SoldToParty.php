<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\SoldToPartyProcessLog;
use App\Models\Employee;
use App\Models\LocDivision;
use App\Models\LocDistrict;
use App\Models\LocUpazila;
use App\Models\LocPostOffice;
use App\Models\Territory;
use App\Models\TradeCategory;
use App\Models\TradeSubCategory;
use App\Models\SoldToPartyLeadLog;
use App\Models\ShipToParty;
use App\Models\CustomerType;
use App\Models\CustomerGroup;
use App\Models\DistributionCh;

class SoldToParty extends Model
{
    //
    use SoftDeletes;
    protected $guarded = [];


    public function employee(){
        return $this->belongsTo(Employee::class);
    }

    public function processLogs(){
        return $this->hasMany(SoldToPartyProcessLog::class)->latest();
    }

    public function currentProcess(){
        return $this->hasOne(SoldToPartyProcessLog::class)->latestOfMany();
    }

    public function leadStageLogs(){
        return $this->hasMany(SoldToPartyLeadLog::class);
    }

    public function currentLead(){
        return $this->hasOne(SoldToPartyLeadLog::class)->latestOfMany();
    }

    public function locDivision(){
        return $this->belongsTo(LocDivision::class);
    }
    public function LocDistrict(){
        return $this->belongsTo(LocDistrict::class);
    }
    public function LocUpazila(){
        return $this->belongsTo(LocUpazila::class);
    }
    public function LocPostOffice(){
        return $this->belongsTo(LocPostOffice::class);
    }
    public function territorySToP(){
        return $this->belongsTo(Territory::class, 'territory', 'sap_code');
    }

    public function tradeCategory(){
        return $this->belongsTo(TradeCategory::class,'trade_category', 'sap_code');
    }

    public function tradeSubCategory(){
        return $this->belongsTo(TradeSubCategory::class,'trade_sub_category', 'sap_code');
    }

    public function shipToParties(){
        return $this->hasMany(ShipToParty::class);
    }

    public function customerType(){
        return $this->belongsTo(CustomerType::class, 'customer_acc_group', 'sap_code');
    }

    public function customerGroup(){
        return $this->belongsTo(CustomerGroup::class, 'customer_group', 'sap_code');
    }
    public function distributionCh(){
        return $this->belongsTo(DistributionCh::class, 'distribution_ch', 'sap_code');
    }

}
