<?php

namespace App\Models;

use App\Models\LocDistrict;
use App\Models\LocPostOffice;
use App\Models\SoldToParty;
use App\Models\ShipToParty;
use Illuminate\Database\Eloquent\Model;

class LocDivision extends Model
{
    //

    protected $guarded = [];

    public function LocDistricts()
    {
        return $this->hasMany(LocDistrict::class);
    }

     public function LocPostOffices()
    {
        return $this->hasMany(LocPostOffice::class);
    }
    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class);
    }

    public function shipToParties()
    {
        return $this->hasMany(ShipToParty::class);
    }

    

}
