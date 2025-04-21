<?php

namespace App\Models;
use App\Models\SoldToPartySalesArea;
use Illuminate\Database\Eloquent\Model;

class DistributionCh extends Model
{
    //
    protected $guard = [];

    public function soldToPartySalesArea(){
        return $this->hasMany(SoldToPartySalesArea::class);
    }
}
