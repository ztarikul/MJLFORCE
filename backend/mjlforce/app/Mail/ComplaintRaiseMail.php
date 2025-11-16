<?php

namespace App\Mail;

use App\Models\Complaint;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Storage;

class ComplaintRaiseMail extends Mailable
{
    use Queueable, SerializesModels;

    
    public $complaintId;


    /**
     * Create a new message instance.
     */
    public function __construct($complaintId)
    {
        $this->complaintId = $complaintId;

    }
   


      public function build()
    {

        // dd($this->attachments);
        
        $complaint = Complaint::find($this->complaintId);  

        $subject = "New Complaint Raised - " . $complaint->site_name;
        $messageText = "<p>A new complaint has been raised for the <b>site: " . $complaint->site_name . ".</b><br> Please find the details below: <br>" .
                        "<br><b>Complaint Type:</b> " . $complaint->complaint_type . 
                        "<br><b>Complaint Details:</b> " . $complaint->complaint . 
                        "<br><b>contact Phone:</b> " . $complaint->phone .
                        "<br><b>Site Address:</b> " . $complaint->site_address . 
                        "<br><br><b>Complaint Raised By:</b> " . auth()->user()->employee->id . 
                        "<br><b>Date:</b> " . $complaint->date . "\n\n" .
                        "<br>Please address this complaint at the earliest convenience.</p>";

    

        $email =  $this->subject($subject)
                    ->view('emails.complaintRaiseEmail')
                    ->with([
                        'messageText' => $messageText,
                    ]);

                    for ($i = 0; $i<3; $i++){
                         $column = 'image_' . ($i + 1);
                         if(!empty($complaint->$column)){
                            $email->attach(Storage::path($complaint->$column));
                         }
                    }
            
            return $email;
                   
    }
}
