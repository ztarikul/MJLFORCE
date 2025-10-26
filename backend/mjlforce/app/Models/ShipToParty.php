<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Employee;
use App\Models\SoldToParty;
use App\Models\ShipToPartyprocessLog;
use App\Models\LocDivision;
use App\Models\LocDistrict;
use App\Models\LocUpazila;
use App\Models\LocPostOffice;

class ShipToParty extends Model
{
    //

    protected $guarded = [];

    public function employee(){
        return $this->belongsTo(Employee::class);
    }

    public function soldToParty(){
        return $this->belongsTo(SoldToParty::class);
    }
    
    public function processLogs(){
        return $this->hasMany(ShipToPartyprocessLog::class);
    }

    public function currentProcess(){
        return $this->hasOne(ShipToPartyprocessLog::class)->latestOfMany();
    }

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
