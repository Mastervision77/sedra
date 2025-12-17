@php
$setting = App\Models\Settings::first();
@endphp

@if($package && $package->subtitle != null)

@section('meta_description'){!! \Str::limit(strip_tags(@$package->subtitle), 160) !!}@endsection

@endif

@if($setting && $setting->sitename != null)
@section('og_title', @$setting->sitename . " | ".$package->title)

@endif

@if($package && $package->subtitle != null)
@section('og_description'){{ \Str::limit(strip_tags(@$package->subtitle), 160) }}@endsection
@endif



@section('og_url', url()->current())

@section('og_type', 'website')

@if($setting && $setting->sitename != null)
@section('title', @$setting->sitename . " | ".$package->title)
@endif

@extends('layouts.app')

@section('content')

<div class="relative h-[60vh] overflow-hidden">
    <img src="{{ asset('storage/'.$package->innerimage) }}" alt="{{ $package->title }}"
        class="w-full h-full object-cover">
    <div class="absolute inset-0 bg-gradient-to-t from-accent/70 via-accent/40 to-transparent"></div>
    <div class="absolute bottom-0 left-0 right-0 container mx-auto px-4 pb-12 text-primary">
        <div class="flex items-center gap-2 text-primary mb-4">
            {{-- <i class="fa-solid fa-map-pin text-xl"></i> --}}
            {{-- <span class="text-xl">{{ $package->location }}</span> --}}
        </div>
        <h1 class="text-5xl md:text-7xl font-bold mb-4">{{ $package->title }}</h1>
        <div class="flex flex-wrap gap-6 text-lg">
            <div class="flex items-center gap-2">
                <i class="fa-solid fa-calendar-days"></i>
                <span>{{ $package->duration }}</span>
            </div>
            <div class="flex items-center gap-2">
                <i class="fa-solid fa-users"></i>
                <span>{{ $package->people_number }}</span>
            </div>
        </div>
    </div>
</div>

<!-- Main Content -->
<div class="container mx-auto px-4 py-16 grid grid-cols-1 lg:grid-cols-3 gap-12">

    <!-- Left Column -->
    <div class="lg:col-span-2">

        <!-- Package Overview -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6">Package Overview</h2>
            <p class="text-lg text-gray-700 leading-relaxed">{!! $package->overview !!}</p>
        </section>

        <!-- Gallery -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6">Gallery</h2>
            <div class="swiper gallerySwiper">
                <div class="swiper-wrapper">
                    @forelse($package->gallary as $img)
                    <div class="swiper-slide relative h-64 rounded-lg overflow-hidden group">
                        <img src="{{ asset('storage/'.$img) }}" alt="Gallery Image"
                            class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">
                    </div>
                    @empty
                    <p class="text-gray-500">No gallery images available.</p>
                    @endforelse
                </div>
            </div>
        </section>

        <!-- Itinerary -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6">Day-by-Day Itinerary</h2>
            <div class="space-y-4">
                @forelse($package->itinerary as $item)
                <div class="bg-white rounded-lg shadow">
                    <div class="p-6 flex gap-4">
                        <div
                            class="flex-shrink-0 w-16 h-16 rounded-full bg-primary/10 flex items-center justify-center">
                            <span class="text-2xl font-bold text-primary">{{ $item['day'] }}</span>
                        </div>
                        <div>
                            <h3 class="text-xl font-bold mb-2">{{ $item['title'] }}</h3>
                            <p class="text-gray-700">{!! $item['content'] !!}</p>
                        </div>
                    </div>
                </div>
                @empty
                <p class="text-gray-500">Itinerary details not available.</p>
                @endforelse
            </div>
        </section>

        <!-- Included / Not Included -->
        <section class="mb-12 grid grid-cols-1 md:grid-cols-2 gap-8">
            <div>
                <h3 class="text-2xl font-bold mb-6">What's Included</h3>
                <ul class="space-y-3">
                    @forelse($package->includes as $inc)
                    <li class="flex items-start gap-3">
                        <i class="fa-solid fa-check text-green-600 mt-1"></i>
                        <span>{{ $inc['item'] }}</span>
                    </li>
                    @empty
                    <li>No included items available.</li>
                    @endforelse
                </ul>
            </div>
            <div>
                <h3 class="text-2xl font-bold mb-6">What's Not Included</h3>
                <ul class="space-y-3">
                    @forelse($package->notincludes as $notinc)
                    <li class="flex items-start gap-3">
                        <i class="fa-solid fa-xmark text-red-600 mt-1"></i>
                        <span>{{ $notinc['item'] }}</span>
                    </li>
                    @empty
                    <li>No exclusions listed.</li>
                    @endforelse
                </ul>
            </div>
        </section>

        <!-- Pricing -->
        <section class="mb-12">
            <h2 class="text-3xl font-bold mb-6">Pricing</h2>
            <table class="w-full border-collapse">
                @forelse($package->pricing as $price)
                <tr class="border-b">
                    <td class="p-4 font-medium">{{ $price['title'] }}</td>
                    <td class="p-4 text-right text-2xl font-bold text-primary">${{ $price['price'] }}</td>
                </tr>
                @empty
                <tr>
                    <td colspan="2" class="p-4 text-center text-gray-500">Pricing not available.</td>
                </tr>
                @endforelse
            </table>
        </section>

        <!-- Payment Terms -->
        <section>
            <h2 class="text-3xl font-bold mb-6">Payment Terms</h2>
            <ul class="space-y-3">
                @forelse($package->payterms as $term)
                <li class="flex items-start gap-3">
                    <div class="w-2 h-2 rounded-full bg-primary mt-2"></div>
                    <span class="text-gray-700">{{ $term['item'] }}</span>
                </li>
                @empty
                <li>No payment terms available.</li>
                @endforelse
            </ul>
        </section>

    </div>

    <!-- Sidebar -->
    <div>
        <div class="sticky top-24 bg-white shadow p-6 rounded-lg">
            <div class="text-center mb-6">
                <p class="text-gray-500 mb-2">Starting from</p>
                <p class="text-5xl font-bold text-primary">${{ $package->price }}</p>
                <p class="text-sm text-gray-500 mt-1">per person</p>
            </div>

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
            <!-- Inquiry Form -->
            <form method="POST" action="{{ route('tripbooking') }}" class="space-y-4">
                @csrf

                <div>
                    <label class="text-sm text-gray-600">Name</label>
                    <input type="text" name="name" placeholder="Your Name" required
                        class="w-full border border-gray-300 rounded-lg px-3 py-2 mt-1 focus:outline-none focus:border-primary">
                </div>
                <div>
                    <label class="text-sm text-gray-600">Phone</label>
                    <input type="number" min="0" name="phone" placeholder="Your Phone" required
                        class="w-full border border-gray-300 rounded-lg px-3 py-2 mt-1 focus:outline-none focus:border-primary">
                </div>
                <div>
                    <label class="text-sm text-gray-600">Package</label>
                    <input type="text" name="tripname" value="{{ $package->title }}" readonly
                        class="w-full bg-gray-100 border border-gray-300 rounded-lg px-3 py-2 mt-1 cursor-not-allowed">
                </div>

                <button type="submit"
                    class="w-full bg-primary text-white py-3 rounded-lg font-semibold hover:bg-primary/90 transition">
                    Submit Inquiry
                </button>
            </form>

            <div class="mt-6 pt-6 border-t border-gray-200 text-center">
                <h4 class="font-semibold mb-3">Need Help?</h4>
                <p class="text-sm text-gray-700 mb-4">Our travel experts are ready to assist you with any questions.</p>
                <a href="{{ route('contact') }}">
                    <button class="w-full border border-gray-300 py-2 rounded-lg">Contact Us</button>
                </a>
            </div>
        </div>
    </div>

</div>

@endsection
