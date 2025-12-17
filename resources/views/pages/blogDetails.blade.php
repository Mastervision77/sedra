@php
$setting = App\Models\Settings::first();
@endphp

@if($blog && $blog->subtitle != null)

@section('meta_description'){!! \Str::limit(strip_tags(@$blog->subtitle), 160) !!}@endsection

@endif

@if($setting && $setting->sitename != null)
@section('og_title', @$setting->sitename . " | ".$blog->title)

@endif

@if($blog && $blog->subtitle != null)
@section('og_description'){{ \Str::limit(strip_tags(@$blog->subtitle), 160) }}@endsection
@endif



@section('og_url', url()->current())

@section('og_type', 'website')

@if($setting && $setting->sitename != null)
@section('title', @$setting->sitename . " | ".$blog->title)
@endif

@extends('layouts.app')
@section('content')

<!-- Hero Image -->
<div class="relative h-[60vh] overflow-hidden">
    <img src="{{asset('storage/'.$blog->innerimage)}}"
        alt="Top 10 Hidden Gems in Europe" class="w-full h-full object-cover">
    <div class="absolute inset-0 bg-gradient-to-t from-gray-100 via-gray-100/70 to-transparent"></div>
</div>

<!-- Blog Content -->
<div class="container mx-auto px-4 -mt-32 relative z-10">
    <article class="max-w-4xl mx-auto">
        <div class="bg-accent rounded-lg shadow p-8 md:p-12 mb-12">

            <!-- Title -->
            <h1 class="text-4xl md:text-6xl font-bold mb-6">{{$blog->title}}</h1>

            <!-- Author and Date -->
            <div class="flex flex-wrap items-center gap-6 text-primary/70 mb-8 pb-8 border-b border-gray-200">
                <div class="flex items-center gap-2">
                    <i class="fa-solid fa-user"></i>
                    <span>{{$blog->author}}</span>
                </div>
                <div class="flex items-center gap-2">
                    <i class="fa-solid fa-calendar-days"></i>
                    <span>{{$blog->date}}</span>
                </div>
                <button onclick="document.getElementById('shareModal').classList.remove('hidden')"
                    class="ml-auto bg-primary/30 hover:bg-gray-200 text-gray-700 px-3 py-1 rounded flex items-center gap-2">
                    <i class="fa-solid fa-share-nodes"></i> Share
                </button>
            </div>

            <!-- Article Content -->
            <div class="prose prose-lg max-w-none" style="font-size:1.125rem; line-height:1.75;">
                <p class="lead">
                    {!! $blog->content !!}
                </p>
            </div>
        </div>

        <!-- Related Articles -->
        <div class="mb-20">
            <h2 class="text-3xl font-bold mb-8">Related Articles</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">

                <!-- Related Post 1 -->
                @if(count($relatedBlogs) > 0)
                @foreach ($relatedBlogs as $relatedBlog)
                <a href="{{route('blogDetails', $relatedBlog->slug)}}" class="group cursor-pointer">
                    <div class="relative h-48 rounded-lg overflow-hidden mb-4">
                        <img src="{{asset('storage/'.$relatedBlog->innerimage)}}" alt="Related post" class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">
                    </div>
                    <h3 class="font-bold text-lg group-hover:text-primary transition-colors">
                        {{$relatedBlog->title}}
                    </h3>
                </a>
                @endforeach
                @endif

            </div>
        </div>

    </article>
</div>

<!-- Share Modal -->
<div id="shareModal" class="fixed inset-0 bg-black/50 hidden flex items-center justify-center z-50">
    <div class="bg-white rounded-xl shadow-lg w-full max-w-md p-6 relative">

        <!-- Close Button -->
        <button onclick="document.getElementById('shareModal').classList.add('hidden')"
            class="absolute top-3 right-3 text-gray-500 hover:text-gray-800">
            <i class="fa-solid fa-xmark text-xl"></i>
        </button>

        <h3 class="text-xl font-bold mb-4">Share this article</h3>

        <!-- Share Links -->
        <div class="flex gap-4 mb-6">
            <!-- Facebook -->
            <a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(request()->fullUrl()) }}"
                class="flex-1 text-center py-2 rounded bg-blue-600 text-white hover:bg-blue-700">
                <i class="fa-brands fa-facebook-f"></i>
            </a>

            <!-- Twitter -->
            <a target="_blank"
                href="https://twitter.com/intent/tweet?url={{ urlencode(request()->fullUrl()) }}&text={{ urlencode($blog->title) }}"
                class="flex-1 text-center py-2 rounded bg-sky-500 text-white hover:bg-sky-600">
                <i class="fa-brands fa-twitter"></i>
            </a>

            <!-- WhatsApp -->
            <a target="_blank" href="https://wa.me/?text={{ urlencode($blog->title.' '.request()->fullUrl()) }}"
                class="flex-1 text-center py-2 rounded bg-green-500 text-white hover:bg-green-600">
                <i class="fa-brands fa-whatsapp"></i>
            </a>
        </div>

        <!-- Copy Link -->
        <div class="flex items-center gap-2">
            <input id="shareLink" type="text" readonly value="{{ request()->fullUrl() }}"
                class="flex-1 border rounded px-3 py-2 text-sm">

            <button onclick="
                    navigator.clipboard.writeText(document.getElementById('shareLink').value)
                " class="bg-gray-200 hover:bg-gray-300 px-3 py-2 rounded text-sm">
                Copy
            </button>
        </div>

    </div>
</div>

@endsection
