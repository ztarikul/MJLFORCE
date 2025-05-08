<?php

namespace App\Models;

use App\Models\LocDistrict;
use App\Models\SoldToParty;
use Illuminate\Database\Eloquent\Model;

class LocDivision extends Model
{
    //

    protected $guarded = [];

    public function districts()
    {
        return $this->hasMany(LocDistrict::class);
    }

    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class);
    }

    

}
