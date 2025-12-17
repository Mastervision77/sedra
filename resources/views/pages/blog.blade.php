@php
$setting = App\Models\Settings::first();
@endphp

@if($blogs && $blogs->first()->title != null)

@section('meta_description'){!! \Str::limit(strip_tags(@$blogs->first()->title), 160) !!}@endsection

@endif

@if($setting && $setting->sitename != null)
@section('og_title', @$setting->sitename . " | "."Blog")

@endif

@if($blogs && $blogs->first()->title != null)
@section('og_description'){{ \Str::limit(strip_tags(@$blogs->first()->title), 160) }}@endsection
@endif



@section('og_url', url()->current())

@section('og_type', 'website')

@if($setting && $setting->sitename != null)
@section('title', @$setting->sitename . " | "."Blog")
@endif

@extends('layouts.app')
@section('content')
<!-- Hero Section -->
<div class="pt-11 md:pt-28 pb-20 bg-accent">
    <div class="container mx-auto px-4 text-center mb-16">
        <h1 class="text-5xl md:text-6xl font-bold font-PlayFair mb-6">{{$setting->title_blog_home}}</h1>
        <p class="text-xl text-gray-600 max-w-2xl mx-auto">
            {{$setting->sub_title_blog_home}}
        </p>
    </div>

    <!-- Blog Grid -->
    <div class="container mx-auto px-4 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

        <!-- Blog Post 1 -->
        @if($blogs)
            @foreach ($blogs as $blog )
                <a href="{{route('blogDetails',$blog->slug)}}"
                    class="overflow-hidden group cursor-pointer hover:shadow-lg transition-all duration-500 h-full flex flex-col bg-white rounded-lg">
                    <div class="relative h-64 overflow-hidden">
                        <img src="{{asset('storage/'.$blog->outerimage)}}"
                            alt="Top 10 Hidden Gems in Europe"
                            class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">
                    </div>
                    <div class="p-6 flex-1 flex flex-col">
                        <h3 class="text-2xl font-bold mb-3 group-hover:text-primary transition-colors">
                            {{$blog->title}}
                        </h3>
                        <p class="text-gray-600 mb-4 flex-1">
                            {!!$blog->subtitle!!}
                        </p>
                        <div class="flex items-center justify-between text-sm text-gray-500 border-t border-gray-200 pt-4">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-user"></i>
                                <span>{{$blog->author}}</span>
                            </div>
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-calendar-days"></i>
                                <span>{{$blog->date}}</span>
                            </div>
                        </div>
                    </div>
                </a>
            @endforeach
        @endif

    </div>
    <div class="flex justify-center mt-12 custom-pagination">
        {{ $blogs->links() }}
    </div>
</div>
@endsection
