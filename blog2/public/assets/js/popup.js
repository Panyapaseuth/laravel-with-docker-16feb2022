$('#login').fadeIn();

$(".popup-btn").click(function () {
    var target = $(this).attr("href");
    $(target).fadeIn();
});

$(".popup .close").click(function () {
    $(".popup").fadeOut();
});
//# sourceURL=pen.js
window.onclick = function(event) {
    $(".popup").fadeOut();
};