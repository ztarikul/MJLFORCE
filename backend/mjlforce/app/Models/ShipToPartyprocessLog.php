<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\ShipToParty;

class ShipToPartyprocessLog extends Model
{
    //
    protected $guarded = [];

    public function soldToParty(){
        return $this->belongsTo(ShipToParty::class);
    }
}
