# Building the current v3

## Recommended: companion full bundle

1. Extract `Locate_GO_v3_FULL_SOURCE_AND_APK.zip`.
2. Run `Verify-Package.ps1` from the extracted `Locate_GO_v3_Full_Handoff` folder.
3. Run `Build-Current.ps1`. On first use it expands the included full source ZIP into `source/`. This builds an aligned **unsigned** APK into `generated/`.
4. To sign on the current developer computer, run `Build-Current.ps1 -Sign`. It uses the existing Android debug keystore only when its certificate matches the delivered v3 APK. The private key is not copied into this bundle.
5. To use a different local keystore, run `Build-Current.ps1 -Keystore 'C:\private\your-key.jks'`. Supply its password through `KEYSTORE_PASSWORD` or the secure prompt. Optionally set `KEYSTORE_ALIAS`.

The current signed APK is already included in `releases/` and is ready to install. An unsigned rebuild needs signing before installation. Keeping the same package and signing certificate is necessary for an in-place update; a different key does not replace an existing differently signed installation.

## Prerequisites

- Python 3.11 or newer.
- JDK 17 recommended; a full JDK with `javac` is required.
- Android SDK platform `android-36` and build-tools `36.0.0`.
- Node 22.22+ and npm only when changing the web picker.
- Apktool 3.0.3 is included in the full bundle, with notices.

Set `ANDROID_HOME` and `JAVA_HOME` if the wrapper cannot find the installed tools. The wrapper defaults to SDK platform/build-tools 36; it does not install or upgrade the SDK/JDK.

## Editing and rebuilding

- Java/control changes: edit `autobid-java/`, then run the wrapper normally.
- Web picker changes: edit `location-picker-web/src/`, then run `Build-Current.ps1 -RebuildWeb` to install the pinned npm dependencies and rebuild assets.
- Native library hook changes: edit the five classes in `location-hooks/smali/`, then run `Build-Current.ps1 -RebuildNative`. This assembles the full supplied classes4 source with those substitutions.
- Use both switches when changing both web and native hook source.

Normal builds reuse the exact verified native-hook DEX from the working v3 release. This reduces unnecessary changes for UI/Java edits. `-RebuildNative` clears that shortcut and rebuilds the source. Parallel assembler metadata ordering can differ while declarations/source remain the same.

The builder preserves the binary baseline's resources, manifest, classes1-3/5 and native libraries. It replaces classes4/classes6 and adds picker assets. It does not attempt to compile the entire decompiled reference tree or regenerate the Hermes application from decompiled JS.

## Direct build from the source folder

Set these process environment variables, then run `python build.py`:

```powershell
$env:ANDROID_HOME = 'C:\path\to\Android\Sdk'
$env:JAVA_HOME = 'C:\path\to\jdk-17'
$env:ANDROID_PLATFORM = 'android-36'
$env:ANDROID_BUILD_TOOLS = '36.0.0'
$env:BASE_APK = 'C:\path\to\baseline\Locate_GO_4.1.0_AutoBid_Custom_Distance.apk'
$env:APKTOOL_JAR = 'C:\path\to\tools\apktool_3.0.3.jar'
python build.py
```

Optional `LOCATION_HOOKS_DEX` points to the full bundle's verified `build-support/current-location-hooks.dex`. Omit it when rebuilding native hooks. `KEYSTORE`, `KEYSTORE_PASSWORD` and `KEYSTORE_ALIAS` control signing. Password values are passed to apksigner through the environment rather than printed command lines.

## Checks

```text
python native-tests/run.py
python -m unittest migration/test_porting.py
python native-tests/validate_apk.py
cd location-picker-web
npm test
```

Browser tests need Playwright Chromium (`npx playwright install chromium`). The optional `test/smoke-public-map.mjs` is an online map-data check using only a public Eiffel Tower landmark. The normal test suite uses fixtures.

Native tests use JVM fixtures. The new UI and English map were checked in Chromium; end-to-end validation on an Android phone is still needed for a newly built or newly ported target. The preceding v2 app-location system was confirmed working by the user, and v3 retained its native location DEX.
