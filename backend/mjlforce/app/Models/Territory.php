<?php

namespace App\Models;

use App\Models\SoldToParty;

use Illuminate\Database\Eloquent\Model;

class Territory extends Model
{
    //
    protected $guarded = [];


    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class);
    }

}
