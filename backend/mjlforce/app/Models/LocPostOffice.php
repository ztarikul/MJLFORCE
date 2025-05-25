<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\LocDistrict;
use App\Models\LocDivision;
use App\Models\SoldToParty;


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
}
