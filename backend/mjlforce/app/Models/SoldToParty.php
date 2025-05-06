<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\SoldToPartyProcessLog;
use App\Models\Employee;

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
}
