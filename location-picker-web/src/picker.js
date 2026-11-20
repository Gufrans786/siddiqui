import { LocationPicker } from '../vendor/location-picker/src/core.ts';
import { maplibreProvider } from '../vendor/location-picker/src/maplibre.ts';
import maplibregl from 'maplibre-gl/dist/maplibre-gl-csp.js';
import 'maplibre-gl/dist/maplibre-gl.css';
import '../vendor/location-picker/src/styles/class.css';
import { englishStreetStyle } from './english-style.js';
import './style.css';

maplibregl.setWorkerUrl(new URL('maplibre-worker.js', location.href).href);

const latitude = document.querySelector('#latitude');
const longitude = document.querySelector('#longitude');
const status = document.querySelector('#status');
const query = new URLSearchParams(location.search);
const valid = (lat, lng) => Number.isFinite(lat) && Number.isFinite(lng)
  && lat >= -90 && lat <= 90 && lng >= -180 && lng <= 180;
const parseField = (input) => input.value.trim() === '' ? NaN : Number(input.value.trim());
const initialLat = query.has('lat') ? Number(query.get('lat')) : NaN;
const initialLng = query.has('lng') ? Number(query.get('lng')) : NaN;
const hasInitial = valid(initialLat, initialLng);
const initialZoom = Math.max(1, Math.min(19, Number(query.get('zoom')) || 13));
let picker;

function showCoordinates(point) {
  latitude.value = point.lat.toFixed(6);
  longitude.value = point.lng.toFixed(6);
}

function readCoordinates() {
  const lat = parseField(latitude);
  const lng = parseField(longitude);
  if (!valid(lat, lng)) {
    status.textContent = 'Enter latitude from -90 to 90 and longitude from -180 to 180.';
    return null;
  }
  return { lat, lng };
}

try {
  picker = new LocationPicker('#map', {
    provider: maplibreProvider({
      engine: maplibregl,
      engineCssUrl: false,
      mapStyle: englishStreetStyle(),
      mapOptions: { maxPitch: 0, fadeDuration: 0 },
    }),
    lang: 'en',
    value: hasInitial ? { lat: initialLat, lng: initialLng } : undefined,
    center: { lat: 24.7136, lng: 46.6753 },
    zoom: initialZoom,
    injectStyles: false,
    locate: 'off',
    search: false,
    geocoder: false,
    reverseGeocode: false,
    gestureHandling: 'greedy',
    onInput: showCoordinates,
    onChange: showCoordinates,
    onError: () => {
      status.textContent = 'Map unavailable. Enter coordinates below to save a location.';
    },
  });
  if (hasInitial) showCoordinates({ lat: initialLat, lng: initialLng });
  picker.ready.then(() => {
    const map = picker.map;
    map.addControl(new maplibregl.NavigationControl({ showCompass: false }), 'top-left');
    map.on('error', () => {
      status.textContent = 'Map data could not load. You can still enter and save coordinates.';
    });
  }).catch(() => {});
} catch {
  status.textContent = 'Map unavailable. Enter coordinates below to save a location.';
  if (hasInitial) showCoordinates({ lat: initialLat, lng: initialLng });
}

document.querySelector('#coordinates').addEventListener('submit', (event) => {
  event.preventDefault();
  const point = readCoordinates();
  if (!point) return;
  picker?.setLocation(point, { animate: false });
  showCoordinates(point);
  status.textContent = 'Pin moved. Tap Save location to keep this point.';
});

document.querySelector('#save').addEventListener('click', () => {
  // Read the fields so a last edit is included even without pressing Move pin.
  const point = readCoordinates();
  if (!point) return;
  const bridge = window.AndroidLocationPicker;
  if (!bridge || typeof bridge.save !== 'function') {
    status.textContent = 'Open this picker from the Locate Go card to save.';
    return;
  }
  bridge.save(point.lat, point.lng, picker?.zoom ?? initialZoom);
});

document.querySelector('#cancel').addEventListener('click', () => {
  window.AndroidLocationPicker?.cancel();
});
window.addEventListener('pagehide', () => picker?.destroy(), { once: true });
