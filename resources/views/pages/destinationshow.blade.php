@php
$setting = App\Models\Settings::first();
@endphp

@if($destination && $destination->subtitle != null)

@section('meta_description'){!! \Str::limit(strip_tags(@$destination->subtitle), 160) !!}@endsection

@endif

@if($setting && $setting->sitename != null)
@section('og_title', @$setting->sitename . " | ".$destination->title)

@endif

@if($destination && $destination->subtitle != null)
@section('og_description'){{ \Str::limit(strip_tags(@$destination->subtitle), 160) }}@endsection
@endif



@section('og_url', url()->current())

@section('og_type', 'website')

@if($setting && $setting->sitename != null)
@section('title', @$setting->sitename . " | ".$destination->title)
@endif

@extends('layouts.app')
@section('content')

    <section class="relative h-[60vh] overflow-hidden">
        <img src="{{asset('storage/' . $destination->innerimage)}}" alt="Santorini"
            class="w-full h-full object-cover" />
        <div class="absolute inset-0 bg-gradient-to-t from-accent via-accent/40 to-transparent"></div>

        <div class="absolute bottom-6 left-0 right-0 container mx-auto px-4">
            <p class="flex items-center gap-2 text-primary mb-2 text-lg">
                <i class="fa-solid fa-map-pin"></i> {{ $destination->location }}
            </p>
            <h1 class="text-5xl md:text-7xl font-bold text-primary">
                {{ $destination->title }}
            </h1>
        </div>
    </section>

    <div class="container mx-auto px-4 py-16">
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-12">

            <!-- Left Column -->
            <div class="lg:col-span-2">
                <h2 class="text-3xl font-bold mb-6">{{ $destination->title }}</h2>
                <p class="text-lg text-gray-600 leading-relaxed mb-8">
                    {!! $destination->content !!}
                </p>

                <!-- Highlights -->
                {{-- <h3 class="text-2xl font-bold mb-6">Highlights & Attractions</h3>
                <ul class="space-y-3 mb-12 text-gray-600">
                    <li class="flex gap-3"><span class="text-primary">•</span> Visit the iconic blue-domed churches of
                        Oia</li>
                    <li class="flex gap-3"><span class="text-primary">•</span> Watch unforgettable sunsets from Oia
                        Castle</li>
                    <li class="flex gap-3"><span class="text-primary">•</span> Explore the archaeological site of
                        Akrotiri</li>
                    <li class="flex gap-3"><span class="text-primary">•</span> Relax on volcanic black sand beaches
                    </li>
                    <li class="flex gap-3"><span class="text-primary">•</span> Taste world-class wines</li>
                </ul> --}}

                <!-- Gallery -->
                <h3 class="text-2xl font-bold mb-6">Gallery</h3>
                <div class="swiper mySwiperG mb-12">
                    <div class="swiper-wrapper">
                        @foreach ($destination->gallaryimages as $image)
                            <div class="swiper-slide">
                                <img class="rounded-lg w-full h-48 object-cover" src="{{asset('storage/' . $image)}}" />
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>

            <!-- Right Sidebar -->
            <aside class="lg:sticky top-24 bg-gray-50 border rounded-xl p-6 shadow-md h-fit">
                <h3 class="text-xl font-bold mb-4">{{$setting->title_sticky_destination_page}}</h3>
                <p class="text-gray-600 mb-6">
                    {{$setting->sub_title_sticky_destination_page}}
                </p>

                <a href="{{route('contact')}}"
                    class="block w-full text-center bg-gold hover:bg-primary text-white py-3 rounded-md font-medium mb-4">
                    Contact Us
                </a>

                <a href="{{route('packages')}}"
                    class="block w-full text-center border border-gold text-gold hover:bg-gold hover:text-white transition py-3 rounded-md font-medium">
                    View All Packages
                </a>
            </aside>

        </div>

        <!--  Related Packages -->
        @if(!empty($destination->packages) && count($destination->packages))
        <!-- Related Packages -->
        <div class="mt-20">
            <h2 class="text-3xl font-bold mb-8">Travel Packages to Egypt</h2>

            <div class="relative max-w-7xl mx-auto">
                <!-- Swiper -->
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">

                        @foreach($destination->packages as $package)
                        <a href="{{ route('packageshow', $package->slug) }}"
                            class="swiper-slide group bg-white rounded-lg shadow hover:shadow-lg transition overflow-hidden">

                            <img class="h-64 w-full object-cover group-hover:scale-110 transition-transform duration-700"
                                src="{{ asset('storage/'.$package->outerimage) }}" alt="{{ $package->title }}" />

                            <div class="p-6">
                                <h3 class="text-2xl font-bold mb-2">
                                    {{ $package->title }}
                                </h3>

                                <p class="text-gray-600 mb-3 flex items-center gap-2">
                                    <i class="fa-solid fa-stopwatch"></i>
                                    {{ $package->duration }}
                                </p>

                                <p class="text-sm text-gray-500">Starting from</p>
                                <p class="text-3xl font-bold text-gold">
                                    ${{ $package->price }}
                                </p>

                                <div class="w-full flex justify-end mt-4">
                                    <button class="flex items-center text-white bg-primary px-4 py-2 rounded-md font-medium
                                            transition-all duration-300 group-hover:bg-primary-dark">
                                        View Details
                                        <i class="fa-solid fa-arrow-right-long text-[20px] ml-2
                                            transition-transform duration-300 group-hover:translate-x-1"></i>
                                    </button>
                                </div>
                            </div>
                        </a>
                        @endforeach

                    </div>
                </div>

                <!-- Arrows -->
                @if(!empty($destination->packages) && count($destination->packages) > 3)
                    <button class="swiper-button-prev-destpac absolute top-1/2 -translate-y-1/2 -left-3 xl:-left-12
                        w-10 h-10 lg:w-12 lg:h-12 flex items-center justify-center rounded-full bg-white/90
                        text-primary hover:bg-primary hover:text-white shadow-xl transition z-30">
                        <i class="fa fa-chevron-left"></i>
                    </button>

                    <button class="swiper-button-next-destpac absolute top-1/2 -translate-y-1/2 -right-3 xl:-right-12
                        w-10 h-10 lg:w-12 lg:h-12 flex items-center justify-center rounded-full bg-white/90
                        text-primary hover:bg-primary hover:text-white shadow-xl transition z-30">
                        <i class="fa fa-chevron-right"></i>
                    </button>
                @endif
            </div>
        </div>
        @endif

    </div>

@endsection
