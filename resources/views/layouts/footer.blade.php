<!-- Footer Section -->

@php
$setting = App\Models\Settings::first();
@endphp

<footer class="bg-primary text-accent pt-12 pb-2">
    <div class="container mx-auto px-4">
        <div class="grid md:grid-cols-3 gap-8 mb-8">
            <!-- Logo and Description -->
            <div class="space-y-4">
                <div class="flex items-center gap-1">
                    <img src="{{asset('storage/'.$setting->footerlogo)}}" class="w-32 h-11" alt="sedra Travel">
                </div>
                <p class="font-Lora text-accent/70 text-sm leading-relaxed">
                    {{@$setting->descriptionfooter}}
                </p>
            </div>

            <!-- Quick Links -->
            <div>
                <h3 class="font-PlayFair text-lg font-bold mb-4">Quick Links</h3>
                <ul class="space-y-2 font-Lora text-sm">
                    <li><a href="{{route('about')}}" class="text-accent/70 hover:text-gold transition-colors">About
                            Us</a>
                    </li>
                    <li><a href="{{route('faq')}}" class="text-accent/70 hover:text-gold transition-colors">FAQ</a></li>
                    <li><a href="{{route('contact')}}"
                            class="text-accent/70 hover:text-gold transition-colors">Contact</a>
                    </li>
                    <li><a href="{{route('packages')}}"
                            class="text-accent/70 hover:text-gold transition-colors">Packages</a>
                    </li>
                    <li><a href="{{route('destination')}}"
                            class="text-accent/70 hover:text-gold transition-colors">Destinations</a></li>
                </ul>
            </div>

            <!-- Contact Info -->
            <div>
                <h3 class="font-PlayFair text-lg font-bold mb-4">Get in Touch</h3>
                <ul class="space-y-2 font-Lora text-sm text-accent/70">
                    <li><a href="tel:+1234567890" class="hover:text-gold transition-colors"> {{@$setting->phone}}</a>
                    </li>
                    <li><a href="mailto:{{@$setting->mail}}" class="hover:text-gold transition-colors">
                            {{@$setting->mail}}</a>
                    </li>
                    <li class="pt-4">
                        <div class="flex gap-4">
                            @foreach ($setting->social_midea as $social)
                                <a href="{{@$social['url']}}"
                                    target="_blank" rel="noopener noreferrer" class="hover:text-gold transition-colors"
                                    aria-label="Visit our Instagram">
                                    <i class="{{@$social['platform']}} text-[20px]"></i>
                                </a>
                            @endforeach
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="container h-px w-full bg-accent/20 mb-2"></div>

        <!-- Footer Bottom -->
        <div class="text-center text-xs text-accent/60">
            Copyright © 2025 Sedra Travel . All Right Reserved. Powered By
            <a href="https://www.mv-is.com/" target="_blank">
                Master Vision Integrated Solutions
            </a> &
            <a href="https://www.wedo-eg.com/en" target="_blank">
                We Do
            </a>
        </div>
    </div>
</footer>
