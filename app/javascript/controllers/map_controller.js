import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/obryndahood/clf6p73dv00br01lnhqbkq0f2"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    navigator.geolocation.getCurrentPosition((position) => {
      const geolocation = {
        lng: position.coords.longitude,
        lat: position.coords.latitude
      }

      const geolocationMarkerColor = "#0074D9"
      const geolocationMarker = new mapboxgl.Marker({
        color: geolocationMarkerColor
      })
        .setLngLat([ geolocation.lng, geolocation.lat ])
        .addTo(this.map)
    })

    const markerColor = "#B10DC9"
    this.markersValue.forEach((marker) => {
      const mapboxMarker = new mapboxgl.Marker({
        color: markerColor
      })
      mapboxMarker.setLngLat([ marker.lng, marker.lat ])
      if (marker.info_window_html !== undefined) {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);
        mapboxMarker.setPopup(popup)
      }
      mapboxMarker.addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
