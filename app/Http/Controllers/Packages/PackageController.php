<?php

namespace App\Http\Controllers\Packages;

use App\Models\Package;
use App\Models\Settings;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PackageController extends Controller
{
    public function index()
    {
        $packages = Package::paginate(9);
        // return response()->json($packages);
        $setting = Settings::first();
        return view('pages.packages',compact('packages','setting'));
    }
    public function show($slug)
    {
        $package = Package::where('slug',$slug)->first();
        // return response()->json($package);
        return view('pages.packagedetails',compact('package'));
    }
}
