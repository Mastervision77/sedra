<!-- PreHeader Section -->
@php
$setting = App\Models\Settings::first();
@endphp
<div class="bg-gold/30 py-2 pre-header">
    <div class="container mx-auto px-4">
        <div class="flex justify-end items-center gap-4">
            @foreach ($setting->social_midea as $social)
            <a href="{{@$social['url']}}" target="_blank" rel="noopener noreferrer" class="hover:text-gold transition-colors"
                aria-label="Visit our Instagram">
                <i class="{{@$social['platform']}} text-[20px]"></i>
            </a>
            @endforeach
        </div>
    </div>
</div>

<!-- Header Section -->
<header class="bg-primary sticky top-0 right-0 w-full z-50 shadow-lg ">
    <nav class=" w-full container mx-auto px-4">
        <div class="flex items-center justify-between gap-8 lg:justify-center md:gap-28 h-20">

            <!-- Left Navigation - Desktop -->
            <div class="hidden lg:flex items-center gap-8">
                <a href="mediaCenter.html"
                    class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Media
                    Center</a>
                <a href="{{route('about')}}"
                    class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">About</a>
                <a href="{{route('destination')}}"
                    class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Destinations</a>
            </div>


            <!-- Logo -->
            <a href="{{route('home')}}" class="flex items-center justify-center">
                <img src="{{asset('storage/'.$setting->logo)}}" class="w-32 h-11" alt="sedra Travel">
            </a>

            <!-- Right Navigation - Desktop -->
            <div class="hidden lg:flex items-center gap-8">
                <a href="{{route('packages')}}"
                    class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Packages</a>
                <a href="{{route('contact')}}"
                    class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Contact</a>
                <a href="{{route('blog')}}"
                    class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Blog</a>
            </div>

            <!-- Mobile Menu Button -->
            <button id="mobile-menu-button" class="lg:hidden text-accent" aria-label="Toggle menu">
                <!-- Menu icon -->
                <svg id="menu-icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                    stroke="currentColor" width="24" height="24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                </svg>
                <!-- X icon (hidden by default) -->
                <svg id="close-icon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                    stroke="currentColor" width="24" height="24" class="hidden">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                </svg>
            </button>
        </div>
    </nav>
    <!-- Mobile Menu -->
    <div id="mobile-menu"
        class="absolute z-50 px-4 h-screen bg-primary w-full lg:hidden hidden py-4 border-t border-gold/20">
        <div class="flex flex-col gap-8">
            <a href="mediaCenter.html"
                class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Media
                Center</a>
            <a href="{{route('about')}}"
                class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">About</a>
            <a href="{{route('destination')}}"
                class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Destinations</a>
            <a href="{{route('packages')}}"
                class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Packages</a>
            <a href="{{route('contact')}}"
                class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Contact</a>
            <a href="{{route('blog')}}"
                class="text-accent hover:text-gold transition-colors duration-300 font-lora text-sm uppercase tracking-wide">Blog</a>
        </div>
    </div>
</header>
