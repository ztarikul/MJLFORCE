<?php

namespace App\Console\Commands;

use App\Mail\CmaFromMail;
use App\Mail\ComplaintRaiseMail;
use App\Models\Complaint;
use App\Models\OtherVisit;
use App\Models\SoldToParty;
use Illuminate\Console\Command;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

class MyCustomCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'muCustomCommand';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {

        $soldToParty = SoldToParty::latest()->first();
        $date = now()->format('d-m-Y');
        // $date_digits = str_split(preg_replace('/\D/', '', $date));
        // $bin_digits =  str_split(preg_replace('/\D/', '', $soldToParty->bin_no));
        // $bin_html = "";

        // foreach ($bin_digits as $digit) {
        //     $bin_html .= '<div class="bin-box">' . $digit . '</div>';
        // }


        $content = '<header class="mt-2">
              <div style="width:100%;">
                  <div style="display:inline-block; width:48%; vertical-align:top;">
                      <h5>MJL Bangladesh PLC.</h5>
                      <table class="">
                          <tr class="">
                              <td style="display: inline-block"><input type="checkbox" checked /> New</td>
                              <td style="display: inline-block"><input type="checkbox" /> Exsiting</td>
                          </tr>
                      </table>
                  </div>

                  <div style="display:inline-block; width:48%; text-align:right; vertical-align:top;">
                      <h6>Customer Master Advice</h6>
                      <p>Date: ' . $date . '</p>
                  </div>
              </div>
          </header>
          <div class="p-2 mt-2">
              <h6 class="fw-bold">Customer Information:</h6>
              <table class="text-center customer-info-table" style="width: 100%">
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">Account Name</td>
                      <td>' . $soldToParty->acc_name . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">*Office Address:</td>
                      <td>' . $soldToParty->address . '</td>
                  </tr>
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">Post Office:</td>
                      <td>' . $soldToParty->LocPostOffice->post_office . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">*Contact Person:</td>
                      <td>' . $soldToParty->contact_person_name . '</td>
                  </tr>
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">Group</td>
                      <td>' . $soldToParty->group . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">*District</td>
                      <td>' . $soldToParty->district . '</td>
                  </tr>
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">*BIN</td>
                      <td>' . $soldToParty->bin_no . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">*Phone No. (Cell):</td>
                      <td>' . $soldToParty->contact_person_mobile . '</td>
                  </tr>
              </table>
          </div>
          <div class="p-2 mt-2">
              <h6 class="fw-bold">Company Information:</h6>
              <table class="text-center customer-info-table" style="width: 100%">
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">CEO/MD/Owner:</td>
                      <td>' . $soldToParty->ceo . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">Office Phone:</td>
                      <td>' . $soldToParty->mobile_phone . '</td>
                  </tr>
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">Telephone:</td>
                      <td>' . $soldToParty->phone . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">Email</td>
                      <td>' . $soldToParty->email . '</td>
                  </tr>
              </table>
          </div>
          <div class="p-2 mt-2">
              <h6 class="fw-bold">Sales Information:</h6>
              <table class="text-center customer-info-table" style="width: 100%">
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">*Customer Type:</td>
                      <td>' . $soldToParty->customerType->name . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">*Sales Territory:</td>
                      <td>' . $soldToParty->territorySToP->name . '</td>
                  </tr>
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">*Trade Category:</td>
                      <td>' . $soldToParty->tradeCategory->name . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">*Sub Category:</td>
                      <td>' . $soldToParty->tradeSubCategory->name . '</td>
                  </tr>
                  <tr class="text-start">
                      <td style="font-weight: bold; background-color: #A5A8A6;">*Sales Person (Mobil):</td>
                      <td>' . $soldToParty->employee->name . '</td>
                      <td style="font-weight: bold; background-color: #A5A8A6;">Remarks:</td>
                      <td>' . $soldToParty->remarks . '</td>
                  </tr>
              </table>
          </div>
          <div class="p-2 mt-2">
              <h6>Payment Mode:</h6>
              <table class="">
                  <tr class="mt-5">
                      <td style="display: inline-block"><input type="checkbox" checked /> Check</td>
                      <td style="display: inline-block"><input type="checkbox" /> Cash</td>
                      <td style="display: inline-block"><input type="checkbox" /> PO</td>
                      <td style="display: inline-block"><input type="checkbox" /> DD</td>
                  </tr>
              </table>
          </div>

          <div class="p-2 mt-3 empsignature">
              <table class="text-center empsignature-table" style="width: 100%">
                  <tr>
                      <td style="height: 30px">' . $soldToParty->employee->name . '</td>

                      <td style="height: 30px; font-weight: bold">' . $soldToParty->employee->supervisorOfEmployee?->name . '</td>
                  </tr>
                  <tr>
                      <td style="font-weight: bold">
                          <hr
                              style="
                                      border: 1px solid black;
                                      width: 80%;
                                      margin: auto;
                                  " />
                          Submitted By
                      </td>

                      <td style="font-weight: bold">
                          <hr
                              style="
                                      border: 1px solid black;
                                      width: 80%;
                                      margin: auto;
                                  " />
                          Approved By
                      </td>
                  </tr>
              </table>
          </div>';


        $data = [
            'title' => 'Customer Master Advice',
            'content' => $content
        ];

        $pdf = Pdf::loadView('pdf.cmaForm', $data);
        $filePath = $soldToParty->employee->sap_code . '_cma_form_' . $soldToParty->id . '.pdf';
        Storage::put('cma_forms/' . $filePath, $pdf->output());

        $mail_data = [
            'customer_name' => $soldToParty->acc_name,
            'sales_person' => $soldToParty->employee->name,
        ];

        $mailFilepath = Storage::path('cma_forms/' . $filePath);
        Mail::to('tarikul.islam@mobilbd.com')
            ->send(new CmaFromMail($mail_data, $mailFilepath));



        /// Complaint Email

        // $complaint = Complaint::latest()->first();  
        // $toEmail = "tarikul.islam@mobilbd.com";
        // // $toEmail = auth()->user()->employee->email;
        // $subject = "New Complaint Raised - " . $complaint->site_name;
        // $messageText = "A new complaint has been raised for the site: " . $complaint->site_name . ". Please find the details below:\n\n" .
        //                "Complaint Type: " . $complaint->complaint_type . "\n" .
        //                "Complaint Details: " . $complaint->complaint . "\n" .
        //                "contact Phone: " . $complaint->phone . "\n" .
        //                "Site Address: " . $complaint->site_address . "\n" .
        //                "Date: " . $complaint->date . "\n\n" .
        //                "Please address this complaint at the earliest convenience.";

        // $attachments = [
        //     public_path($complaint->image_1),
        //     public_path($complaint->image_2),
        //     // public_path($complaint->image_3),

        // ];


        // Mail::to($toEmail)->send(new ComplaintRaiseMail($complaint->id));
    }
}
