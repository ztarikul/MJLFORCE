<?php

namespace App\Models;

use App\Models\Employee;
use Illuminate\Database\Eloquent\Model;

class EmployeeActivityLog extends Model
{
    //
    protected $guarded = [];

    public function employee(){
        return $this->belongsTo(Employee::class);
    }

}
