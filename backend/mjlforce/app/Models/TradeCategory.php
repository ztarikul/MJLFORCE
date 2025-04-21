<?php

namespace App\Models;

use App\Models\TradeSubCategory;
use App\Models\SoldToPartySalesArea;

use Illuminate\Database\Eloquent\Model;

class TradeCategory extends Model
{
    //
    protected $guard = [];

    public function tradeSubCategories(){
        return $this->hasMany(TradeSubCategory::class);
    }

    public function soldToPartySalesArea(){
        return $this->hasMany(SoldToPartySalesArea::class);
    }
}
