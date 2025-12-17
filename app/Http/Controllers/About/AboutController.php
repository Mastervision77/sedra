<?php

namespace App\Http\Controllers\About;

use App\Models\About;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AboutController extends Controller
{
    public function index()
    {
        $about = About::first();
        // return response()->json($about);
        return view('pages.about', compact('about'));
    }
}
