<?php

namespace App\Models;

use App\Models\LocUpazila;
use App\Models\LocDivision;
use App\Models\SoldToParty;
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
    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class);
    }

    
}
