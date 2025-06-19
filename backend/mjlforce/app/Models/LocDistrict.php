<?php

namespace App\Models;

use App\Models\LocUpazila;
use App\Models\LocDivision;
use App\Models\LocPostOffice;
use App\Models\SoldToParty;
use App\Models\ShipToParty;
use Illuminate\Database\Eloquent\Model;

class LocDistrict extends Model
{
    //
    protected $guarded = [];

    public function LocUpazilas()
    {
        return $this->hasMany(LocUpazila::class);
    }

    public function LocDivision()
    {
        return $this->belongsTo(LocDivision::class);
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
