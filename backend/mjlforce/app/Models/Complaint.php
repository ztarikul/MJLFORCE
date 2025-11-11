<?php

namespace App\Models;

use App\Models\ComplaintType;
use App\Models\SoldToParty;
use App\Models\Employee;
use Illuminate\Database\Eloquent\Model;

class Complaint extends Model
{
    //

    protected $guarded = [];

    public function complaintType(){
        return $this->belongsTo(ComplaintType::class);
    }
    public function soldToParty(){
        return $this->belongsTo(SoldToParty::class);
    }
    public function employee(){
        return $this->belongsTo(Employee::class);
    }
}
