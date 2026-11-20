// Optional online smoke test. The only map coordinates are the public Eiffel Tower landmark.
// This script never reads user-provided coordinates, attachments, app settings or credentials.
import assert from 'node:assert/strict';
import { chromium } from 'playwright';
import { readFile } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import path from 'node:path';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const assets = path.resolve(root, '../apk-project/assets/location-picker');
const browser = await chromium.launch({ headless: true, args: ['--enable-unsafe-swiftshader'] });
try {
  const context = await browser.newContext({ viewport: { width: 300, height: 352 }, isMobile: true, hasTouch: true });
  const errors = [], requests = [];
  await context.route('**/*', async (route) => {
    const url = new URL(route.request().url());
    if (url.host === 'appassets.androidplatform.net') {
      const name = url.pathname.split('/').pop();
      assert.ok(['index.html', 'picker.js', 'picker.css', 'maplibre-worker.js'].includes(name));
      await route.fulfill({ contentType: name.endsWith('.js') ? 'application/javascript'
        : name.endsWith('.css') ? 'text/css' : 'text/html', body: await readFile(path.join(assets, name)) });
    } else if (url.host === 'tiles.openfreemap.org') {
      await route.continue();
    } else {
      errors.push('Unexpected request host: ' + url.host);
      await route.abort();
    }
  });
  const page = await context.newPage();
  page.on('pageerror', (error) => errors.push(error.message));
  page.on('console', (message) => { if (message.type() === 'error') errors.push(message.text()); });
  page.on('requestfailed', (request) => errors.push(request.failure().errorText));
  page.on('request', (request) => requests.push(request.url()));
  await page.addInitScript(() => { window.AndroidLocationPicker = { save() {}, cancel() {} }; });
  await page.goto('https://appassets.androidplatform.net/assets/location-picker/index.html?lat=48.8584&lng=2.2945&zoom=13');
  await page.waitForLoadState('networkidle', { timeout: 20000 });
  await page.waitForTimeout(1500);
  assert.equal((await page.locator('.maplibregl-map').boundingBox()).height, 176);
  assert.ok(await page.locator('.maplibregl-ctrl-zoom-in').isVisible());
  assert.equal(errors.length, 0, errors.join('\n'));
  await page.screenshot({ path: path.resolve(root, '../../verification/english-map-online.png') });
  console.log(JSON.stringify({ test: 'Public Eiffel Tower landmark only', requests: requests.length, errors,
    status: await page.locator('#status').innerText() }, null, 2));
} finally {
  await browser.close();
}
