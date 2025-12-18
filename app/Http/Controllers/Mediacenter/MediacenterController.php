<?php

namespace App\Http\Controllers\Mediacenter;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MediacenterController extends Controller
{
    public function index()
    {
        return view('pages.mediacenter');
    }
}
