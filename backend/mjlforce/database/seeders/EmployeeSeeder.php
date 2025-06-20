<?php

namespace Database\Seeders;

use App\Models\Employee;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $employees = [
            ["name" => "Abu Salek", 'designation_id'],
            ["name" => "Ahammed Dilir Daiyan"],
            ["name" => "Ahasanul Kabir Musanna"],
            ["name" => "Ahmed Sheeper Khan Chowdhury"],
            ["name" => "Aminul Karim"],
            ["name" => "Anjin Rahman Shivan"],
            ["name" => "Faisal Ahmed"],
            ["name" => "Arifur Rahmna Jippy"],
            ["name" => "Ashik Chowdhury"],
            ["name" => "Anindya Roy"],
            ["name" => "Ayon Barua"],
            ["name" => "Kazi Iftekhar Rahman"],
            ["name" => "S. M. Shajidur Rahman"],
            ["name" => "Md Ahosan Habib"],
            ["name" => "Md Ahsan Kabir"],
            ["name" => "Md Anwar Hossain"],
            ["name" => "Md Ariful Alam Khan"],
            ["name" => "Md Aushafurdulla"],
            ["name" => "Md Farhan Bin Razzaque"],
            ["name" => "Md Fazley Lohany"],
            ["name" => "Md Hasan Uddin"],
            ["name" => "Md Jubaer Hossain"],
            ["name" => "Md Juwel Hasan"],
            ["name" => "Md Mahboob Hasan"],
            ["name" => "Md Mahbub Alam"],
            ["name" => "Md Mahir Asif"],
            ["name" => "Md Robiul Islam"],
            ["name" => "Md Nasimul Islam"],
            ["name" => "Md Nasir Uddin"],
            ["name" => "Md Shahin Alom"],
            ["name" => "Md Wahiduzzaman"],
            ["name" => "Md. Jamiun Noor Shadman"],
            ["name" => "Mohammad Jaman"],
            ["name" => "Mohammad Zahidul Islam"],
            ["name" => "Rafaat Shaeer"],
            ["name" => "Rezwanul Sakib"],
            ["name" => "S M Eliash Hasan"],
            ["name" => "S M Samiul Haque"],
            ["name" => "Shafquat Mahmud Fahmi"],
            ["name" => "Shahriar Shahadat Bulbul"],
            ["name" => "Sheikh Ashiqur Rahman"],
            ["name" => "Susmoy Barua"],
            ["name" => "Zayeed Bin Iftekhar"],
            ["name" => "Md. Adnan Ali Sarkar"]
        ];

        foreach($employees as $employee){
            Employee::create([
                'name' => $employee['name']
            ]);
        }
    }
}
