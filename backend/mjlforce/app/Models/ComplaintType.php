<?php

namespace App\Models;

use App\Models\Complaint;
use Illuminate\Database\Eloquent\Model;

class ComplaintType extends Model
{
    //
    protected $guarded = [];

    
     public function complaints(){
        return $this->hasMany(Complaint::class);
    }
}
