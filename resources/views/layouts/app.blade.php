<!doctype html>
<html lang="ar" dir="ltr">

<!--!--------------- Header Start -->
@include('layouts.header')
<!--!--------------- Header End -->

<body>

    <!--!--------------- Navbar Start -->
    @include('layouts.navbar')
    <!--!--------------- Navbar End -->

    @yield('content')

    <!--//-------------- Footer Start -->
    @include('layouts.footer')
    <!--//-------------- Footer End -->

    <!--//-------------- Scripts Start -->
    @include('layouts.scripts')
    <!--//-------------- Scripts End -->


</body>

</html>
