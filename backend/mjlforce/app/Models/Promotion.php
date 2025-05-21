<?php

namespace App\Models;

use App\Models\PromotionItems;
use Illuminate\Database\Eloquent\Model;

class Promotion extends Model
{
    //
     protected $guarded = [];

    public function items(){
        return $this->hasMany(PromotionItems::class);
    }
}
