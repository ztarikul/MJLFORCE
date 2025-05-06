<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\SoldToParty;

class SoldToPartyProcessLog extends Model
{
    //
    protected $guarded = [];

    public function soldToParty(){
        return $this->belongsTo(SoldToParty::class);
    }

}
