var geocoder = new google.maps.Geocoder();
geocoder.geocode({address: 'Jax Beach, FL'}, function(results, status) {
    var bounds = results[0].geometry.bounds,
        center = results[0].geometry.location;
    if (bounds) {
        var ne = bounds.getNorthEast(),
            sw = bounds.getSouthWest(),
            data = { sw: [sw.lat(), sw.lng()], ne: [ne.lat(), ne.lng()]};

            // ajax call to rails service API
    }
});

function initMap() {
  var uluru = {lat: -25.344, lng: 131.036};
  var map = new google.maps.Map(
      document.getElementById('map'), {
        zoom: 4, 
        center: uluru
    });
  var marker = new google.maps.Marker({position: uluru, map: map});
}

