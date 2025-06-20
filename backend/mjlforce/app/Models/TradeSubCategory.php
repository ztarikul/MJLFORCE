<?php

namespace App\Models;
use App\Models\SoldToPartySalesArea;
use App\Models\SoldToParty;
use App\Models\TradeCategory;
use Illuminate\Database\Eloquent\Model;

class TradeSubCategory extends Model
{
    //
    protected $guarded = [];

    public function soldToPartySalesArea(){
        return $this->hasMany(SoldToPartySalesArea::class);
    }

    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class, 'sap_code', 'trade_sub_category');
    }

    public function tradeCategory(){
        return $this->belongsTo(TradeCategory::class);
    }

}
