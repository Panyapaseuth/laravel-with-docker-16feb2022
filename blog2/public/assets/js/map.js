// Initialize and add the map
function initMap() {
    // The location of Uluru
    var uluru = {lat: 17.978927, lng: 102.628923};
    // The map, centered at Uluru
    var map = new google.maps.Map(
        document.getElementById('map'), {zoom: 18, center: uluru});
    // The marker, positioned at Uluru
    var marker = new google.maps.Marker({position: uluru, map: map});
}