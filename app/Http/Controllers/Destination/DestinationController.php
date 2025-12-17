<?php

namespace App\Http\Controllers\Destination;

use App\Models\Settings;
use App\Models\Destination;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DestinationController extends Controller
{
    public function index()
    {
        $destinations = Destination::paginate(9);
        // return response()->json($destinations);
        $setting = Settings::first();
        return view('pages.destination', compact('destinations','setting'));
    }

    public function show($slug)
    {
        $destination = Destination::with('packages')->where('slug', $slug)->firstOrFail();
        // return response()->json($destination);
        $setting = Settings::first();
        return view('pages.destinationshow', compact('destination','setting'));
    }
}
