import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';


const mapElement = document.getElementById('map');

const buildMap = () => {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    return new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
    });
};

const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('${marker.image_url}')`;
        element.style.backgroundSize = 'contain';
        element.style.width = '25px';
        element.style.height = '22px';

        new mapboxgl.Marker(element)
            .setLngLat([marker.lng, marker.lat])
            .setPopup(popup)
            .addTo(map);
    });
};

const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

var radius = 20;

function pointOnLine(angle) {
    return {
        "type": "Point",
        "coordinates": [
            13.385096,
            52.542409 + angle
        ]
    };
}

const initMapbox = () => {
    if (mapElement) {
        const map = buildMap();
        const markers = JSON.parse(mapElement.dataset.markers);
        addMarkersToMap(map, markers);
        fitMapToMarkers(map, markers);
        map.addControl(new MapboxGeocoder({
            accessToken: mapboxgl.accessToken,
            mapboxgl: mapboxgl
        }));
        map.on('load', function() {
            map.loadImage("../../assets/logo.png", function(error, image) {
                if (error) throw error;
                map.addImage('logo', image);
                map.addSource('point', {
                    "type": "geojson",
                    "data": pointOnLine(0)
                });

                map.addLayer({
                    "id": "point",
                    "source": "point",
                    "type": "symbol",
                    "layout": {
                        "icon-image": "logo",
                        "icon-allow-overlap": true,
                        "icon-ignore-placement": true,
                        "icon-size": 0.045
                    }
                });
                animateMarker(0);
            });
            // Add a source and layer displaying a point which will be animated in a circle.

            function animateMarker(timestamp) {
                // Update the data to a new position based on the animation timestamp. The
                // divisor in the expression `timestamp / 1000` controls the animation speed.
                                                                        //speed inverse corelation
                map.getSource('point').setData(pointOnLine(timestamp / 10000000));

                // Request the next frame of the animation.
                requestAnimationFrame(animateMarker);
            }

            // Start the animation.
            animateMarker(0);
        });
    }
};

export { initMapbox };
