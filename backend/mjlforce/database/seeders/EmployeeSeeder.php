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
        $employees = [
            ["sap_code" => "EM00010205", "name" => "Md Nasimul Islam", "card_id" => "10205", "emp_code" => "10205", "gender" => "1", "mobile" => "8801755649246", "email" => "NASIMUL.ISLAM@MOBILBD.COM", "doj" => "2015-03-10"],
            ["sap_code" => "EM00010206", "name" => "Aminul Karim", "card_id" => "10206", "emp_code" => "10206", "gender" => "1", "mobile" => "8801730359251", "email" => "AMINUL.KARIM@MOBILBD.COM", "doj" => "2015-04-05"] ,
            ["sap_code" => "EM00010177", "name" => "Md Ahosan Habib", "card_id" => "10177", "emp_code" => "10177", "gender" => "1", "mobile" => "8801755563587", "email" => "AHOSAN.HABIB@MOBILBD.COM", "doj" => "2014-01-15"],
            ["sap_code" => "EM00010034", "name" => "Md Wahiduzzaman", "card_id" => "10034", "emp_code" => "10034", "gender" => "1", "mobile" => "8801711724792", "email" => "WAHID.ZAMAN@MOBILBD.COM", "doj" => "2006-11-01"],
            ["sap_code" => "EM00010265", "name" => "Ashik Chowdhury", "card_id" => "8801708457751", "emp_code" => "8801708457751", "gender" => "1", "mobile" => "8801708457751", "email" => "ASHIK.CHOWDHURY@MOBILBD.COM", "doj" => "2017-01-22"] ,
            ["sap_code" => "EM00010047", "name" => "Md Anwar Hossain", "card_id" => "10047", "emp_code" => "10047", "gender" => "1", "mobile" => "8801713493386", "email" => "ANWAR.HOSSAIN@MOBILBD.COM", "doj" => "2008-03-02"],
            ["sap_code" => "EM00010416", "name" => "S. M. Shajidur Rahaman", "card_id" => "10416", "emp_code" => "10416", "gender" => "1", "mobile" => "8801766696195", "email" => "SHAJIDUR.RAHAMAN@MOBILBD.COM", "doj" => "2024-09-22"],
            ["sap_code" => "EM00010119", "name" => "Mohammad Jaman", "card_id" => "10119", "emp_code" => "10119", "gender" => "1", "mobile" => "8801755563586", "email" => "MOHAMMAD.JAMAN@MOBILBD.COM", "doj" => "2011-06-02"],
            ["sap_code" => "EM00010099", "name" => "Md Hasan Uddin", "card_id" => "10099", "emp_code" => "10099", "gender" => "1", "mobile" => "8801711594275", "email" => "HASAN.UDDIN@MOBILBD.COM", "doj" => "2010-06-03"],
            ["sap_code" => "EM00010081", "name" => "Md Ariful Alam Khan", "card_id" => "10081", "emp_code" => "10081", "gender" => "1", "mobile" => "8801730336963", "email" => "ARIFUL.ALAM@MOBILBD.COM", "doj" => "2010-02-01"],
            ["sap_code" => "EM00010351", "name" => "Kazi Iftekhar Rahman", "card_id" => "10351", "emp_code" => "10351", "gender" => "1", "mobile" => "8801708458809", "email" => "IFTEKHAR.RAHMAN@MOBILBD.COM", "doj" => "2021-11-01"],
            ["sap_code" => "EM00010140", "name" => "Zayeed Bin Iftekhar", "card_id" => "10140", "emp_code" => "10140", "gender" => "1", "mobile" => "8801713193279", "email" => "ZAYEED.IFTEKHAR@MOBILBD.COM", "doj" => "2012-05-15"],
            ["sap_code" => "EM00010128", "name" => "Ahmed Sheeper Khan Chowdhury", "card_id" => "10128", "emp_code" => "183", "gender" => "1", "mobile" => "8801755541658", "email" => "SHEEPER.KHAN@MOBILBD.COM", "doj" => "2011-10-09"],
            ["sap_code" => "EM00010434", "name" => "Md. Monir Hossain", "card_id" => "10434", "emp_code" => "10434", "gender" => "1", "mobile" => "8801708457753", "email" => "monir.hossain@mobilbd.com", "doj" => "2025-10-16"],
            ["sap_code" => "EM00010435", "name" => "Md. Rakibul Hasan", "card_id" => "10435", "emp_code" => "10435", "gender" => "1", "mobile" => "8801708457752", "email" => "Rakibul.Hasan@mobilbd.com", "doj" => "2025-10-23"],
            ["sap_code" => "EM00010368", "name" => "Md Robiul Islam", "card_id" => "10368", "emp_code" => "10368", "gender" => "1", "mobile" => "8801730374912", "email" => "ROBIUL.ISLAM@MOBILBD.COM", "doj" => "2022-07-17"],
            ["sap_code" => "EM00010109", "name" => "Md Fazley Lohany", "card_id" => "10109", "emp_code" => "10109", "gender" => "1", "mobile" => "8801730335598", "email" => "FAZLEY.LOHANY@MOBILBD.COM", "doj" => "2017-01-22"],
            ["sap_code" => "EM00010414", "name" => "Mirza Shariful Hasan", "card_id" => "10414", "emp_code" => "10414", "gender" => "1", "mobile" => "8801708458818", "email" => "MIRZA.SHARIFUL@MOBILBD.COM", "doj" => "2024-08-04"],
            ["sap_code" => "EM00010369", "name" => "Rezaul Karim Shad", "card_id" => "10369", "emp_code" => "10369", "gender" => "1", "mobile" => "8801313028238", "email" => "REZAUL.KARIM@MOBILBD.COM", "doj" => "2022-08-07"],
            ["sap_code" => "EM00010379", "name" => "Md. Adnan Ali Sarkar", "card_id" => "10379", "emp_code" => "10379", "gender" => "1", "mobile" => "8801313028263", "email" => "ADNAN.SARKAR@MOBILBD.COM", "doj" => "2022-12-11"],
            ["sap_code" => "EM00010357", "name" => "Md. Mohasin Ali Mondal", "card_id" => "10357", "emp_code" => "10357", "gender" => "1", "mobile" => "8801766667959", "email" => "MOHASIN.ALI@MOBILBD.COM", "doj" => "2022-01-09"],
            ["sap_code" => "EM00010011", "name" => "Salah Uddin Ahmed", "card_id" => "10011", "emp_code" => "10011", "gender" => "1", "mobile" => "8801711726275", "email" => "SALAH.UDDIN@MOBILBD.COM", "doj" => "2002-08-01"],
            ["sap_code" => "EM00010049", "name" => "Mohammad Zahidul Islam", "card_id" => "10049", "emp_code" => "10049", "gender" => "1", "mobile" => "8801713493385", "email" => "ZAHIDUL.ISLAM@MOBILBD.COM", "doj" => "2008-03-02"],
            ["sap_code" => "EM00010371", "name" => "Md. Ajnin Rahman", "card_id" => "10371", "emp_code" => "10371", "gender" => "1", "mobile" => "", "email" => "", "doj" => "2022-10-10"],
            ["sap_code" => "EM00010432", "name" => "S. K. Nayeem Ahmed", "card_id" => "10432", "emp_code" => "10432", "gender" => "1", "mobile" => "8801799985397", "email" => "Nayeem.ahmed@mobilbd.com", "doj" => "2025-09-23"],
            ["sap_code" => "EM00010381", "name" => "Md Mahir Asif", "card_id" => "10381", "emp_code" => "10381", "gender" => "1", "mobile" => "8801713493382", "email" => "MAHIR.ASIF@MOBILBD.COM", "doj" => "2023-03-01"],
            ["sap_code" => "EM00010412", "name" => "Faisal Ahmed", "card_id" => "10412", "emp_code" => "10412", "gender" => "1", "mobile" => "8801755649282", "email" => "FAISAL.AHMED@MOBILBD.COM", "doj" => "2024-07-02"],
            ["sap_code" => "EM00010289", "name" => "Sheikh Ashiqur Rahman", "card_id" => "10289", "emp_code" => "10289", "gender" => "1", "mobile" => "8801730336712", "email" => "SHEIKH.ASHIQUR@MOBILBD.COM", "doj" => "2017-01-22"],
            ["sap_code" => "EM00010409", "name" => "Mohaimenul Islam Shovon", "card_id" => "10409", "emp_code" => "10409", "gender" => "1", "mobile" => "8801711594283", "email" => "MOHAIMENUL.ISLAM@MOBILBD.COM", "doj" => "2024-04-01"],
            ["sap_code" => "EM00010345", "name" => "Ahammed Dilir Daiyan", "card_id" => "10345", "emp_code" => "10345", "gender" => "1", "mobile" => "8801711218278", "email" => "DILIR.DAIYAN@MOBILBD.COM", "doj" => "2021-09-01"],
            ["sap_code" => "EM00010372", "name" => "Arifur Rahman Jippy", "card_id" => "10372", "emp_code" => "10372", "gender" => "1", "mobile" => "8801713755733", "email" => "ARIFUR.RAHMAN@MOBILBD.COM", "doj" => "2022-10-10"],
            ["sap_code" => "EM00010382", "name" => "S M Samiul Haque", "card_id" => "10382", "emp_code" => "10382", "gender" => "1", "mobile" => "8801730336713", "email" => "SAMIUL.HAQUE@MOBILBD.COM", "doj" => "2023-03-01"],
            ["sap_code" => "EM00010423", "name" => "Rafid Rizwan Imam", "card_id" => "10423", "emp_code" => "10423", "gender" => "1", "mobile" => "8801313028240", "email" => "rafid.rizwan@mobilbd.com", "doj" => "2025-03-23"],
            ["sap_code" => "EM00010428", "name" => "Ashikuzzaman .", "card_id" => "10428", "emp_code" => "10428", "gender" => "1", "mobile" => "8801700708172", "email" => "ashikuzzaman@mobilbd.com", "doj" => "2025-08-03"],
            ["sap_code" => "EM00010421", "name" => "Ahmad Kutub" , "card_id" => "10421", "emp_code" => "10421", "gender" => "1", "mobile" => "8801799985399", "email" => "ahmad.kutub@mobilbd.com", "doj" => "2025-03-02"],
            ["sap_code" => "EM00010028", "name" => "Shahriar Shahadat Bulbul", "card_id" => "10028", "emp_code" => "10028", "gender" => "1", "mobile" => "8801713436369", "email" => "SHAHRIAR.BULBUL@MOBILBD.COM", "doj" => "2006-06-11"],
            ["sap_code" => "EM00010430", "name" => "Intesarul Islam Nawal", "card_id" => "10430", "emp_code" => "10430", "gender" => "1", "mobile" => "8801711724795", "email" => "Intesarul.Islam@mobilbd.com", "doj" => "2025-09-14"],
            ["sap_code" => "EM00010431", "name" => "Niloy Nath", "card_id" => "10431", "emp_code" => "10431", "gender" => "1", "mobile" => "8801700708174", "email" => "niloy.nath@mobilbd.com", "doj" => "2025-09-21"],
            ["sap_code" => "EM00010365", "name" => "Nafiz Afsan", "card_id" => "10365", "emp_code" => "10365", "gender" => "1", "mobile" => "8801313028250", "email" => "NAFIZ.AFSAN@MOBILBD.COM", "doj" => "2022-04-03"],
            ["sap_code" => "EM00010425", "name" => "Md Azwadul Haque Jim", "card_id" => "10425", "emp_code" => "10425", "gender" => "1", "mobile" => "8801708457755", "email" => "Azwadul.Haque@mobilbd.com", "doj" => "2025-04-06",], 
            ["sap_code" => "EM00010040", "name" => "Md Shahin Alom", "card_id" => "10040", "emp_code" => "10040", "gender" => "1", "mobile" => "8801711594277", "email" => "SHAHIN.ALOM@MOBILBD.COM", "doj" => "2007-03-18"],
            ["sap_code" => "EM00010165", "name" => "Kazi Jahidul Islam", "card_id" => "10165", "emp_code" => "10165", "gender" => "1", "mobile" => "8801730303732", "email" => "KAZI.JAHIDUL@MOBILBD.COM", "doj" => "2013-10-20"],
            ["sap_code" => "EM00010238", "name" => "Md Sakib Hossain", "card_id" => "10238", "emp_code" => "10238", "gender" => "1", "mobile" => "8801709654347", "email" => "SAKIB.HOSSAIN@MOBILBD.COM", "doj" => "2016-03-01"],
            ["sap_code" => "EM00010274", "name" => "Md Samim Hosain", "card_id" => "10274", "emp_code" => "10274", "gender" => "1", "mobile" => "8801711594284", "email" => "SAMIM.HOSAIN@MOBILBD.COM", "doj" => "2017-04-23"],
            ["sap_code" => "EM00010237", "name" => "Nuruddin Ahmed Tipu", "card_id" => "10237", "emp_code" => "10237", "gender" => "1", "mobile" => "8801730780658", "email" => "NURUDDIN.AHMED@MOBILBD.COM", "doj" => "2016-03-01"],
            ["sap_code" => "EM00010233", "name" => "Shams Uddin Maruf", "card_id" => "10233", "emp_code" => "10233", "gender" => "1", "mobile" => "8801755649281", "email" => "SHAMS.UDDIN@MOBILBD.COM", "doj" => "2016-02-14"],
            ["sap_code" => "EM00010415", "name" => "Md Sohanur Rahman", "card_id" => "10415", "emp_code" => "10415", "gender" => "1", "mobile" => "8801799985460", "email" => "SOHANUR.RAHMAN@MOBILBD.COM", "doj" => "2024-09-15"],
            ["sap_code" => "EM00010166", "name" => "S M Eliash Hasan", "card_id" => "10166", "emp_code" => "10166", "gender" => "1", "mobile" => "8801730373001", "email" => "ELIASH.HASAN@MOBILBD.COM", "doj" => "2013-10-01"],
            ["sap_code" => "EM00010293", "name" => "Sukumar Barua", "card_id" => "10293", "emp_code" => "10293", "gender" => "1", "mobile" => "8801700708178", "email" => "SUKUMAR.BARUA@MOBILBD.COM", "doj" => "2018-03-01"],
            ["sap_code" => "EM00010229", "name" => "Mohammed Ashiqur Rahman", "card_id" => "10229", "emp_code" => "10229", "gender" => "1", "mobile" => "8801755638287", "email" => "ASHIQUR.RAHMAN@MOBILBD.COM", "doj" => "2016-02-01"],
            ["sap_code" => "EM00010228", "name" => "Md Mydul Islam", "card_id" => "10228", "emp_code" => "10228", "gender" => "1", "mobile" => "8801755649283", "email" => "MYDUL.ISLAM@MOBILBD.COM", "doj" => "2016-02-01"],
            ["sap_code" => "EM00010272", "name" => "Salim Parvase", "card_id" => "10272", "emp_code" => "10272", "gender" => "1", "mobile" => "8801799985459", "email" => "SALIM.PARVASE@MOBILBD.COM", "doj" => "2017-04-16"],
            ["sap_code" => "EM00010151", "name" => "Md Kawsar Rahman", "card_id" => "10151", "emp_code" => "10151", "gender" => "1", "mobile" => "8801755649280", "email" => "KAWSAR.RAHMAN@MOBILBD.COM", "doj" => "2013-01-10"],
            ["sap_code" => "EM00010389", "name" => "Raisul Islam", "card_id" => "10389", "emp_code" => "10389", "gender" => "1", "mobile" => "8801313028251", "email" => "RAISUL.ISLAM@MOBILBD.COM", "doj" => "2023-05-02"]

            
        ];

        // $employees = [
        //     ['sap_code' => 'EM00010345', 'name' => 'Ahammed Dilir Daiyan'],
        //     ['sap_code' => 'EM00010421', 'name' => 'Ahmad Kutub'],
        //     ['sap_code' => 'EM00010128', 'name' => 'Ahmed Sheeper Khan Chowdhury'],
        //     ['sap_code' => 'EM00010206', 'name' => 'Aminul Karim'],
        //     ['sap_code' => 'EM00010403', 'name' => 'Anindya Roy'],
        //     ['sap_code' => 'EM00010372', 'name' => 'Arifur Rahman Jippy'],
        //     ['sap_code' => 'EM00010265', 'name' => 'Ashik Chowdhury'],
        //     ['sap_code' => 'EM00010267', 'name' => 'Ayon Barua'],
        //     ['sap_code' => 'EM00010412', 'name' => 'Faisal Ahmed'],
        //     ['sap_code' => 'EM00010351', 'name' => 'Kazi Iftekhar Rahman'],
        //     ['sap_code' => 'EM00010165', 'name' => 'Kazi Jahidul Islam'],
        //     ['sap_code' => 'EM00010177', 'name' => 'Md Ahosan Habib'],
        //     ['sap_code' => 'EM00010047', 'name' => 'Md Anwar Hossain'],
        //     ['sap_code' => 'EM00010081', 'name' => 'Md Ariful Alam Khan'],
        //     ['sap_code' => 'EM00010316', 'name' => 'Md Aushafurdulla'],
        //     ['sap_code' => 'EM00010425', 'name' => 'Md Azwadul Haque Jim'],
        //     ['sap_code' => 'EM00010109', 'name' => 'Md Fazley Lohany'],
        //     ['sap_code' => 'EM00010099', 'name' => 'Md Hasan Uddin'],
        //     ['sap_code' => 'EM00010301', 'name' => 'Md Jubaer Hossain'],
        //     ['sap_code' => 'EM00010151', 'name' => 'Md Kawsar Rahman'],
        //     ['sap_code' => 'EM00010262', 'name' => 'Md Mahbub Alam'],
        //     ['sap_code' => 'EM00010381', 'name' => 'Md Mahir Asif'],
        //     ['sap_code' => 'EM00010228', 'name' => 'Md Mydul Islam'],
        //     ['sap_code' => 'EM00010205', 'name' => 'Md Nasimul Islam'],
        //     ['sap_code' => 'EM00010368', 'name' => 'Md Robiul Islam'],
        //     ['sap_code' => 'EM00010238', 'name' => 'Md Sakib Hossain'],
        //     ['sap_code' => 'EM00010274', 'name' => 'Md Samim Hosain'],
        //     ['sap_code' => 'EM00010040', 'name' => 'Md Shahin Alom'],
        //     ['sap_code' => 'EM00010415', 'name' => 'Md Sohanur Rahman'],
        //     ['sap_code' => 'EM00010034', 'name' => 'Md Wahiduzzaman'],
        //     ['sap_code' => 'EM00010379', 'name' => 'Md. Adnan Ali Sarkar'],
        //     ['sap_code' => 'EM00010371', 'name' => 'Md. Ajnin Rahman'],
        //     ['sap_code' => 'EM00010385', 'name' => 'Md. Jamiun Noor Shadman'],
        //     ['sap_code' => 'EM00010354', 'name' => 'Md. Juwel Hasan'],
        //     ['sap_code' => 'EM00010414', 'name' => 'Mirza Shariful Hasan'],
        //     ['sap_code' => 'EM00010409', 'name' => 'Mohaimenul Islam Shovon'],
        //     ['sap_code' => 'EM00010119', 'name' => 'Mohammad Jaman'],
        //     ['sap_code' => 'EM00010049', 'name' => 'Mohammad Zahidul Islam'],
        //     ['sap_code' => 'EM00010229', 'name' => 'Mohammed Ashiqur Rahman'],
        //     ['sap_code' => 'EM00010365', 'name' => 'Nafiz Afsan'],
        //     ['sap_code' => 'EM00010237', 'name' => 'Nuruddin Ahmed Tipu'],
        //     ['sap_code' => 'EM00010389', 'name' => 'Raisul Islam'],
        //     ['sap_code' => 'EM00010369', 'name' => 'Rezaul Karim Shad'],
        //     ['sap_code' => 'EM00010166', 'name' => 'S M Eliash Hasan'],
        //     ['sap_code' => 'EM00010382', 'name' => 'S M Samiul Haque'],
        //     ['sap_code' => 'EM00010416', 'name' => 'S. M. Shajidur Rahaman'],
        //     ['sap_code' => 'EM00010272', 'name' => 'Salim Parvase'],
        //     ['sap_code' => 'EM00010028', 'name' => 'Shahriar Shahadat Bulbul'],
        //     ['sap_code' => 'EM00010233', 'name' => 'Shams Uddin Maruf'],
        //     ['sap_code' => 'EM00010289', 'name' => 'Sheikh Ashiqur Rahman'],
        //     ['sap_code' => 'EM00010293', 'name' => 'Sukumar Barua'],
        //     ['sap_code' => 'EM00010356', 'name' => 'Susmoy Barua'],
        //     ['sap_code' => 'EM00010140', 'name' => 'Zayeed Bin Iftekhar'],
        // ];

        foreach($employees as $employee){
            Employee::create([
                'name' => $employee['name'],
                'sap_code' => $employee['sap_code'],
                'card_id' => $employee['card_id'] ?? null,
                'emp_code' => $employee['emp_code'] ?? null,
                'gender' => $employee['gender'] ?? null,
                'mobile' => $employee['mobile'] ?? null,
                'email' => $employee['email'] ?? null,
                'doj' => $employee['doj'] ?? null,
                
            ]);
        }
    }
}
