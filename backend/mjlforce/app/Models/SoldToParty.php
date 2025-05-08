<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\SoldToPartyProcessLog;
use App\Models\Employee;
use App\Models\LocDivision;
use App\Models\LocDistrict;
use App\Models\LocUpazila;
use App\Models\LocPostOffice;

class SoldToParty extends Model
{
    //
    use SoftDeletes;
    protected $guarded = [];


    public function employee(){
        return $this->belongsTo(Employee::class);
    }

    public function processLogs(){
        return $this->hasMany(SoldToPartyProcessLog::class);
    }

    public function division(){
        return $this->belongsTo(LocDivision::class);
    }
    public function district(){
        return $this->belongsTo(LocDistrict::class);
    }
    public function upazila(){
        return $this->belongsTo(LocUpazila::class);
    }
    public function post_office(){
        return $this->belongsTo(LocPostOffice::class);
    }



}
