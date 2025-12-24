@php
$setting = App\Models\Settings::first();
@endphp

@if($faqs && optional($faqs->first())->title != null)

@section('meta_description'){!! \Str::limit(strip_tags(optional($faqs->first())->title), 160) !!}@endsection

@endif

@if($setting && $setting->sitename != null)
@section('og_title', @$setting->sitename . " | "."FAQs")

@endif

@if($faqs && optional($faqs->first())->title != null)
@section('og_description'){{ \Str::limit(strip_tags(optional($faqs->first())->title), 160) }}@endsection
@endif

@if($setting && $setting->umrahcover != null)
@section('og_image'){{ asset('storage/' . $setting->umrahcover) }}@endsection
@endif

@section('og_url', url()->current())

@section('og_type', 'website')

@if($setting && $setting->sitename != null)
@section('title', @$setting->sitename . " | "."FAQs")
@endif

@extends('layouts.app')
@section('content')

<!-- Main -->
<main class="pt-11 md:pt-28 pb-20 bg-accent">
    <div class="container mx-auto px-4">

        <!-- Page Header -->
        <div class="text-center mb-16">
            <h1 class="text-5xl font-PlayFair font-bold mb-6">Frequently Asked Questions</h1>
            <p class="text-xl text-gray-600 max-w-2xl mx-auto">
                Find answers to common questions about traveling with Sedra Travel
            </p>
        </div>

        <!-- FAQ Sections -->
        <!-- FAQ Sections -->
        <div class="max-w-4xl mx-auto space-y-12">

            @foreach ($faqs as $section)
            <div>
                <h2 class="text-3xl font-bold mb-6">
                    {{ $section['title'] }}
                </h2>

                <div class="space-y-4">
                    @foreach ($section['faq'] as $item)
                    <details class="border rounded-lg p-6 shadow hover:shadow-md transition-all duration-300">
                        <summary class="font-semibold text-lg">
                            {{ $item['faq_title'] ?? 'Question' }}
                        </summary>

                        <p class="mt-4 text-gray-700">
                            {{ $item['answer'] ?? 'Answer goes here' }}
                        </p>
                    </details>
                    @endforeach
                </div>
            </div>
            @endforeach

            <!-- Contact Card -->
            <div class="max-w-3xl mx-auto mt-16 bg-accent shadow-lg rounded-xl p-12 text-center">
                <h2 class="text-3xl font-bold mb-4">Still Have Questions?</h2>
                <p class="text-lg text-gray-600 mb-8">
                    Can't find the answer you're looking for? Our friendly team is here to help.
                </p>
                <a href="#"
                    class="inline-block px-8 py-4 bg-primary text-accent rounded-lg font-semibold hover:bg-gold transition-colors">
                    Contact Us
                </a>
            </div>

        </div>
    </div>
</main>
@endsection

