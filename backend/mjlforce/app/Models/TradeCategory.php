<?php

namespace App\Models;

use App\Models\TradeSubCategory;
use App\Models\SoldToParty;
use App\Models\SoldToPartySalesArea;

use Illuminate\Database\Eloquent\Model;

class TradeCategory extends Model
{
    //
   protected $guarded = [];

    public function tradeSubCategories(){
        return $this->hasMany(TradeSubCategory::class);
    }

    public function soldToPartySalesArea(){
        return $this->hasMany(SoldToPartySalesArea::class);
    }

    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class, 'sap_code', 'trade_category');
    }

}
