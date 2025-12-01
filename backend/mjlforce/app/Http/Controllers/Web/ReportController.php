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
        $complaints = $complaints->map(function ($item) {
            return [
                'id'             => $item->id,
                'employee_id'    => $item->employee_id,
                'site_name'      => $item->site_name,
                'site_address'    => $item->site_address,
                'employee_name'  => $item->employee->name ?? null,
                'complaint_type'  => $item->complaintType->name,
                'date'           => $item->date,
                'complaint'         => $item->complaint,
                'image_1'   => $item->image_1 ? asset('storage/' . $item->image_1) : '',
                'image_2'        => $item->image_2 ? asset('storage/' . $item->image_2) : '',
                'image_3'       => $item->image_3 ? asset('storage/' . $item->image_3) : '',
            ];
        })->toArray();
        return view('reports.complaint.index', compact('complaints'));
    }
}
