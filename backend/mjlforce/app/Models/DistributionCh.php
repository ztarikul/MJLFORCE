<?php

namespace App\Models;
use App\Models\SoldToPartySalesArea;
use App\Models\SoldToParty;
use Illuminate\Database\Eloquent\Model;

class DistributionCh extends Model
{
    //
    protected $guard = [];

    public function soldToPartySalesArea(){
        return $this->hasMany(SoldToPartySalesArea::class);
    }

    // public function soldToParties(){
    //     return $this->hasMany(SoldToParty::class, 'distribution_ch_id', 'id');
    // }
}
