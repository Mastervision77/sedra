<?php

namespace App\Http\Controllers\TripBooking;

use App\Models\TripBooking;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TripBookingController extends Controller
{
    public function tripbooking(Request $request)
    {
        // return response()->json($request);
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|string',
            'tripname' => 'required',
        ]);

        TripBooking::create([
            'name' => $request->input('name'),
            'phone' => $request->input('phone'),
            'tripname' => $request->input('tripname'),
        ]);

        return redirect()->back()->with('success', 'تم إرسال رسالتك بنجاح.');
    }
}
