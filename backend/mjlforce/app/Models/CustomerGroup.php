<?php

namespace App\Models;
use App\Models\SoldToParty;
use App\Models\SoldToPartySalesArea;
use Illuminate\Database\Eloquent\Model;

class CustomerGroup extends Model
{
    //
    protected $guard = [];

    public function soldToPartySalesArea(){
        return $this->hasMany(SoldToPartySalesArea::class);
    }

    public function soldToParties(){
        return $this->hasMany(SoldToParty::class, 'sap_code', 'customer_group');
    }
}
