<?php

namespace App\Models;

use App\Models\Promotion;
use App\Models\Material;
use Illuminate\Database\Eloquent\Model;

class PromotionItems extends Model
{
    //
     protected $guarded = [];

    public function promotion(){
        return $this->belongsTo(Promotion::class);
    }

    public function material(){
        return $this->belongsTo(Material::class);
    }
}
