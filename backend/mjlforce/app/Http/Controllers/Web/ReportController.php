<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Complaint;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    //

    public function fileDownload(Request $request)
    {

        $file = asset("storage/" . $request->filePath);
        return response($file);
    }

    public function complaint_index()
    {
        $complaints = Complaint::orderBy('date', 'desc')->get();
        return view('reports.complaint.index', compact('complaints'));
    }
}
