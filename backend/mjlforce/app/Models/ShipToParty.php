<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\SoldToParty;
use App\Models\ShipToPartyprocessLog;

class ShipToParty extends Model
{
    //

    protected $guarded = [];

    public function soldToParty(){
        return $this->belongsTo(SoldToParty::class);
    }

    
    public function processLogs(){
        return $this->hasMany(ShipToPartyprocessLog::class)->latest();
    }

    public function currentProcess(){
        return $this->hasOne(ShipToPartyprocessLog::class)->latest();
    }
}
