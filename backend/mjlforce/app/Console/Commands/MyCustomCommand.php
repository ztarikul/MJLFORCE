<?php

namespace App\Console\Commands;

use App\Models\SoldToParty;
use Illuminate\Console\Command;

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
        //
        $soldToParty = SoldToParty::latest()->first();
        $date = now()->format('d-m-Y');
        $date_digits = str_split(preg_replace('/\D/', '', $date));
        $bin_digits = 

         $data = [
            'title' => 'Customer Master Advice',
            'soldToParty' => $soldToParty,
            'content' => `<div class="container">
      <div class="header">
        <div style="flex: 1">
          <h1 style="font-weight: bold; margin: 0">MJL Bangladesh PLC.</h1>
          <div style="display: flex; align-items: center; margin-top: px">
            <label style="margin-right: 5px">New</label>
            <span class="checkbox">&#10003</span>
            <label style="margin-left: 5px; margin-right: 5px">Existing</label>
            <span class="checkbox"></span>
          </div>
        </div>
        <div style="text-align: right">
          <span style="font-weight: bold; display: block"
            ></span
          >
          <div
            class="date"
            style="margin-top: 5px; display: flex; align-items: center"
          >
            <span style="margin-right: 10px">Date:</span>
            <span class="large-square">`.$date_digits[0].`</span>
            <span class="large-square">`.$date_digits[1].`</span>
            <span class="large-square">`.$date_digits[2].`</span>
            <span class="large-square">`.$date_digits[3].`</span>
            <span class="large-square">`.$date_digits[4].`</span>
            <span class="large-square">`.$date_digits[5].`</span>
            <span class="large-square">`.$date_digits[6].`</span>
            <span class="large-square">`.$date_digits[7].`</span>
          </div>
        </div>
      </div>

      <div class="section">
        <h2>Customer Information:</h2>
        <div style="display: flex; flex-wrap: wrap; gap: 4px">
          <div style="flex: 1; min-width: 300px">
            <div class="field">
              <label>*Account Name:</label>
              <div class="input">`.$soldToParty->acc_name.`</div>
            </div>
            <div class="field">
              <label>*Office Address:</label>
              <div class="input">`.$soldToParty->address.`</div>
            </div>
            <div class="field">
              <label>Post Office:</label>
              <div class="input">`.$soldToParty->LocPostOffice->post_office.`</div>
            </div>
            <div class="field">
              <label>*Contact Person:</label>
              <div class="input">`.$soldToParty->contact_person_name.`</div>
            </div>
          </div>

          <div style="flex: 3; min-width: 100px; gap: 0px">
            <div class="field">
              <label>Group:</label>
              <div class="input">`.$soldToParty->group.`</div>
            </div>
            <div class="field">
              <label>*District:</label>
              <div class="input">`.$soldToParty->distict.`</div>
            </div>
            <div class="field">
              <label>*BIN:</label>
              <div style="display: flex; gap: 0px; align-items: center">
                <div style="display: flex; gap: 0px">
                  <div class="bin-box">8</div>
                  <div class="bin-box">9</div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                </div>
              </div>
            </div>
            <div class="field">
              <label>*Phone No. (Cell):</label>
              <div class="input">`.$soldToParty->address.`</div>
            </div>
          </div>
        </div>
      </div>

      <div class="section">
        <h2>Company Information:</h2>
        <div class="field">
          <label>CEO/MD/Owner:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>Office Phone:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>Telephone:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>Email:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
      </div>

      <div class="section">
        <h2>Sales Information:</h2>
        <div class="field">
          <label>*Customer Type:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>*Sales Territory:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>*Trade Category:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>*Sub Category:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>*Sales Person (Mobil):</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>Remarks:</label>
          <div class="input">`.$soldToParty->address.`</div>
        </div>
        <div class="field">
          <label>Payment Mode:</label>
          <div class="checkbox">x</div>
          Check
          <div class="checkbox"></div>
          Cash
          <div class="checkbox"></div>
          PO
          <div class="checkbox"></div>
          DD
          <div class="checkbox"></div>
          Transfer
        </div>
      </div>

      <div class="footer">
        <div class="signature">Submitted by:`.$soldToParty->address.`</div>
        <div class="signature">Approved by:`.$soldToParty->address.`</div>
        <div class="signature">Customer Code (System Generated):</div>
      </div>
    </div>`
        ];
    }
}
