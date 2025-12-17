@php
$setting = App\Models\Settings::first();
@endphp

@if($packages && $packages->first()->title != null)

@section('meta_description'){!! \Str::limit(strip_tags(@$packages->first()->title), 160) !!}@endsection

@endif

@if($setting && $setting->sitename != null)
@section('og_title', @$setting->sitename . " | "."Destinations")

@endif

@if($packages && $packages->first()->title != null)
@section('og_description'){{ \Str::limit(strip_tags(@$packages->first()->title), 160) }}@endsection
@endif



@section('og_url', url()->current())

@section('og_type', 'website')

@if($setting && $setting->sitename != null)
@section('title', @$setting->sitename . " | "."Destinations")
@endif

@extends('layouts.app')
@section('content')

<main class="pt-11 md:pt-28 pb-20 bg-accent">
    <div class="container px-4">
        <div class="text-center mb-16">
            <h1 class="text-5xl font-bold mb-6 font-PlayFair">{{$setting->title_blog_page}}</h1>
            <p class="text-xl text-gray-600 max-w-2xl mx-auto">
                {{$setting->sub_title_blog_page}}
            </p>
        </div>

        <!-- Start Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

            <!-- Card 1 -->

            @foreach ($packages as  $package)
                <a href="{{route('packageshow',$package->slug)}}"
                    class="group bg-white rounded-lg overflow-hidden shadow hover:shadow-xl transition flex flex-col">
                    <div class="relative h-64 overflow-hidden">
                        <img src="{{asset('storage/'.$package->outerimage)}}"
                            class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700" />
                        <div class="absolute top-4 right-4 bg-primary text-white px-4 py-2 rounded-full font-semibold">
                            From ${{$package->price}}
                        </div>
                    </div>
                    <div class="p-6 flex flex-col flex-1">
                        <p class="flex items-center gap-2 text-gray-500 text-sm mb-2">
                            <i class="fa-solid fa-map-pin"></i> {{$package->location}}
                        </p>
                        <h3 class="text-2xl font-bold mb-3">{{$package->title}}</h3>
                        <p class="text-gray-600 flex-1 mb-4 max-lines-card">{{$package->subtitle}}</p>

                        <div class="flex items-center justify-between border-t pt-4 text-gray-500 text-sm">
                            <span><i class="fa-solid fa-stopwatch"></i> {{$package->duration}} </span>
                            <span><i class="fa-solid fa-users"></i> {{$package->people_number}} </span>
                        </div>

                        <button class="w-full mt-4 bg-primary text-white py-2 rounded-md hover:bg-gray-800 transition">
                            View Details
                        </button>
                    </div>
                </a>
            @endforeach


        </div>
        <!-- Pagination -->
        {{-- <div class="flex justify-center mt-12">
            <nav class="flex items-center gap-2 font-lora">

                <!-- Prev -->
                <a href="#"
                    class="px-4 py-2 rounded-full border border-gold text-gold hover:bg-gold hover:text-white transition">
                    Prev
                </a>

                <!-- Pages -->
                <a href="#"
                    class="w-10 h-10 flex items-center justify-center rounded-full bg-gold text-white border border-gold">
                    1
                </a>

                <a href="#"
                    class="w-10 h-10 flex items-center justify-center rounded-full border border-gold text-primary hover:bg-gold hover:text-white transition">
                    2
                </a>

                <a href="#"
                    class="w-10 h-10 flex items-center justify-center rounded-full border border-gold text-primary hover:bg-gold hover:text-white transition">
                    3
                </a>

                <span class="px-2 text-gray-400">...</span>

                <a href="#"
                    class="w-10 h-10 flex items-center justify-center rounded-full border border-gold text-primary hover:bg-gold hover:text-white transition">
                    10
                </a>

                <!-- Next -->
                <a href="#"
                    class="px-4 py-2 rounded-full border border-gold text-gold hover:bg-gold hover:text-white transition">
                    Next
                </a>

            </nav>
        </div> --}}
        <div class="flex justify-center mt-12 custom-pagination">
           {{ $packages->links() }}
        </div>
    </div>
</main>

@endsection
