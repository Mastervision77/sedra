@extends('layouts.app')
@section('content')

    <!-- Hero Section -->
    @if($tophomesection && $tophomesection->count() > 0)
        <section id="hero" class="relative h-screen w-full overflow-hidden">

            <!-- Video Background -->
            <video autoplay muted loop playsinline class="absolute inset-0 w-full h-full object-cover" poster="hero-poster.jpg">
                <source src="{{asset('storage/'.$tophomesection->video)}}" type="video/mp4">
                Your browser does not support the video tag.
            </video>

            <!-- Overlay Gradient -->
            <div class="absolute inset-0 bg-gradient-to-b from-primary/60 via-primary/40 to-primary/80"></div>

            <!-- Content -->
            <div class="relative h-full flex items-center justify-center text-center px-4">
                <div class="max-w-4xl animate-fade-in">
                    <h1 class="font-PlayFair text-5xl md:text-7xl lg:text-8xl font-bold text-accent mb-6">
                        {{ $firstLine }}<br>
                        <span class="text-gold">{{ $lastWord }}</span>
                    </h1>
                    <p class="font-lora text-lg md:text-xl text-accent/90 mb-8 max-w-2xl mx-auto">
                        {!! $tophomesection->subtitle !!}
                    </p>
                    <a href="packages.html"
                        class="inline-flex items-center justify-center bg-gold hover:bg-gold/90 text-primary font-lora text-base px-6 py-3 rounded uppercase tracking-wider group transition-all duration-300">
                        Explore Packages
                        <!-- Arrow Right Icon -->
                        <i
                            class="fa-solid fa-arrow-right-long text-[20px] transition-transform group-hover:translate-x-1 ml-2"></i>
                    </a>
                </div>
            </div>
        </section>
    @endif

    <!-- packages -->
    @if($tophomesection && $tophomesection->count() > 0)
        @foreach($topDestination as $destination)
            @if($destination->packages->count() > 0)
                <section id="packages" class="py-20 relative bg-background overflow-hidden">
                    <div class="container mx-auto px-4">

                        <!-- Section Title -->
                        <div class="text-center mb-16">
                            <h2 class="font-PlayFair text-4xl md:text-5xl font-bold text-foreground mb-4">
                                 <span class="text-gold">{{$setting->sub_title_packages_home}}</span>
                            </h2>
                            <p class="font-lora text-muted-foreground text-lg max-w-2xl mx-auto">
                                {{$setting->sub_title_packages_home}}
                            </p>
                        </div>

                        <!-- WRAPPER = allows arrows to float -->
                        <div class="relative max-w-8xl mx-auto">

                            <!-- Swiper Carousel -->
                            <div class="swiper swiper-pac max-sm:w-[350px] max-w-8xl overflow-hidden mx-auto">
                                <div class="swiper-wrapper">

                                    @foreach ($destination->packages as $package)
                                    <div class="swiper-slide w-full lg:w-[300px]">
                                        <div
                                            class="overflow-hidden border-none shadow-lg hover:shadow-xl transition-shadow duration-300">
                                            <div class="relative h-64 overflow-hidden">
                                                <img src="{{ asset('storage/'.$package->outerimage) }}" alt="{{ $package->title }}"
                                                    class="w-full h-full object-cover hover:scale-110 transition-transform duration-500"
                                                    loading="lazy">
                                                <div
                                                    class="absolute top-4 right-4 bg-gold text-primary px-4 py-2 font-PlayFair font-bold text-lg">
                                                    {{ $package->price ?? 'From $0' }}
                                                </div>
                                            </div>
                                            <div class="p-6">
                                                <h3 class="font-PlayFair text-2xl font-bold text-foreground mb-3">
                                                    {{ $package->title }}
                                                </h3>
                                                <p class="font-lora text-muted-foreground mb-4 max-lines-card">
                                                    {{ $package->subtitle }}
                                                </p>
                                                <div class="space-y-2 mb-4">
                                                    <div class="flex items-center gap-2 text-sm text-muted-foreground">
                                                        <!-- Calendar Icon -->
                                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                            stroke="currentColor" width="16" height="16" class="text-gold">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                                d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                                                        </svg>
                                                        <span class="font-lora">{{ $package->duration }}</span>
                                                    </div>
                                                    <div class="flex items-center gap-2 text-sm text-muted-foreground">
                                                        <!-- Users Icon -->
                                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                            stroke="currentColor" width="16" height="16" class="text-gold">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                                d="M17 20h5v-2a4 4 0 00-3-3.87M9 20H4v-2a4 4 0 013-3.87M16 7a4 4 0 11-8 0 4 4 0 018 0z" />
                                                        </svg>
                                                        <span class="font-lora">{{ $package->people_number }}</span>
                                                    </div>
                                                </div>
                                                <a href="{{route('packageshow',$package->slug)}}"
                                                    class="w-full inline-block bg-primary hover:bg-primary/90 text-accent font-lora uppercase tracking-wide text-center py-3">
                                                    View Details
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach

                                </div>
                            </div>

                            <!-- Floating Arrows -->
                            <button class="swiper-button-prev-pac ...">...</button>
                            <button class="swiper-button-next-pac ...">...</button>

                        </div>

                    </div>
                </section>
            @endif
        @endforeach
    @endif

    <!-- Destinations Section -->
    @if($topDestination)
        <section id="destinations" class="py-20 relative bg-primary overflow-hidden">
            <div class="container mx-auto px-4">
                <!-- Section Title -->
                <div class="text-center mb-16">
                    <h2 class="font-PlayFair text-4xl md:text-5xl font-bold text-accent mb-4">
                         <span class="text-gold">{{$setting->title_destination_home}}</span>
                    </h2>
                    <p class="font-lora text-accent/80 text-lg max-w-2xl mx-auto">
                        {{$setting->sub_title_destination_home}}
                    </p>
                </div>

                <!-- Swiper Carousel -->
                <div class="swiper swiper-des  mx-auto max-w-8xl overflow-hidden">
                    <!-- Navigation Arrows -->
                    @if($topDestination->count() > 3)
                        <div class="flex justify-start gap-4 mb-6">
                            <button
                                class="swiper-button-next-des w-10 h-10 flex items-center justify-center rounded-full border border-gold text-gold hover:text-white hover:bg-gold/90 shadow-md transition">
                                <i class="fa fa-chevron-left"></i>
                            </button>
                            <button
                                class="swiper-button-prev-des w-10 h-10 flex items-center justify-center rounded-full border border-gold text-gold hover:text-white hover:bg-gold/90 shadow-md transition">
                                <i class="fa fa-chevron-right"></i>
                            </button>
                        </div>
                    @endif
                    <div class="swiper-wrapper">
                        <!-- Destination 1 -->
                        @foreach($topDestination as $item)
                            <div class="swiper-slide lg:w-[300px]">
                                <a href="{{route('destinationshow', $item->slug)}}">
                                    <div class="overflow-hidden border-none bg-transparent group cursor-pointer rounded-lg">
                                        <div class="relative h-96 overflow-hidden rounded-lg">
                                            <img src="{{asset('storage/'.$item->outerimage)}}" alt="Santorini, Greece"
                                                class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700"
                                                loading="lazy">
                                            <div
                                                class="absolute inset-0 bg-gradient-to-t from-primary via-primary/50 to-transparent">
                                            </div>
                                            <div class="absolute bottom-0 left-0 right-0 p-6 text-accent">
                                                <div class="flex items-center gap-2 mb-2 text-gold">
                                                    <!-- MapPin Icon -->
                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                        stroke="currentColor" width="16" height="16">
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                            d="M12 11c1.656 0 3-1.344 3-3s-1.344-3-3-3-3 1.344-3 3 1.344 3 3 3z" />
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                            d="M12 22s8-4.5 8-11a8 8 0 10-16 0c0 6.5 8 11 8 11z" />
                                                    </svg>
                                                    {{-- <span class="text-sm font-lora">12k+ travelers</span> --}}
                                                </div>
                                                <div class="flex items-center gap-2 mb-2 text-gold">
                                                    <span class="text-sm font-lora">{{$item->location}}</span>
                                                </div>
                                                <h3 class="font-PlayFair text-2xl font-bold mb-2">{{$item->title}}</h3>
                                                <p class="font-lora text-sm text-accent/90 max-lines-dest">
                                                    {!! Str::limit($item->subtitle, 100, '...') !!}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>

                </div>
            </div>
        </section>
    @endif

    <!-- About Section -->
    @if($about)
    <section id="about" class="py-20 bg-background overflow-hidden">
        <div class="container mx-auto px-4 flex items-start">
            <div class="grid lg:grid-cols-2 gap-12 items-center">



                <!-- Image Side -->
                <div class="relative">
                    <div class="relative h-[300px] md:h-[600px] rounded-lg overflow-hidden shadow-2xl">
                        <img src="{{asset('storage/'.$about->homeimage)}}" alt="Sedra Travel Agency team"
                            class="w-full h-full object-cover" loading="lazy">
                        <div class="absolute inset-0 bg-gradient-to-t from-primary/40 to-transparent"></div>
                    </div>
                    <!-- stylish shapes -->
                    <div
                        class="absolute -bottom-8 -right-8 bg-gold p-12 rounded-lg shadow-xl z-10 hidden md:block text-center">
                    </div>
                </div>

                <!-- Content Side -->
                <div>
                    <h2 class="font-PlayFair text-4xl md:text-5xl font-bold text-foreground mb-6">
                        {{ $firstText }} <span class="text-gold">{{ $lastText }}</span>
                    </h2>
                    <p class="font-lora text-muted-foreground text-lg mb-6 leading-relaxed">
                        {!! $about->content_home !!}
                    </p>
                    {{-- <p class="font-lora text-muted-foreground text-lg mb-8 leading-relaxed">
                        Our team of expert travel consultants works tirelessly to curate personalized itineraries
                        that exceed expectations. From luxury escapes to cultural adventures, we handle every
                        detail with precision and care.
                    </p> --}}

                    <!-- Learn More Button -->
                    <a href="about.html"
                        class="inline-block bg-primary hover:bg-primary/90 text-accent font-lora px-8 py-6 uppercase tracking-wide">
                        Learn More About Us
                    </a>
                </div>


            </div>
        </div>
    </section>
    @endif

    <!-- Testimonials & Videos Section -->
    @if($reviewsText || $reviewsVideo)
    <section class="py-20 bg-gold/10">
        <div class="container mx-auto px-4">

            <!-- Header -->
            <div class="text-center mb-16">
                <h2 class="font-PlayFair text-4xl md:text-5xl font-bold text-foreground mb-4">   <span
                        class="text-gold">{{$setting->title_reviews_home}}</span> </h2>
                <p class="font-lora text-muted-foreground text-lg max-w-2xl mx-auto"> {{$setting->sub_title_reviews_home}} </p>
            </div>

            <!-- Tabs -->
            @if($reviewsVideo->count())
                <div class="flex justify-center gap-6 mb-10 w-fit mx-auto bg-gold/10 rounded-xl p-2 shadow-lg">
                    <button data-tab="reviews" class="tab-btn active px-6 py-3 font-PlayFair text-xl rounded-lg">
                        Reviews
                    </button>
                    <button data-tab="videos" class="tab-btn px-6 py-3 font-PlayFair text-xl rounded-lg">
                        Videos
                    </button>
                </div>
            @endif

            <!-- Tab Contents -->
            <!-- Reviews Swiper -->
            @if($reviewsText->count())
                <div id="reviewsContent" class="tab-content reviews-swiper-container">
                    <div class="swiper testimonials-swiper">
                        <div class="swiper-wrapper">

                            @foreach($reviewsText as $review)
                            <div class="swiper-slide">
                                <div class="bg-card shadow-lg rounded-lg p-8 flex flex-col">

                                    <!-- Stars -->
                                    <div class="flex gap-1 mb-4">
                                        @for($i = 0; $i < $review->rateing; $i++)
                                            <svg class="w-5 h-5 fill-gold" viewBox="0 0 24 24">
                                                <path
                                                    d="M12 .587l3.668 7.568L24 9.423l-6 5.853L19.336 24 12 19.897 4.664 24 6 15.276 0 9.423z" />
                                            </svg>
                                            @endfor
                                    </div>

                                    <!-- Content -->
                                    <p class="font-lora text-muted-foreground mb-6">
                                        "{{ $review->content }}"
                                    </p>

                                    <!-- Author -->
                                    <div class="flex items-center gap-4 pt-4 border-t">
                                        <img src="{{ asset('storage/'.$review->image) }}"
                                            class="w-14 h-14 rounded-full object-cover">
                                        <div>
                                            <p class="font-PlayFair font-bold">{{ $review->name }}</p>
                                            <p class="text-sm text-muted-foreground">{{ $review->address }}</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            @endif

            <!-- Videos Swiper -->

            @if($reviewsVideo->count())
            <div id="videosContent" class="tab-content videos-swiper-container hidden">
                <div class="swiper videos-swiper">
                    <div class="swiper-wrapper">
                        @foreach($reviewsVideo as $video)
                        @php
                        $url = $video->url;
                        if (str_contains($url, 'youtube.com/watch?v=')) {
                        $url = str_replace('watch?v=', 'embed/', $url);
                        } elseif (str_contains($url, 'youtu.be/')) {
                        $url = str_replace('youtu.be/', 'www.youtube.com/embed/', $url);
                        }
                        @endphp

                        <div class="swiper-slide">
                            <iframe width="100%" height="315" src="{{ $url }}" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen>
                            </iframe>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            @endif

        </div>
    </section>
    @endif

    <!-- FAQ Section -->
    @if($faqs && $faqs->count() > 0)
    <section id="faq" class="py-20 bg-background">
        <div class="container mx-auto px-4 max-w-4xl">
            <!-- Header -->
            <div class="text-center mb-16">
                <h2 class="font-PlayFair text-4xl md:text-5xl font-bold text-foreground mb-4">
                     <span class="text-gold">{{$setting->title_faq_home}}</span>
                </h2>
                <p class="font-lora text-muted-foreground text-lg">
                    {{$setting->sub_title_faq_home}}
                </p>
            </div>

            <!-- Accordion using details/summary -->
            @if($faqs->count())
            <div class="space-y-4">

                @foreach ($faqs as $faq)
                @foreach ($faq->faq_home ?? [] as $item)
                <details class="border border-border rounded-lg bg-card">
                    <summary
                        class="font-PlayFair flex justify-between items-center text-lg text-foreground hover:text-gold transition-colors py-6 px-6 cursor-pointer list-none">
                        <span>{{ $item['faq_title'] ?? '' }}</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </summary>

                    <div class="font-lora text-muted-foreground pb-6 px-6 leading-relaxed">
                        {{ $item['answer'] ?? '' }}
                    </div>
                </details>
                @endforeach
                @endforeach

            </div>
            @endif
        </div>
    </section>
    @endif

    <!-- Multimedia / Instagram Section -->
    <section id="media" class="py-20 bg-primary">
        <div class="container mx-auto px-4">
            <!-- Header -->
            <div class="text-center mb-16">
                <h2 class="font-PlayFair text-4xl md:text-5xl font-bold text-accent mb-4">
                     <span class="text-gold">{{$setting->title_media_center_home}}</span>
                </h2>
                <p class="font-lora text-accent/80 text-lg mb-6">
                    {{$setting->sub_title_media_center_home}}
                </p>
                <a href="https://www.instagram.com/sedratravelinc/profilecard/?igsh=NTc4MTIwNjQ2YQ%3D%3D" target="_blank"
                    class="inline-flex items-center border border-gold text-gold hover:bg-gold hover:text-primary font-lora uppercase tracking-wide px-6 py-3 rounded transition">
                    <!-- Instagram Icon -->
                    <i class="fa-brands fa-instagram mr-1"></i>
                    Follow @Sedratravelinc
                </a>
            </div>

            <!-- Instagram Grid -->
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 max-w-5xl mx-auto">
                <!--  Post 1 -->
                <div class="relative aspect-square overflow-hidden rounded-lg group cursor-pointer">
                    <img src="{{asset('assets/images/sedra.png')}}" alt="Beautiful sunset beach view"
                        class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
                    <div
                        class="absolute inset-0 bg-primary/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                        <i class="fa-brands fa-instagram text-[28px] text-accent"></i>
                    </div>
                </div>

                <!-- Post 2 -->
                <div class="relative aspect-square overflow-hidden rounded-lg group cursor-pointer">
                    <img src="{{asset('assets/images/sedra2.png')}}" alt="Mountain landscape"
                        class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
                    <div
                        class="absolute inset-0 bg-primary/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                        <i class="fa-brands fa-instagram text-[28px] text-accent"></i>
                    </div>
                </div>

                <!-- Post 3 -->
                <div class="relative aspect-square overflow-hidden rounded-lg group cursor-pointer">
                    <img src="{{asset('assets/images/sedra3.png')}}" alt="Beautiful sunset beach view"
                        class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
                    <div
                        class="absolute inset-0 bg-primary/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                        <i class="fa-brands fa-instagram text-[28px] text-accent"></i>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- CTA / Contact Form Section -->
    <section class="py-20 bg-gradient-to-b from-[#f8ede3] to-white">
        <div class="container mx-auto px-4">
            <div class="max-w-3xl mx-auto text-center">

                <!-- Heading -->
                <h2 class="font-PlayFair text-4xl md:text-5xl font-bold text-primary mb-4">
                     <span class="text-gold">{{$setting->title_contactus_in_home}}</span>
                </h2>

                <!-- Description -->
                <p class="font-Lora text-primary/80 text-lg mb-10">
                    {{$setting->sub_title_contact_in_home}}
                </p>

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

                <!-- Contact Mini Form -->
                <form action="{{route('send')}}" method="POST" class="space-y-5 max-w-xl mx-auto text-left">
                    @csrf

                    <input type="name" name="name" required placeholder="Your Full Name" required
                        class="bg-gold/10  border border-gray-300 text-primary placeholder:text-primary/50 font-Lora h-12 px-4 w-full rounded-lg shadow-sm focus:outline-none focus:border-gold focus:ring-2 focus:ring-gold/50 transition">


                    <input type="email" type="email" name="email" placeholder="Your Email" required
                        class="bg-gold/10  border border-gray-300 text-primary placeholder:text-primary/50 font-Lora h-12 px-4 w-full rounded-lg shadow-sm focus:outline-none focus:border-gold focus:ring-2 focus:ring-gold/50 transition">

                    <input type="number" name="primaryPhone" min="0" required placeholder="Your Phone" required
                        class="bg-gold/10  border border-gray-300 text-primary placeholder:text-primary/50 font-Lora h-12 px-4 w-full rounded-lg shadow-sm focus:outline-none focus:border-gold focus:ring-2 focus:ring-gold/50 transition">

                    <textarea name="message" placeholder="How can we help you?" required rows="4"
                        class="bg-gold/10  border border-gray-300 text-primary placeholder:text-primary/50 font-Lora px-4 py-3 w-full rounded-lg shadow-sm resize-none focus:outline-none focus:border-gold focus:ring-2 focus:ring-gold/50 transition"></textarea>

                    <!-- CTA Button -->
                    <div class="pt-4">
                        <button type="submit"
                            class="bg-gold hover:bg-gold/90 text-primary font-PlayFair px-10 h-14 uppercase tracking-wide whitespace-nowrap flex items-center justify-center gap-2 rounded-lg transition shadow-md w-full sm:w-auto mx-auto">
                            Send Message
                            <i class="fa-solid fa-paper-plane text-[18px]"></i>
                        </button>
                    </div>
                </form>

            </div>
        </div>
    </section>

@endsection
