<?php

namespace App\Models;

use App\Models\Employee;
use App\Models\Territory;
use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    //
    protected $guarded = [];

    public function employees(){
        return $this->hasMany(Employee::class);
    }

    public function territories(){
        return $this->hasMany(Territory::class);
    }
}
