<?php

namespace App\Models;

use App\Models\Employee;
use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    //
    protected $guarded = [];

    public function employees(){
        return $this->hasMany(Employee::class);
    }
}
