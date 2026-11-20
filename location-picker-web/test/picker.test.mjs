import assert from 'node:assert/strict';
import { before, after, test } from 'node:test';
import { readFile, mkdir } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import path from 'node:path';
import { chromium } from 'playwright';
import { englishStreetStyle } from '../src/english-style.js';

const root = path.dirname(fileURLToPath(import.meta.url));
const assets = path.resolve(root, '../../apk-project/assets/location-picker');
const screenshots = path.resolve(root, '../../../verification');
let browser;
const base = 'https://appassets.androidplatform.net/assets/location-picker/index.html';

before(async () => {
  browser = await chromium.launch({ headless: true, args: ['--enable-unsafe-swiftshader'] });
  await mkdir(screenshots, { recursive: true });
});

after(async () => {
  await browser?.close();
});

async function open(query = '', offline = false) {
  const context = await browser.newContext({ viewport: { width: 300, height: 352 }, isMobile: true, hasTouch: true });
  const page = await context.newPage();
  const errors = [];
  const requests = [];
  page.on('pageerror', (error) => errors.push(error.message));
  page.on('request', (request) => requests.push(request.url()));
  await context.route('**/*', async (route) => {
    const url = route.request().url();
    if (url.startsWith('https://tiles.openfreemap.org/')) {
      if (offline) await route.abort();
      else if (url.endsWith('/planet')) await route.fulfill({ json: { tilejson: '3.0.0', tiles: ['https://tiles.openfreemap.org/fixture/{z}/{x}/{y}.pbf'], minzoom: 0, maxzoom: 14 } });
      else if (url.endsWith('.json')) await route.fulfill({ json: {} });
      else if (url.endsWith('.pbf')) await route.fulfill({ contentType: 'application/x-protobuf', body: Buffer.alloc(0) });
      else await route.fulfill({ contentType: 'image/png', body: Buffer.from('iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8/x8AAwMCAO+jN1sAAAAASUVORK5CYII=', 'base64') });
    } else if (url.startsWith(base.slice(0, base.indexOf('/index.html')))) {
      const name = new URL(url).pathname.split('/').pop();
      assert.ok(['index.html', 'picker.js', 'picker.css', 'maplibre-worker.js'].includes(name));
      await route.fulfill({ contentType: name.endsWith('.js') ? 'application/javascript'
        : name.endsWith('.css') ? 'text/css' : 'text/html', body: await readFile(path.join(assets, name)) });
    } else {
      await route.abort();
      errors.push(`Unexpected network request: ${url}`);
    }
  });
  await page.addInitScript(() => {
    window.saved = [];
    window.cancelled = 0;
    window.AndroidLocationPicker = {
      save: (lat, lng, zoom) => window.saved.push({ lat, lng, zoom }),
      cancel: () => window.cancelled++,
    };
  });
  await page.goto(base + query);
  await page.locator('.maplibregl-canvas').waitFor();
  assert.equal((await page.locator('.maplibregl-map').boundingBox()).height, 176, 'Map must fill its visible viewport');
  assert.ok(await page.locator('.maplibregl-ctrl-zoom-in').isVisible(), 'Zoom controls must remain visible');
  return { page, errors, requests };
}

test('requires a deliberate selection and accepts signed coordinates, including zero', async () => {
  const { page, errors, requests } = await open();
  await page.locator('#save').click();
  assert.equal(await page.evaluate(() => window.saved.length), 0);
  assert.match(await page.locator('#status').innerText(), /Enter latitude/);
  await page.locator('#latitude').fill('-33.8688');
  await page.locator('#longitude').fill('151.2093');
  await page.locator('#move').click();
  await page.locator('#save').click();
  let saved = await page.evaluate(() => window.saved.at(-1));
  assert.equal(saved.lat, -33.8688);
  assert.equal(saved.lng, 151.2093);
  assert.ok(saved.zoom >= 1 && saved.zoom <= 19);
  await page.locator('#latitude').fill('0');
  await page.locator('#longitude').fill('0');
  await page.locator('#save').click();
  saved = await page.evaluate(() => window.saved.at(-1));
  assert.equal(saved.lat, 0);
  assert.equal(saved.lng, 0);
  assert.equal(errors.length, 0, errors.join('\n'));
  assert.ok(requests.every((url) => url.startsWith('https://appassets.androidplatform.net/') || url.startsWith('https://tiles.openfreemap.org/')));
  await page.close();
});

test('rejects blank, nonfinite and out-of-range coordinates at save', async () => {
  const { page, errors } = await open();
  for (const [lat, lng] of [['91', '0'], ['0', '-181'], ['NaN', '5'], ['Infinity', '5'], ['', '20'], [' ', '0']]) {
    await page.locator('#latitude').fill(lat);
    await page.locator('#longitude').fill(lng);
    await page.locator('#save').click();
  }
  assert.equal(await page.evaluate(() => window.saved.length), 0);
  assert.equal(errors.length, 0, errors.join('\n'));
  await page.close();
});

test('restores the saved pin and zoom; panning updates coordinates; cancel never saves', async () => {
  const { page, errors } = await open('?lat=24.7136&lng=46.6753&zoom=15');
  assert.equal(await page.locator('#latitude').inputValue(), '24.713600');
  assert.equal(await page.locator('#longitude').inputValue(), '46.675300');
  await page.locator('#save').click();
  assert.deepEqual(await page.evaluate(() => window.saved[0]), { lat: 24.7136, lng: 46.6753, zoom: 15 });
  const map = page.locator('.maplibregl-map');
  await map.focus();
  await page.keyboard.press('ArrowRight');
  await page.waitForFunction(() => document.querySelector('#longitude').value !== '46.675300');
  const count = await page.evaluate(() => window.saved.length);
  await page.locator('#cancel').click();
  assert.equal(await page.evaluate(() => window.cancelled), 1);
  assert.equal(await page.evaluate(() => window.saved.length), count);
  assert.equal(errors.length, 0, errors.join('\n'));
  await page.screenshot({ path: path.join(screenshots, 'location-picker-web.png') });
  const dimensions = await page.evaluate(() => ({ width: document.documentElement.scrollWidth, height: document.documentElement.scrollHeight }));
  assert.ok(dimensions.width <= 300, `Horizontal overflow: ${dimensions.width}`);
  assert.ok(dimensions.height <= 352, `Vertical overflow: ${dimensions.height}`);
  await page.close();
});

test('manual coordinates still save when map tiles are offline', async () => {
  const { page, errors } = await open('', true);
  await page.locator('#latitude').fill('21.5433');
  await page.locator('#longitude').fill('39.1728');
  await page.locator('#save').click();
  assert.deepEqual(await page.evaluate(() => window.saved[0]), { lat: 21.5433, lng: 39.1728, zoom: 13 });
  assert.equal(errors.length, 0, errors.join('\n'));
  await page.close();
});

test('all named vector map labels prefer English and omit the Arabic/local-name fallback', () => {
  const style = englishStreetStyle();
  const named = style.layers.filter((layer) => layer.layout?.['text-field'] && JSON.stringify(layer.layout['text-field']).includes('name'));
  assert.equal(named.length, 20);
  for (const layer of named) {
    assert.deepEqual(layer.layout['text-field'], ['coalesce', ['get', 'name:en'], ['get', 'name_en'], ['get', 'name:latin'], '']);
  }
  assert.match(style.sources.openmaptiles.attribution, /OpenStreetMap/);
});
