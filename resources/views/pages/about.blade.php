@php
$settings = App\Models\Settings::first();
@endphp

@if($about && $about->content != null)

@section('meta_description'){!! \Str::limit(strip_tags(@$about->content), 160) !!}@endsection

@endif

@if($settings && $settings->sitename != null)
@section('og_title', @$settings->sitename . " | "."About Us")

@endif

@if($about && $about->content != null)
@section('og_description'){{ \Str::limit(strip_tags(@$about->content), 160) }}@endsection
@endif

{{-- @if($about && $about->about_image != null)
@section('og_image'){{ request()->root() . @$about->getFirstMediaUrl('about_image','webp') }}@endsection
@endif --}}

@section('og_url', url()->current())

@section('og_type', 'website')

@if($settings && $settings->sitename != null)
@section('title', @$settings->sitename . " | "."About Us")
@endif
@extends('layouts.app')
@section('content')
<!-- Main Page -->
<main class="pt-11 md:pt-28 pb-20 bg-accent">
    <div class="container mx-auto px-4">
        <div class="max-w-5xl mx-auto">

            <!-- Title -->
            <div class="text-center mb-16">
                <h1 class="text-5xl font-PlayFair font-bold text-primary mb-6">About Us</h1>
                <p class="text-lg text-gray-600 max-w-3xl mx-auto">
                  {{$about->title}}
                </p>
            </div>

            <!-- About Content -->
            <section class="space-y-6 text-gray-700 text-lg leading-relaxed mb-16">
                <p>
                    {!! $about->content !!}
                </p>

            </section>

            <!-- Vision & Mission -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-20">
                <div class="bg-accent/40 border border-gold p-8 rounded-xl shadow-md">
                    <h3 class="text-3xl font-PlayFair font-bold text-primary mb-4">Our Vision</h3>
                    <p class="text-gray-700 leading-relaxed">
                        {!! $about->vision !!}
                    </p>
                </div>

                <div class="bg-accent/40 border border-gold p-8 rounded-xl shadow-md">
                    <h3 class="text-3xl font-PlayFair font-bold text-primary mb-4">Our Mission</h3>
                    <p class="text-gray-700 leading-relaxed">
                        {!! $about->mission !!}
                    </p>
                </div>
            </div>

            <!-- What We Offer -->
            <section class="mb-20">
                <h2 class="text-3xl font-PlayFair font-bold text-center text-primary mb-10">What We Offer</h2>
                <ul class="list-disc pl-8 space-y-3 text-gray-700 text-lg">
                    @foreach ($about->offer as $offer)
                        <li>{{ $offer['item'] }}</li>
                    @endforeach
                </ul>
            </section>

            <!-- Why Choose Us? -->
            <section class="mb-20">
                <h2 class="text-3xl font-PlayFair font-bold text-center text-primary mb-10">Why Choose Us?</h2>
                <ol class="list-decimal pl-8 space-y-4 text-gray-700 text-lg">
                    @foreach ($about->whychoose as $whychoose)
                        <li>{{ $whychoose['item'] }}</li>
                    @endforeach
                </ol>
            </section>

            <!-- Official Documents Slider -->
            <section class="mb-20">
                <h2 class="text-3xl font-PlayFair font-bold text-center text-primary mb-10">Official Company
                    Documents</h2>

                <!-- Swiper -->
                <div class="swiper myDocsSwiper w-full max-w-4xl mx-auto">
                    <div class="swiper-wrapper">
                        <!-- Slide 1 -->
                        @foreach ($about->image as $image)
                            <div class="swiper-slide">
                                <img src="{{ asset('storage/' . $image) }}" alt="Trade License"
                                    class="rounded-xl w-full h-[350px] object-contain">
                            </div>
                        @endforeach





                    </div>


                    <!-- Pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </section>

        </div>
    </div>
</main>
@endsection
