<?php

namespace App\Http\Controllers\Faq;

use App\Models\Faq;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FaqController extends Controller
{
    public function index()
    {
        $faqs = Faq::where('page_type','faqpage')->get();
        // return response()->json($faqs);
        return view('pages.faq',compact('faqs'));
    }
}
