<?php

namespace App\Http\Controllers\Home;

use App\Models\Faq;
use App\Models\About;
use App\Models\Review;
use App\Models\Settings;
use App\Models\Destination;
use Illuminate\Http\Request;
use Doctrine\DBAL\Schema\View;
use App\Models\TopHommeSection;
use App\Models\TopHeaderSection;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index()
    {
        $tophomesection = TopHommeSection::first();
        $words = explode(' ', $tophomesection->title);
        $lastWord = array_pop($words);
        $firstLine = implode(' ', $words);

        $about = About::select('title_home', 'content_home', 'homeimage')->first();
        $text = explode(' ', $about->title_home);
        $lastText = array_pop($text);
        $firstText = implode(' ', $text);
        $reviewsText  = Review::where('review', 'text')->get();
        $reviewsVideo = Review::where('review', 'video')->get();
        $topDestination= Destination::with('packages')->orderBy('id', 'desc')->get();

        $setting = Settings::first();
        // return response()->json($topDestination);
        $faqs = Faq::where('page_type', 'home')->get();
        return View('index', compact('tophomesection', 'firstLine', 'lastWord', 'about', 'reviewsText', 'reviewsVideo', 'firstText', 'lastText', 'faqs', 'topDestination', 'setting'));
    }
}
