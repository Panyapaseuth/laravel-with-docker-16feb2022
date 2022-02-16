var swiper = new Swiper('.swiper-container2', {
    pagination: {
        el: '.swiper-pagination',
        type: 'progressbar',
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
    loop: true,
    autoplay: {
        delay: 6500,
        disableOnInteraction: false,
    },
});

var swiper = new Swiper('.swiper-container', {
    // Default parameters
    slidesPerView: 1,
    spaceBetween: 10,
    // Responsive breakpoints
    breakpoints: {
        600: {
            slidesPerView: 2,
            spaceBetween: 20
        },
        900: {
            slidesPerView: 3,
            spaceBetween: 20
        },
        // when window width is >= 320px
        1000: {
            slidesPerView: 3,
            spaceBetween: 20
        },
        // when window width is >= 480px
        1300: {
            slidesPerView: 4,
            spaceBetween: 30
        },
        // when window width is >= 640px
        1600: {
            slidesPerView: 5,
            spaceBetween: 40
        }
    },

    loop: true,
    autoplay: {
        delay: 2500,
        disableOnInteraction: false,
    },
    pagination: {
        el: '.swiper-pagination',
        dynamicBullets: true,
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
    height: 50,
});/**
 * Created by aod on 3/2/2020.
 */
