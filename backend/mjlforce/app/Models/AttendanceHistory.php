<?php

namespace App\Models;

use App\Models\Employee;
use Illuminate\Database\Eloquent\Model;

class AttendanceHistory extends Model
{
    //
    public function employee(){
        // return $this->hasMany(Comment::class, 'foreign_key', 'local_key');
        return $this->belongsTo(Employee::class, 'card_id', 'card_id');
    }
}
