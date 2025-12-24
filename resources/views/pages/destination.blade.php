@php
$setting = App\Models\Settings::first();
@endphp

@if($destinations && optional($destinations->first())->title != null)

@section('meta_description'){!! \Str::limit(strip_tags(optional($destinations->first())->title), 160) !!}@endsection

@endif

@if($setting && $setting->sitename != null)
@section('og_title', @$setting->sitename . " | "."Destinations")

@endif

@if($destinations && optional($destinations->first())->title != null)
@section('og_description'){{ \Str::limit(strip_tags(optional($destinations->first())->title), 160) }}@endsection
@endif



@section('og_url', url()->current())

@section('og_type', 'website')

@if($setting && $setting->sitename != null)
@section('title', @$setting->sitename . " | "."Destinations")
@endif

@extends('layouts.app')
@section('content')
<!-- Hero Section -->
<section class="pt-11 md:pt-28 pb-20 bg-accent">
    <div class="container mx-auto px-4">
        <div class="text-center mb-16">
            <h1 class="text-5xl md:text-6xl font-PlayFair font-bold mb-6">  {{$setting->title_destination_page}}</h1>
            <p class="text-xl text-gray-500 max-w-2xl mx-auto">
                {{$setting->sub_title_destination_page}}
            </p>
        </div>

        <!-- Destinations Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            @forelse ($destinations as $destination)
            <a href="{{route('destinationshow',$destination->slug)}}">
                <div
                    class="overflow-hidden group cursor-pointer shadow-lg hover:shadow-xl transition-all duration-500 rounded-lg bg-white">
                    <div class="relative h-72 overflow-hidden">
                        <img src="{{ asset('storage/' . $destination->outerimage) }}"
                            class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">

                        <div class="absolute bottom-0 left-0 right-0 p-6 text-white bg-black/40">
                            <div class="flex items-center gap-2 mb-2">
                                <i class="fa-solid fa-location-dot"></i>
                                <span class="text-sm">{{ $destination->location }}</span>
                            </div>
                            <h3 class="text-2xl font-bold">{{ $destination->title }}</h3>
                        </div>
                    </div>

                    <div class="p-6 text-primary">
                        {{ Str::limit($destination->subtitle, 100) }}
                    </div>
                </div>
            </a>
            @empty
            <p>No destinations found.</p>
            @endforelse
        </div>
        {{-- <!-- Pagination -->
        <div class="flex justify-center mt-12">
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
            {{ $destinations->links() }}
        </div>
    </div>
</section>
@endsection
