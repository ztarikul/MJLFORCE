<?php

namespace App\Models;

use App\Models\SoldToParty;
use App\Models\Employee;
use App\Models\Region;

use Illuminate\Database\Eloquent\Model;

class Territory extends Model
{
    //
    protected $guarded = [];

    public function employees(){
        return $this->hasMany(Employee::class);
    }

    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class,  'sap_code', 'territory');
    }

    public function region(){
        return $this->belongsTo(Region::class);
    }

}
