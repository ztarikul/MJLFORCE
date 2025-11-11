<?php

namespace App\Models;

use App\Models\User;
use App\Models\Designation;
use App\Models\BusinessTeam;
use App\Models\Region;
use App\Models\Territory;
use App\Models\AttendanceHistory;
use App\Models\SoldToParty;
use App\Models\EmployeeActivityLog;
use App\Models\Complaint;
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

    // Supervsor er Employees
     public function employeesOfSupervisor()
    {
        return $this->hasMany(Employee::class, 'supervisor_id')->withTrashed();
    }
    
    // Employee er supervisor  
    public function supervisorOfEmployee()
    {
        return $this->belongsTo(Employee::class, 'supervisor_id')->withTrashed();
    }

    public function soldToParties(){
        return $this->hasMany(SoldToParty::class);
    }

    public function attendanceHistory(){
        // return $this->hasMany(Comment::class, 'foreign_key', 'local_key');
        return $this->hasMany(AttendanceHistory::class, 'card_id', 'card_id');
    }

    public function activityLogs(){
        return $this->hasMany(EmployeeActivityLog::class);
    }

    public function complaints(){
        return $this->hasMany(Complaint::class);
    }
}
