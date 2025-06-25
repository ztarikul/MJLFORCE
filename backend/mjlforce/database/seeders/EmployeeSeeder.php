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
            ['sap_code' => 'EM00010285', 'name' => 'Abu Salek'],
            ['sap_code' => 'EM00010345', 'name' => 'Ahammed Dilir Daiyan'],
            ['sap_code' => 'EM00010421', 'name' => 'Ahmad Kutub'],
            ['sap_code' => 'EM00010128', 'name' => 'Ahmed Sheeper Khan Chowdhury'],
            ['sap_code' => 'EM00010206', 'name' => 'Aminul Karim'],
            ['sap_code' => 'EM00010403', 'name' => 'Anindya Roy'],
            ['sap_code' => 'EM00010372', 'name' => 'Arifur Rahman Jippy'],
            ['sap_code' => 'EM00010265', 'name' => 'Ashik Chowdhury'],
            ['sap_code' => 'EM00010267', 'name' => 'Ayon Barua'],
            ['sap_code' => 'EM00010412', 'name' => 'Faisal Ahmed'],
            ['sap_code' => 'EM00010351', 'name' => 'Kazi Iftekhar Rahman'],
            ['sap_code' => 'EM00010165', 'name' => 'Kazi Jahidul Islam'],
            ['sap_code' => 'EM00010177', 'name' => 'Md Ahosan Habib'],
            ['sap_code' => 'EM00010047', 'name' => 'Md Anwar Hossain'],
            ['sap_code' => 'EM00010081', 'name' => 'Md Ariful Alam Khan'],
            ['sap_code' => 'EM00010316', 'name' => 'Md Aushafurdulla'],
            ['sap_code' => 'EM00010425', 'name' => 'Md Azwadul Haque Jim'],
            ['sap_code' => 'EM00010109', 'name' => 'Md Fazley Lohany'],
            ['sap_code' => 'EM00010099', 'name' => 'Md Hasan Uddin'],
            ['sap_code' => 'EM00010301', 'name' => 'Md Jubaer Hossain'],
            ['sap_code' => 'EM00010151', 'name' => 'Md Kawsar Rahman'],
            ['sap_code' => 'EM00010262', 'name' => 'Md Mahbub Alam'],
            ['sap_code' => 'EM00010381', 'name' => 'Md Mahir Asif'],
            ['sap_code' => 'EM00010228', 'name' => 'Md Mydul Islam'],
            ['sap_code' => 'EM00010205', 'name' => 'Md Nasimul Islam'],
            ['sap_code' => 'EM00010368', 'name' => 'Md Robiul Islam'],
            ['sap_code' => 'EM00010238', 'name' => 'Md Sakib Hossain'],
            ['sap_code' => 'EM00010274', 'name' => 'Md Samim Hosain'],
            ['sap_code' => 'EM00010040', 'name' => 'Md Shahin Alom'],
            ['sap_code' => 'EM00010415', 'name' => 'Md Sohanur Rahman'],
            ['sap_code' => 'EM00010034', 'name' => 'Md Wahiduzzaman'],
            ['sap_code' => 'EM00010379', 'name' => 'Md. Adnan Ali Sarkar'],
            ['sap_code' => 'EM00010371', 'name' => 'Md. Ajnin Rahman'],
            ['sap_code' => 'EM00010385', 'name' => 'Md. Jamiun Noor Shadman'],
            ['sap_code' => 'EM00010354', 'name' => 'Md. Juwel Hasan'],
            ['sap_code' => 'EM00010414', 'name' => 'Mirza Shariful Hasan'],
            ['sap_code' => 'EM00010409', 'name' => 'Mohaimenul Islam Shovon'],
            ['sap_code' => 'EM00010119', 'name' => 'Mohammad Jaman'],
            ['sap_code' => 'EM00010049', 'name' => 'Mohammad Zahidul Islam'],
            ['sap_code' => 'EM00010229', 'name' => 'Mohammed Ashiqur Rahman'],
            ['sap_code' => 'EM00010365', 'name' => 'Nafiz Afsan'],
            ['sap_code' => 'EM00010237', 'name' => 'Nuruddin Ahmed Tipu'],
            ['sap_code' => 'EM00010389', 'name' => 'Raisul Islam'],
            ['sap_code' => 'EM00010369', 'name' => 'Rezaul Karim Shad'],
            ['sap_code' => 'EM00010166', 'name' => 'S M Eliash Hasan'],
            ['sap_code' => 'EM00010382', 'name' => 'S M Samiul Haque'],
            ['sap_code' => 'EM00010416', 'name' => 'S. M. Shajidur Rahaman'],
            ['sap_code' => 'EM00010272', 'name' => 'Salim Parvase'],
            ['sap_code' => 'EM00010028', 'name' => 'Shahriar Shahadat Bulbul'],
            ['sap_code' => 'EM00010233', 'name' => 'Shams Uddin Maruf'],
            ['sap_code' => 'EM00010289', 'name' => 'Sheikh Ashiqur Rahman'],
            ['sap_code' => 'EM00010293', 'name' => 'Sukumar Barua'],
            ['sap_code' => 'EM00010356', 'name' => 'Susmoy Barua'],
            ['sap_code' => 'EM00010140', 'name' => 'Zayeed Bin Iftekhar'],
        ];

        foreach($employees as $employee){
            Employee::create([
                'name' => $employee['name'],
                'sap_code' => $employee['sap_code']
            ]);
        }
    }
}
