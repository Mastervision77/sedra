
// toggle button
const menuButton = document.getElementById('mobile-menu-button');
const mobileMenu = document.getElementById('mobile-menu');
const menuIcon = document.getElementById('menu-icon');
const closeIcon = document.getElementById('close-icon');

menuButton.addEventListener('click', () => {
    mobileMenu.classList.toggle('hidden');
    menuIcon.classList.toggle('hidden');
    closeIcon.classList.toggle('hidden');
});



// package
const swiper = new Swiper('.swiper-pac', {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    breakpoints: {
        768: { slidesPerView: 2 },
        1024: { slidesPerView: 3 },
    },
    navigation: {
        nextEl: '.swiper-button-next-pac',
        prevEl: '.swiper-button-prev-pac',
    },
});


// destination
const DesSwiper = new Swiper('.swiper-des', {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    breakpoints: {
        768: { slidesPerView: 2 },
        1024: { slidesPerView: 3 },
    },
    navigation: {
        nextEl: '.swiper-button-next-des',
        prevEl: '.swiper-button-prev-des',
    },
});

// //test
// const swiperTest = new Swiper('.testimonials-swiper', {
//     slidesPerView: 1,
//     spaceBetween: 20,
//     loop: true,
//     breakpoints: {
//         768: { slidesPerView: 2 },
//         1024: { slidesPerView: 3 },
//     },
//     navigation: {
//         nextEl: '.swiper-button-next-test',
//         prevEl: '.swiper-button-prev-test',
//     },
// });


const tabButtons = document.querySelectorAll('.tab-btn');
const tabContents = document.querySelectorAll('.tab-content');

tabButtons.forEach(btn => {
    btn.addEventListener('click', () => {
        const tab = btn.dataset.tab;
        tabButtons.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        tabContents.forEach(content => content.classList.add('hidden'));
        if (tab === 'reviews') document.querySelector('#reviewsContent').classList.remove('hidden');
        else if (tab === 'videos') document.querySelector('#videosContent').classList.remove('hidden');
    });
});

// Initialize Swipers
const swiperTest = new Swiper('.testimonials-swiper', {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    breakpoints: { 768: { slidesPerView: 2 }, 1024: { slidesPerView: 3 } },
    navigation: { nextEl: '.swiper-button-next-test', prevEl: '.swiper-button-prev-test' },
});

const swiperVideos = new Swiper('.videos-swiper', {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    breakpoints: { 768: { slidesPerView: 2 }, 1024: { slidesPerView: 3 } },
    navigation: { nextEl: '.swiper-button-next-video', prevEl: '.swiper-button-prev-video' },
});




// doc
const swiperDoc = new Swiper('.myDocsSwiper', {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    breakpoints: {
        768: { slidesPerView: 2 },
        1024: { slidesPerView: 3 },
    },
    pagination: { el: '.swiper-pagination', clickable: true },
    autoplay: { delay: 3000 },
});


// related
const Relatedswiper = new Swiper(".mySwiper", {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    navigation: {
        nextEl: ".swiper-button-next-destpac",
        prevEl: ".swiper-button-prev-destpac",
    },
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    breakpoints: {
        640: { slidesPerView: 1 },
        768: { slidesPerView: 2 },
        1024: { slidesPerView: 3 },
    },
});

const swiperg = new Swiper(".mySwiperG", {
    slidesPerView: 1, // show 1 slide on mobile
    spaceBetween: 20,
    loop: true,
    breakpoints: {
        640: {
            slidesPerView: 2, // 2 slides on small screens
        },
        1024: {
            slidesPerView: 3, // 3 slides on larger screens
        },
    },
});

const gallerySwiper = new Swiper(".gallerySwiper", {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        768: {
            slidesPerView: 2, // 2 slides on medium screens
        },
        1024: {
            slidesPerView: 3, // 3 slides on large screens
        },
    },
});

document.addEventListener('DOMContentLoaded', function () {

    const modal = document.getElementById('shareModal');
    const openBtn = document.getElementById('openShareModal');
    const closeBtn = document.getElementById('closeShareModal');
    const copyBtn = document.getElementById('copyShareLink');
    const shareInput = document.getElementById('shareLink');

    // Open modal
    openBtn.addEventListener('click', () => {
        modal.classList.remove('hidden');
        document.body.classList.add('overflow-hidden');
    });

    // Close modal
    closeBtn.addEventListener('click', closeModal);

    // Close when clicking outside modal
    modal.addEventListener('click', (e) => {
        if (e.target === modal) {
            closeModal();
        }
    });

    function closeModal() {
        modal.classList.add('hidden');
        document.body.classList.remove('overflow-hidden');
    }

    // Copy link
    copyBtn.addEventListener('click', () => {
        shareInput.select();
        shareInput.setSelectionRange(0, 99999);
        navigator.clipboard.writeText(shareInput.value);

        copyBtn.innerText = 'Copied!';
        setTimeout(() => {
            copyBtn.innerText = 'Copy';
        }, 1500);
    });

});
