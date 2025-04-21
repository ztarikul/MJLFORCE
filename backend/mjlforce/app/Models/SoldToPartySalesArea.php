<?php

namespace App\Models;
use App\Models\DistributionCh;
use App\Models\CustomerGroup;
use App\Models\TradeCategory;
use App\Models\TradeSubCategory;
use Illuminate\Database\Eloquent\Model;

class SoldToPartySalesArea extends Model
{
    //
    protected $guard = [];

    public function distributionCh(){
        return $this->belongsTo(DistributionCh::class);
    }
    public function customerGroup(){
        return $this->belongsTo(CustomerGroup::class);
    }
    public function tradeCategory(){
        return $this->belongsTo(TradeCategory::class);
    }
    public function tradeSubCategory(){
        return $this->belongsTo(TradeSubCategory::class);
    }
   
}
