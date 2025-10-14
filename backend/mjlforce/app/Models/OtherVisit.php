<?php

namespace App\Models;

use App\Models\LocDivision;
use App\Models\LocDistrict;
use App\Models\LocUpazila;
use App\Models\LocPostOffice;

use Illuminate\Database\Eloquent\Model;

class OtherVisit extends Model
{
    //

    protected $guarded = [];

    public function locDivision(){
        return $this->belongsTo(LocDivision::class);
    }
    public function LocDistrict(){
        return $this->belongsTo(LocDistrict::class);
    }
    public function LocUpazila(){
        return $this->belongsTo(LocUpazila::class);
    }
    public function LocPostOffice(){
        return $this->belongsTo(LocPostOffice::class);
    }
}
