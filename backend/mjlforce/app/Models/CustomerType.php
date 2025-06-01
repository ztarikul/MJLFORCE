<?php

namespace App\Models;

use App\Models\SoldToParty;
use Illuminate\Database\Eloquent\Model;

class CustomerType extends Model
{
    //

    protected $guarded = [];

    public function soldToParties()
    {
        return $this->hasMany(SoldToParty::class, 'customer_acc_group', 'sap_code');
    }
}
