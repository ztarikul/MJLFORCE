<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\LocUpazila;
use App\Models\SoldToParty;


class LocPostOffice extends Model
{
    //

    protected $guarded = [];

    public function LocUpazila()
    {
        return $this->belongsTo(LocUpazila::class);
    }

    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class);
    }
}
