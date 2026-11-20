import originalStyle from './openfreemap-liberty.json' with { type: 'json' };

// Raster labels cannot be localized. Vector labels let us choose English or a Latin transliteration.
export function englishStreetStyle() {
  const style = JSON.parse(JSON.stringify(originalStyle));
  style.name = 'Locate Go English Streets';
  for (const layer of style.layers) {
    const field = layer.layout?.['text-field'];
    if (field && /"name(?::[^"\s]+|_[^"\s]+)?"/.test(JSON.stringify(field))) {
      layer.layout['text-field'] = [
        'coalesce', ['get', 'name:en'], ['get', 'name_en'], ['get', 'name:latin'], '',
      ];
    }
  }
  style.sources.openmaptiles.attribution = '<a href="https://openfreemap.org/">OpenFreeMap</a> · '
    + '<a href="https://openmaptiles.org/">OpenMapTiles</a> · '
    + '© <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>';
  return style;
}
