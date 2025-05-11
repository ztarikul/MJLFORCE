<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\LocPostOffice;
use App\Models\LocDistrict;
use App\Models\SoldToParty;


class LocUpazila extends Model
{
    //
    protected $guarded = [];

    public function LocPostOffices()
    {
        return $this->hasMany(LocPostOffice::class);
    }

    public function LocDistrict()
    {
        return $this->belongsTo(LocDistrict::class);
    }

    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class);
    }
}
