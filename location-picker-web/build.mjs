import { build } from 'esbuild';
import { copyFile, mkdir } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import path from 'node:path';

const root = path.dirname(fileURLToPath(import.meta.url));
const output = path.resolve(root, '../apk-project/assets/location-picker');
await mkdir(output, { recursive: true });
await build({
  absWorkingDir: root,
  entryPoints: ['src/picker.js'],
  outfile: path.join(output, 'picker.js'),
  bundle: true,
  format: 'iife',
  platform: 'browser',
  target: 'es2020',
  minify: true,
  legalComments: 'eof',
  loader: { '.png': 'dataurl' },
});
await Promise.all([
  copyFile(path.join(root, 'src/index.html'), path.join(output, 'index.html')),
  copyFile(path.join(root, 'node_modules/maplibre-gl/dist/maplibre-gl-csp-worker.js'), path.join(output, 'maplibre-worker.js')),
  copyFile(path.join(root, 'node_modules/maplibre-gl/dist/LICENSE.txt'), path.join(output, 'MAPLIBRE-LICENSE.txt')),
  copyFile(path.join(root, 'src/OPENFREEMAP-LICENSE.txt'), path.join(output, 'OPENFREEMAP-LICENSE.txt')),
  copyFile(path.join(root, 'src/LIBERTY-LICENSE.txt'), path.join(output, 'LIBERTY-LICENSE.txt')),
  copyFile(path.join(root, 'vendor/location-picker/LICENSE'), path.join(output, 'LOCATION-PICKER-LICENSE.txt')),
  copyFile(path.join(root, 'node_modules/leaflet/LICENSE'), path.join(output, 'LEAFLET-LICENSE.txt')),
]);
console.log(`Bundled location-picker 3.0.1, MapLibre and English vector style into ${output}`);
