import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup({ className: 'popup-class' }).setHTML(marker.infoWindow);
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
    });

    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
    map.addControl(new mapboxgl.FullscreenControl());

    //récupérer les données de l'input adresse//

    const initAdress = (user_address) => {
      const input_address = document.querySelector(".mapboxgl-ctrl-geocoder--input");
      input_address.value += user_address;
    }

    document.addEventListener('DOMContentLoaded', (event) => {
      const user_address = document.querySelector(".dataset").dataset.address;
      initAdress(user_address);
    });


    const input_address = document.querySelector(".mapboxgl-ctrl-geocoder--input");
    input_address.addEventListener("input", (event) => {
    })

    $('#map').on('click', '.trigger', function() {
      alert('Hello from Toronto!');
  });

  }
};

export { initMapbox };