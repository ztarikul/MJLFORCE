<?php

namespace App\Models;

use App\Models\User;
use App\Models\Designation;
use App\Models\BusinessTeam;
use App\Models\Region;
use App\Models\Territory;
use App\Models\AttendanceHistory;
use App\Models\SoldToParty;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Employee extends Model
{
    //
    use SoftDeletes;
    protected $guarded = [];

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function designation(){
        return $this->belongsTo(Designation::class);
    }
    public function businessTeam(){
        return $this->belongsTo(BusinessTeam::class);
    }
    public function region(){
        return $this->belongsTo(Region::class);
    }
    public function territory(){
        return $this->belongsTo(Territory::class);
    }


    public function soldToParties(){
        return $this->hasMany(SoldToParty::class);
    }

    public function attendanceHistory(){
        // return $this->hasMany(Comment::class, 'foreign_key', 'local_key');
        return $this->hasMany(AttendanceHistory::class, 'card_id', 'card_id');
    }

}
