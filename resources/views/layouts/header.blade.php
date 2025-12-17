<head>
    @php
    $settings = App\Models\Settings::first();
    @endphp
    <meta charset="UTF-8">
    {{-- <link rel="icon" href="././assets/images/thomascook.webp" type="image/webp" /> --}}
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sedra Travel Agency</title>

    <!-- css -->
    <link rel="stylesheet" href="{{asset('assets/css/styels.css')}}" />
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
        integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
{{-- META --}}
<meta name="description" content="@yield('meta_description', \Str::limit(@$settings->descriptionfooter, 160))">
<meta property="og:title" content="@yield('og_title',@$settings->sitename .' | '. 'الرئيسية'))">
<meta property="og:description" content="@yield('og_description',  \Str::limit(@$settings->descriptionfooter, 160))">
<meta property="og:image" content="@yield('og_image', request()->root() . '/storage/' . $settings->logo)">
{{--
<meta property="og:url" content="@yield('og_url', '{{ url()->current() }}')"> --}}
<meta property="og:url" content="{{ url()->current() }}">
<meta property="og:type" content="@yield('og_type', 'Website')">
<title>@yield('title', @$settings->sitename .' | ' . "الرئيسية")</title>
    <!-- font  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap"
        rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- tailwind css -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        accent: "#f8ede3",
                        primary: "#000000",
                        gold: "#c39e6d",
                    },
                    container: {
                        center: true,
                        screens: {
                            DEFAULT: "1300px",
                        },
                    },
                    fontFamily: {
                        PlayFair: ["Playfair Display", "sans-serif"],
                        lora: ["Lora", "serif"],
                    },
                },
            },
        };
    </script>
</head>
