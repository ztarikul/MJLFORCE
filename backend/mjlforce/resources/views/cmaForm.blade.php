<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>{!! $title !!}</title>
    <style>
      body {
        margin: 0;
        padding: 0;
        font-family: "Times New Roman", Times, serif;
        box-sizing: border-box;
      }

      .container {
        width: 80%;
        margin: 5px auto;
        border: 1px solid black;
        padding: 10px;
      }

      .header {
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        margin-bottom: 5px;
      }

      .header h1 {
        font-size: 20px;
        margin: 0;
      }

      .header .date {
        display: flex;
        align-items: center;
        margin-top: 5px;
      }

      .header .date span {
        margin-right: 2px;
      }

      .section {
        margin-bottom: 5px;
      }

      .section h2 {
        font-size: 16px;
        margin-bottom: 5px;
      }

      .field {
        display: flex;
        align-items: center;
        margin-bottom: 5px;
      }

      .field label {
        width: 110px;
        font-size: 10px;
      }

      .field .input {
        flex: 4;
        height: 20px;
        width: 10px;
        background-color: lightgray;
        border: 1px solid black;
        font-size: 12px;
      }

      .checkbox {
        width: 20px;
        height: 20px;
        border: 1px solid black;
        display: inline-block;
        text-align: center;
      }

      .footer {
        display: flex;
        justify-content: space-between;
        margin-top: 50px;
      }

      .footer .signature {
        width: 30%;
        border-top: 1px solid black;
        text-align: center;
        padding-top: 5px;
      }

      .large-square {
        display: inline-block;
        width: 20px;
        height: 15px;
        border: 1px solid black;
        margin-right: 0px;
        text-align: center;
        font-size: 12px;
      }

      .bin-box {
        width: 15px;
        height: 15px;
        border: 1px solid black;
        display: inline-block;
        margin-right: 2px;
        background: #fff;
        text-align: center;
        font-size: 12px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="header">
        <div style="flex: 1">
          <h1 style="font-weight: bold; margin: 0">MJL Bangladesh PLC.</h1>
          <div style="display: flex; align-items: center; margin-top: px">
            <label style="margin-right: 5px">New</label>
            <span class="checkbox"></span>
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
            <span class="large-square">0</span>
            <span class="large-square">7</span>
            <span class="large-square"></span>
            <span class="large-square"></span>
            <span class="large-square"></span>
            <span class="large-square"></span>
            <span class="large-square"></span>
            <span class="large-square"></span>
          </div>
        </div>
      </div>

      <div class="section">
        <h2>Customer Information:</h2>
        <div style="display: flex; flex-wrap: wrap; gap: 4px">
          <div style="flex: 1; min-width: 300px">
            <div class="field">
              <label>*Account Name:</label>
              <div class="input">Test Customer test customer</div>
            </div>
            <div class="field">
              <label>*Office Address:</label>
              <div class="input"></div>
            </div>
            <div class="field">
              <label>Post Office:</label>
              <div class="input"></div>
            </div>
            <div class="field">
              <label>*Contact Person:</label>
              <div class="input"></div>
            </div>
          </div>

          <div style="flex: 3; min-width: 100px; gap: 0px">
            <div class="field">
              <label>Group:</label>
              <div class="input"></div>
            </div>
            <div class="field">
              <label>*District:</label>
              <div class="input"></div>
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
              <div class="input"></div>
            </div>
          </div>
        </div>
      </div>

      <div class="section">
        <div style="font-weight: bold; margin-bottom: 0px">
          Ship To Party 1:
        </div>
        <div style="flex-wrap: wrap; gap: 3px">
          <div style="flex: 3; min-width: 100px">
            <div class="field">
              <label>Post Office:</label>
              <div class="input"></div>
            </div>
            <div class="field">
              <label>Contact Person 1:</label>
              <div class="input"></div>
            </div>
          </div>
          <div style="flex: 3; min-width: 100px">
            <div class="field">
              <label>BIN (If different):</label>
              <div>
                <div style="display: flex; gap: 2px">
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
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                </div>
              </div>
            </div>
            <div class="field">
              <label>District:</label>
              <div class="input"></div>
            </div>
            <div class="field">
              <label>Phone No. (Cell):</label>
              <div class="input"></div>
            </div>
          </div>
        </div>
      </div>

      <div class="section">
        <div style="font-weight: bold; margin-bottom: 0px">
          Ship To Party 2:
        </div>
        <div style="flex-wrap: wrap; gap: 10px">
          <div style="flex: 2; min-width: 100px">
            <div class="field">
              <label>Post Office:</label>
              <div class="input"></div>
            </div>
            <div class="field">
              <label>Contact Person 2:</label>
              <div class="input"></div>
            </div>
          </div>
          <div style="flex: 1; min-width: 200px">
            <div class="field">
              <label>BIN (If different):</label>
              <div style="display: flex; gap: 2px; align-items: center">
                <div style="display: flex; gap: 2px">
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
                  <div class="bin-box"></div>
                  <div class="bin-box"></div>
                </div>
              </div>
            </div>
            <div class="field">
              <label>District:</label>
              <div class="input"></div>
            </div>
            <div class="field">
              <label>Phone No. (Cell):</label>
              <div class="input"></div>
            </div>
          </div>
        </div>
      </div>

      <div class="section">
        <h2>Company Information:</h2>
        <div class="field">
          <label>CEO/MD/Owner:</label>
          <div class="input"></div>
        </div>
        <div class="field">
          <label>Office Phone:</label>
          <div class="input"></div>
        </div>
        <div class="field">
          <label>Telephone:</label>
          <div class="input"></div>
        </div>
        <div class="field">
          <label>Email:</label>
          <div class="input"></div>
        </div>
      </div>

      <div class="section">
        <h2>Sales Information:</h2>
        <div class="field">
          <label>*Customer Type:</label>
          <div class="input"></div>
        </div>
        <div class="field">
          <label>*Sales Territory:</label>
          <div class="input"></div>
        </div>
        <div class="field">
          <label>*Trade Category:</label>
          <div class="input"></div>
        </div>
        <div class="field">
          <label>*Sub Category:</label>
          <div class="input"></div>
        </div>
        <div class="field">
          <label>*Sales Person (Mobil):</label>
          <div class="input"></div>
        </div>
        <div class="field">
          <label>Remarks:</label>
          <div class="input"></div>
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
        <div class="signature">Submitted by:</div>
        <div class="signature">Approved by:</div>
        <div class="signature">Customer Code (System Generated):</div>
      </div>
    </div>
  </body>
</html>
