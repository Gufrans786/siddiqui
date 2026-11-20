# Locate Go 4.1.0 — complete available source, Compact English v3

This full export includes **every member of the original application source ZIP**, overlaid with the current custom source, plus the complete supplied location-picker upstream repository. It is substantially larger than the earlier change-only ZIP.

## What is original and what is reconstructed

| Directory | Meaning | Build role |
| --- | --- | --- |
| `autobid-java/` | Editable Java implementing the current AutoBid panel, service, filters, session capture, licensing, picker and app location override | Compiled into the overlay DEX |
| `location-picker-web/src/` | Editable picker UI, bundled English street style and provider integration | Bundled by esbuild |
| `location-picker-web/vendor/location-picker/src/` | Supplied location-picker 3.0.1 TypeScript source, unchanged | Compiled as a library |
| `location-hooks/smali/` | Five active native library replacement classes containing eight added hooks | Assembled into classes4 |
| `apk-project/` | Complete decoded original APK: smali, resources, manifest, assets and packaged native libraries | Baseline/reference; the active five library classes are substituted by the builder |
| `reference-java/` | Complete supplied decompiled Java reference tree | Analysis only |
| `reference-js/index.decompiled.js` | Supplied Hermes decompilation | Analysis only |
| `upstream/location-picker-3.0.1/` | Complete original picker repository, including docs/tests | Upstream reference |
| `generator-android/`, `MGS_Offline_Password_Generator.html` | Original supplied licensing generator sources | Separate original utilities |
| `native-tests/`, `location-picker-web/test/` | Native integration fixtures and picker browser checks | Validation |
| `migration/` | Target inspection, candidate hook generation and current integration profile | Future port assistance |

The original developer's React Native/TypeScript repository, original Gradle project, source maps, and C/C++ sources for packaged `.so` files were **not supplied**. Decompiled references are not a replacement for that original repository: they can contain invalid/incomplete syntax and are not all compilable Java/JavaScript. This export includes everything actually available without describing recovered output as original source.

## Current behavior

- Volume Up opens the compact MGS Auto panel; Volume Down opens order history.
- The picker saves and applies a manual app location to background location, app state, the native Mapbox puck and AutoBid distance calculations. Use real GPS restores the actual source.
- English place/road labels use OpenFreeMap vector data with MapLibre. The user selected this keyless provider; it is not Google Maps.
- Driver session and All orders cards are hidden. Automatic session capture and the existing stored All orders setting remain intact.
- Price, pickup/dropoff distance and far-order rejection controls remain available.

## Build or analyze

Use `BUILD_GUIDE.md` to rebuild. The companion **Full Source and APK** bundle includes the exact binary baseline, current signed APK, verified native-hook cache, Apktool and a Windows build wrapper. JDK/Android SDK remain machine prerequisites. The separate full-source ZIP is intended for analysis and source review and can use those companion build inputs.

Start Kimi at `KIMI_START_HERE.txt`, then `migration/locatego-4.1.0.profile.json`. Follow `PORTING_GUIDE.md` for a newer version or a different application. The port helper produces candidate changes for review; it does not make arbitrary applications compatible automatically.

No developer keystore, `Key.txt`, device preferences, runtime bearer token, screenshots containing session details, npm cache, browser download or `node_modules` is included in this source export. Signing uses a local keystore supplied at build time.
