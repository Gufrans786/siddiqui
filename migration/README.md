# Porting the current system

The scripts in this directory inspect a supplied APK and generate **candidate** library hooks in a separate output directory. They do not install an app, contact a backend, change the supplied APK, or authorize actions on a service.

1. Run `python migration/inspect_apk.py --apk NEW.apk --out target-report.json`.
2. Decode the new APK into a fresh directory using the bundled Apktool: `java -jar apktool_3.0.3.jar d --no-res NEW.apk -o new-decoded`.
3. Run `python migration/generate_location_hooks.py --decoded new-decoded --out candidate-location-hooks`.
4. Review the generated classes against the **new** decoded classes. The generator inserts eight small calls; it does not substitute old library class bodies.
5. Follow `PORTING_GUIDE.md` in the project root for the application lifecycle, session, WebSocket, manifest, API and build-profile changes that are outside these eight library hooks.

Missing/changed selectors stop generation. An eight-of-eight signature match is only a compatibility hint; it does not prove unchanged library behavior. The current build's APK hash, DEX locations and class count deliberately describe Locate Go 4.1.0. A new target requires a reviewed build profile.

The helper namespace defaults to `sa/lg/android/locate/autobid`. Use `--helper-package your/java/package` only if the Java source, shrinker rules, manifest and other hook references have been changed consistently.
