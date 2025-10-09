<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\PromotionItems;

class Material extends Model
{
    //

    protected $guarded = [];

    public function promotionItems(){
        return $this->hasMany(PromotionItems::class);
    }
}
