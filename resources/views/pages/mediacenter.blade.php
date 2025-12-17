@extends('layouts.app')
@section('content')
<section class="pt-11 md:pt-28 pb-20 bg-accent">
    <div class="container mx-auto px-4">

        <!-- Title -->
        <div class="text-center mb-16">
            <h2 class="text-5xl font-PlayFair font-bold text-primary mb-6">Media Center</h2>
        </div>


        <!-- Instagram Grid -->
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 max-w-5xl mx-auto">
            <!-- Post 1 -->
            <div class="relative aspect-square overflow-hidden rounded-lg group cursor-pointer">
                <img src="./assets/images/sedra.png" alt="Beautiful sunset beach view"
                    class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
                <div
                    class="absolute inset-0 bg-primary/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                    <i class="fa-brands fa-instagram text-[28px] text-accent"></i>
                </div>
            </div>

            <!-- Post 2 -->
            <div class="relative aspect-square overflow-hidden rounded-lg group cursor-pointer">
                <img src="./assets/images/sedra2.png" alt="Mountain landscape"
                    class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
                <div
                    class="absolute inset-0 bg-primary/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                    <i class="fa-brands fa-instagram text-[28px] text-accent"></i>
                </div>
            </div>

            <!-- Post 3 -->
            <div class="relative aspect-square overflow-hidden rounded-lg group cursor-pointer">
                <img src="./assets/images/sedra3.png" alt="Beautiful sunset beach view"
                    class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
                <div
                    class="absolute inset-0 bg-primary/60 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center">
                    <i class="fa-brands fa-instagram text-[28px] text-accent"></i>
                </div>
            </div>
        </div>
    </div>

</section>
@endsection
