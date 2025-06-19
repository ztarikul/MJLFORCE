<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\LocDistrict;
use App\Models\SoldToParty;
use App\Models\ShipToParty;


class LocUpazila extends Model
{
    //
    protected $guarded = [];

   

    public function LocDistrict()
    {
        return $this->belongsTo(LocDistrict::class);
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
