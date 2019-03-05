// THIS PART FOR THE SIZE OF THE WINDOW
var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
var h = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);


// THIS PART FOR THE SIZE OF THE MAP
$(document).ready(function(){
  $('div#map').css("height", h);
});

// THIS PART FOR THE MAP LOAD
$(document).ready(function() {
  var mymap = L.map('map').setView([4.67795, -74.04577], 17);

        L.tileLayer('https://api.mapbox.com/styles/v1/lternera/cj3yv171306ma2rprn1soczke/tiles/256/{z}/{x}/{y}?access_token=pk.eyJ1IjoibHRlcm5lcmEiLCJhIjoiY2l6d3dsamlhMDFtdDMybHNiOWJsejB3byJ9.hMuAlbbTiS-HdnW41SwPlA', {
          attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
          maxZoom: 18,
          id: 'lternera.cj3yv8zhw0jap2rjxukdytcqf',
          accessToken: 'pk.eyJ1IjoibHRlcm5lcmEiLCJhIjoiY2l6d3dsamlhMDFtdDMybHNiOWJsejB3byJ9.hMuAlbbTiS-HdnW41SwPlA'
        }).addTo(mymap);
});