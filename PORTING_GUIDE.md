# Moving the system to a new version or another app

The current build is pinned to the supplied Locate Go 4.1.0 APK. The base hash guard, DEX positions, 8,658-class count and native method selectors are intentional version-specific checks. Replacing the input filename or removing the hash guard does not port the system.

## 1. Inspect the new target separately

Keep its untouched APK and hashes. Run `migration/inspect_apk.py` against that APK. The report locates the eight known library methods in whatever DEX files actually contain them. Missing methods require investigation; matching signatures still require reviewing their implementation.

Decode into a **new** directory. Preserve the old project's complete source and working release separately. Never copy the old app's manifest, entire DEX files, or entire old RN/Mapbox/Transistorsoft classes over a newer application's classes.

## 2. Port the location adapter

Run `migration/generate_location_hooks.py` against the new decoded tree. It inserts eight small calls into the new classes and writes five candidate classes to a separate folder. Review each generated method and its register use, exception regions, superclass constructor and surrounding behavior.

The three location paths must remain aligned:

1. A live `android.location.Location` before background-location persistence/HTTP serialization.
2. React Native background-location JSON/current-position callbacks and app state.
3. Both RNMBX result objects and Mapbox's independent native puck consumer.

The active point is shared with `AutoBidService` distance filtering. Re-test save, edit, zero/negative coordinates, restart, in-flight actual GPS updates, multiple map views and Use real GPS. Preserve unrelated metadata and existing provider/mock flags.

## 3. Add the application entry points

The current source already contains these hooks in its **baseline** APK:

| Current class/file | Required integration |
| --- | --- |
| `sa/lg/android/locate/MainActivity` | `AutoBidLoginActivity.guard(activity)` and `AutoBidController.install(activity)` at the appropriate lifecycle point |
| `MainActivity.dispatchKeyEvent` | Forward Volume Up to `handleVolumeUp`; Volume Down to `handleVolumeDown`; fall through to the superclass for other events |
| RN `NetworkingModule` | `AutoBidRuntime.capture(headers, url)` using the actual new bridge header object and app session |
| RN `WebSocketModule$connect$2` | Forward text messages to `onOrderPayload` and binary messages to `onOrderBinary` with the right payload types |
| Application/service initialization | Establish the correct application context before using preferences and the override |

Class names and DEX locations can change. Review these independently of the eight library hooks. A different React Native architecture may require a different event/module adapter.

## 4. Adapt the app-specific backend and order schema

`LocateGoApi.java` targets Locate Go's existing API. For a different application, implement that app's authorized session, driver identity, request headers, endpoints, request/response schemas and error behavior. Do not assume that the JWT subject, order numbers, assignment transaction header, polling endpoint, compression or WebSocket envelope are the same.

`OrderFilter.java` currently reads fields including `status`, delivery cost, `restaurant_coordinates`, `customer_coordinates` and `list_drivers_reject`. Update these mappings and test with fixtures before enabling acceptance/rejection in the new target. Its current distance calculations use latitude,longitude order and kilometres.

`OfflineLicense.java`, `AutoBidLoginActivity.java` and the original generator utilities are a separate custom licensing system. Review the intended app identity, initialization and generator together when reusing it. Do not treat this guide as a way to bypass the new application's own authorization or platform protections.

## 5. Prepare the new manifest/build profile

Register the appropriate helper activity/service and required foreground-service/notification/location declarations for that target SDK. Keep the new application's resources, native ABIs, theme, application class and existing components. Choose a free overlay DEX location; do not overwrite an unrelated `classes6.dex` in another app.

Rebuild only the DEX containing the reviewed native changes. Update the version-specific class count and base hash in a **new** build profile after review. Review all string-based reflection references in `AppLocationOverride.java` and preserve public hook/bridge names through R8.

The Java helper namespace may remain separate from the Android application ID. If changing it, update source packages, all smali references, manifest entries, ProGuard rules and reflection strings consistently.

## 6. Validate and release

- Compile Java/R8 and assemble the new hooks without unresolved references or duplicate DEX classes.
- Preserve the new target's unmodified resources and libraries, and compare member hashes.
- Test native bridge callbacks, session capture, current-position behavior and the map/puck on a phone or working emulator.
- Test order parsing/filtering against known fixtures; verify actual backend behavior only with the app owner's authorized test account/environment.
- Sign with the appropriate developer key. Reusing the installed app's package requires the same signing identity for an in-place update. A new application identity normally uses its own key.

This full source contains the reusable custom implementation and the recovered old app reference, but it cannot establish the behavior of a future APK that has not yet been supplied and reviewed.
