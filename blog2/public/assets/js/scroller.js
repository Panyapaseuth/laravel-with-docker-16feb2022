// add event listener on load
window.addEventListener('load', function() {

    // element scroll by
    document.querySelector('.js-element-scroll-by-down').addEventListener('click', function(e) {
        e.preventDefault();
        document.querySelector('.dropdown-content-2').scrollBy({ top: 100, left: 0, behavior: 'smooth' });
    });

    document.querySelector('.js-element-scroll-by-up').addEventListener('click', function(e) {
        e.preventDefault();
        document.querySelector('.dropdown-content-2').scrollBy({ top: -100, left: 0, behavior: 'smooth' });
    });
});/**
 * Created by aod on 6/24/2020.
 */
