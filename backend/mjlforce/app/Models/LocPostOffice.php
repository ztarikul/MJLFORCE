<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\SoldToParty;
use App\Models\ShipToParty;
use App\Models\OtherVisit;
use App\Models\OtherVisitSite;


class LocPostOffice extends Model
{
    //

    protected $guarded = [];

    public function LocDistrict()
    {
        return $this->belongsTo(LocDistrict::class);
    }
    public function LocDivision()
    {
        return $this->belongsTo(LocDivision::class);
    }

    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class);
    }
    public function shipToParties()
    {
        return $this->hasMany(ShipToParty::class);
    }

    public function otherVisits()
    {
        return $this->hasMany(OtherVisit::class);
    }

    public function otherVisitSites()
    {
        return $this->hasMany(OtherVisitSite::class);
    }
}
