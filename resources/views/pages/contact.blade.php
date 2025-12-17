@php
$settings = App\Models\Settings::first();
@endphp

@if($contacts && $contacts->title != null)

@section('meta_description'){!! \Str::limit(strip_tags(@$contacts->title), 160) !!}@endsection

@endif

@if($settings && $settings->sitename != null)
@section('og_title', @$settings->sitename . " | "."Contact Us")

@endif

@if($contacts && $contacts->title != null)
@section('og_description'){{ \Str::limit(strip_tags(@$contacts->title), 160) }}@endsection
@endif



@section('og_url', url()->current())

@section('og_type', 'website')

@if($settings && $settings->sitename != null)
@section('title', @$settings->sitename . " | "."Contact Us")
@endif

@extends('layouts.app')
@section('content')
<!--  Contact Page Content  -->
<section class="pt-11 md:pt-28 pb-20 bg-accent">
    <div class="container px-4">

        <!-- Title -->
        <div class="text-center mb-16">
            <h1 class="text-5xl md:text-6xl font-PlayFair font-bold mb-6">Contact Us</h1>
            <p class="text-xl text-gray-500 max-w-2xl mx-auto">
                {{$contacts->title}}
            </p>
        </div>

        <!-- Contact Info Cards -->
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8 max-w-6xl mx-auto mb-12">

            <!-- Phone -->
            <div class="shadow-lg rounded-lg p-6 text-center">
                <div class="w-16 h-16 rounded-full bg-gold/40 flex items-center justify-center mx-auto mb-4">
                    <i class="fa-solid fa-phone text-primary text-2xl"></i>
                </div>
                <h3 class="font-bold text-lg mb-2">Phone</h3>
                {{-- <p class="text-gray-500 mb-2">Sales Department</p> --}}
                <p class="font-semibold">{{$contacts->phone}}</p>
            </div>

            <!-- Email -->
            <div class="shadow-lg rounded-lg p-6 text-center">
                <div class="w-16 h-16 rounded-full bg-gold/40 flex items-center justify-center mx-auto mb-4">
                    <i class="fa-solid fa-envelope text-primary text-2xl"></i>
                </div>
                <h3 class="font-bold text-lg mb-2">Email</h3>
                {{-- <p class="text-gray-500 mb-2">General Inquiries</p> --}}
                <p class="font-semibold">{{$contacts->email}}</p>
            </div>

            <!-- WhatsApp -->
            <div class="shadow-lg rounded-lg p-6 text-center">
                <div class="w-16 h-16 rounded-full bg-gold/40 flex items-center justify-center mx-auto mb-4">
                    <i class="fa-brands fa-whatsapp text-primary text-2xl"></i>
                </div>
                <h3 class="font-bold text-lg mb-2">WhatsApp</h3>
                {{-- <p class="text-gray-500 mb-2">Quick Support</p> --}}
                <a href="https://wa.me/{{$contacts->whatsapp}}" target="_blank"
                    class="inline-block mt-3 px-4 py-2 border border-black rounded hover:bg-gold/40 hover:text-primary transition">
                    Chat on WhatsApp
                </a>
            </div>
        </div>

        <!-- Contact Form + Locations -->
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 max-w-6xl mx-auto">
            @if(session('success'))
            <script>
                Swal.fire({
                                title: 'Thanks for contacting us '
                                , text: '{{ session('
                                success ') }}'
                                , icon: 'success'
                                , confirmButtonText: 'Done'
                                , confirmButtonColor: '#3085d6'
                            , });

            </script>
            @endif
            @if($errors->any())
                <script>
                    Swal.fire({
                        title: ' There is an error 😢'
                        , html: `{!! implode('<br>', $errors->all()) !!}`
                        , icon: 'error'
                        , confirmButtonText: 'Done'
                        , confirmButtonColor: '#d33'
                    , });
                </script>
            @endif
            <!-- Form -->
            <div>
                <h2 class="text-3xl font-bold mb-6">Send us a Message</h2>
                <form action="{{route('send')}}" method="POST" class="space-y-6">
                    @csrf
                    <div>
                        <label class="block text-sm font-medium mb-2" name="name">Full Name *</label>
                        <input name="name" required class="w-full border border-black bg-accent rounded p-3 " type="text" required>
                    </div>

                    <div>
                        <label class="block text-sm font-medium mb-2">Email Address </label>
                        <input type="email" name="email"  class="w-full border border-black bg-accent rounded p-3" type="email" required>
                    </div>

                    <div>
                        <label class="block text-sm font-medium mb-2">Phone Number *</label>
                        <input type="number" name="primaryPhone" min="0" required class="w-full border border-black bg-accent rounded p-3" type="tel">
                    </div>
                    <div>
                        <label class="block text-sm font-medium mb-2">Message *</label>
                        <textarea required name="message" class="w-full border border-black bg-accent rounded p-3" rows="6" required></textarea>
                    </div>

                    <button type="submit" class="w-full bg-black text-white py-3 rounded hover:bg-gold transition">
                        Send Message
                    </button>
                </form>
            </div>

            <!-- Locations -->
            <div>
                <h2 class="text-3xl font-bold mb-6">Our Locations</h2>

                <div class="space-y-6 mb-8">
                    @foreach ($contacts->location as $location)
                        <div class="shadow-lg rounded-lg p-6 flex gap-4">
                            <i class="fa-solid fa-location-dot text-primary text-xl mt-1"></i>
                            <div>
                                <h3 class="font-bold text-lg mb-1">{{$location['title']}}</h3>
                                <p class="text-gray-500">{{$location['location']}}</p>
                            </div>
                        </div>
                    @endforeach
                </div>

                <!-- Google Map -->
                <div class="w-full h-64 rounded-lg overflow-hidden shadow-lg">
                    <iframe
                        src="{{$contacts->map}}"
                        width="100%" height="100%" style="border:0;" loading="lazy">
                    </iframe>
                </div>
            </div>

        </div>
    </div>
</section>
@endsection
