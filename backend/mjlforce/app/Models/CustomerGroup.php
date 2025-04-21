<?php

namespace App\Models;
use App\Models\SoldToPartySalesArea;
use Illuminate\Database\Eloquent\Model;

class CustomerGroup extends Model
{
    //
    protected $guard = [];

    public function soldToPartySalesArea(){
        return $this->hasMany(SoldToPartySalesArea::class);
    }
}
