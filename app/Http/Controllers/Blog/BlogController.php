<?php

namespace App\Http\Controllers\Blog;

use App\Models\Blog;
use App\Models\Settings;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BlogController extends Controller
{
    public function index()
    {
        $blogs = Blog::paginate(9);
        // return response()->json($blogs);
        $setting = Settings::first();
        return view('pages.blog', compact('blogs','setting'));
    }

    public function show($slug)
    {
        $blog = Blog::where('slug', $slug)->first();
        $relatedBlogs = Blog::where('id', '!=', $blog->id)
                                ->where('categoryblog_id', $blog->categoryblog_id)
                                ->limit(3)
                                ->get();
        // return response()->json($relatedBlogs);
        return view('pages.blogDetails', compact('blog', 'relatedBlogs'));
    }
}
