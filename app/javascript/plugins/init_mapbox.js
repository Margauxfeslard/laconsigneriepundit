import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const inputDate = document.querySelector('.date_input');
// verifie qu'un input Date est bien présent poru éviter des'activer sur toutes les pages//
if (inputDate) {
  sessionStorage.panier = ""
  sessionStorage.growlers = ""

  // Ajouter la valeur de la date saisie en hidden input//
  const fixDateValue = (dateSaisie) => {
    document.addEventListener('change', (event) => {
      inputDate.insertAdjacentHTML('beforeend', `<input class="input" type="hidden" name="dateinput" value=${dateSaisie}>`);
    })
  }

  // Appelle la création de l'hidden input si on modifie la valeur de la date//
  inputDate.addEventListener("change", (event) => {
    const dateSaisie = document.querySelector('.date_input').value;
    fixDateValue(dateSaisie);
  })

}


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

    // Methode qui ajoute et enleve le bouton sur les Infowindow et affiche ou non le texte "date d'abord"//

    const addremovebouton = (newMarker) => {
      const inputDate = document.querySelector('.date_input');
      if (inputDate) {
        const dateSaisie = document.querySelector('.date_input').value;
        // verifie si une date est saisie//
        if (dateSaisie === "") {
          const element = newMarker._popup._content.querySelectorAll(".infowindow-card-pointcollecte");
          element.forEach((el) => {
            el.querySelector('.boutoncmd').setAttribute("hidden", true);
            el.querySelector('.textadvise').removeAttribute("hidden", false);
            const hidden = el.querySelector('#hiddendatevalue');
            hidden.value = dateSaisie
          })

        } else {
          const element = newMarker._popup._content.querySelectorAll(".infowindow-card-pointcollecte");
          element.forEach((el) => {
            el.querySelector('.boutoncmd').removeAttribute("hidden");
            el.querySelector('.textadvise').setAttribute("hidden", true);
            const hidden = el.querySelector('#hiddendatevalue');
            hidden.value = dateSaisie
          })
        }
      }
    }


    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup({ className: 'popup-class' }).setHTML(marker.infoWindow);
      const newMarker = new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(map);
      newMarker.getElement().addEventListener("click", (event) => {
        //lancer la méthode d'affochage ou non du bouton dans les infowindow au click sur un marker//
        addremovebouton(newMarker);
      })

    });

    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
    map.addControl(new mapboxgl.FullscreenControl());

    //récupérer les données de l'input adresse//

    const initAdress = (user_address) => {
      // Initialise l'input adresse à l'adresse du client//
      const input_address = document.querySelector(".mapboxgl-ctrl-geocoder--input");
      input_address.value += user_address;
    }

    document.addEventListener('DOMContentLoaded', (event) => {
      // Lance initAdresse au chargement du DOM (de la page)//
      const user_address = document.querySelector(".dataset").dataset.address;
      initAdress(user_address);
      const pcollexist = document.querySelector(".datasetpcoll")
      if (pcollexist === null) {
        document.querySelector(".stripe-button-el").setAttribute("hidden", true)
      } else {
        document.querySelector(".stripe-button-el").removeAttribute("hidden")
      }
    });
  }
};
export { initMapbox };