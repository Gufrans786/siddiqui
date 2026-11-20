from pathlib import Path
import hashlib
import os
import shutil
import subprocess
import sys
import zipfile

ROOT = Path(__file__).resolve().parent
BUILD = ROOT / "build"
IS_WINDOWS = os.name == "nt"
ARTIFACT = "Locate_GO_4.1.0_Compact_English_v3"
BASE_NAME = "Locate_GO_4.1.0_AutoBid_Custom_Distance.apk"
BASE_SHA256 = "c216274bacbf8d7dd607a0f9ce7daf657026ec0bec8c26c5a19bd11b5faef942"


def executable(directory, name):
    suffixes = [".bat", ".exe"] if IS_WINDOWS else [""]
    for suffix in suffixes:
        candidate = directory / (name + suffix)
        if candidate.exists():
            return str(candidate)
    raise FileNotFoundError(f"{name} not found in {directory}")


def newest(directory, prefix):
    candidates = [p for p in directory.iterdir() if p.is_dir() and p.name.startswith(prefix)]
    if not candidates:
        raise FileNotFoundError(f"No {prefix}* entry in {directory}")
    return max(candidates, key=lambda p: [int(x) if x.isdigit() else 0 for x in p.name.replace("-", ".").split(".")])


def run(command, env):
    print("+", " ".join(str(x) for x in command), flush=True)
    subprocess.run([str(x) for x in command], cwd=ROOT, env=env, check=True)


def main():
    android_home = Path(os.environ["ANDROID_HOME"])
    base_apk = Path(os.environ.get("BASE_APK", str(ROOT.parent / BASE_NAME))).resolve()
    if not base_apk.is_file():
        raise RuntimeError(f"Set BASE_APK to the supplied {BASE_NAME}")
    with base_apk.open("rb") as original:
        if hashlib.file_digest(original, "sha256").hexdigest() != BASE_SHA256:
            raise RuntimeError("BASE_APK does not match the supplied Custom Distance APK")
    java_home = os.environ.get("JAVA_HOME")
    env = os.environ.copy()
    if java_home:
        env["JAVA_HOME"] = java_home
        env["PATH"] = str(Path(java_home) / "bin") + os.pathsep + env.get("PATH", "")
    java = executable(Path(java_home) / "bin" if java_home else Path(shutil.which("java")).parent, "java")
    javac = executable(Path(java_home) / "bin" if java_home else Path(shutil.which("javac")).parent, "javac")
    platform = android_home / "platforms" / os.environ["ANDROID_PLATFORM"] if os.environ.get("ANDROID_PLATFORM") else newest(android_home / "platforms", "android-")
    build_tools = android_home / "build-tools" / os.environ["ANDROID_BUILD_TOOLS"] if os.environ.get("ANDROID_BUILD_TOOLS") else newest(android_home / "build-tools", "")
    d8_jar = build_tools / "lib" / "d8.jar"
    zipalign = executable(build_tools, "zipalign")
    apksigner = executable(build_tools, "apksigner")
    android_jar = platform / "android.jar"
    classes = BUILD / "classes"
    dex = BUILD / "dex"
    if BUILD.resolve().parent != ROOT or BUILD.name != "build":
        raise RuntimeError("Refusing to clean a build directory outside this project")
    assets = ROOT / "apk-project" / "assets" / "location-picker"
    if not all((assets / name).is_file() for name in ("index.html", "picker.js", "picker.css", "maplibre-worker.js")):
        raise RuntimeError("Build the picker first: cd location-picker-web; npm ci; npm run build")
    shutil.rmtree(BUILD, ignore_errors=True)
    classes.mkdir(parents=True)
    dex.mkdir(parents=True)
    temporary = BUILD / "tmp"
    temporary.mkdir()
    env["TEMP"] = env["TMP"] = str(temporary)
    sources = [str(p) for p in (ROOT / "autobid-java").rglob("*.java")]
    run([javac, "-source", "8", "-target", "8", "-encoding", "UTF-8", "-cp", android_jar, "-d", classes, *sources], env)
    classes_jar = BUILD / "autobid-classes.jar"
    with zipfile.ZipFile(classes_jar, "w", compression=zipfile.ZIP_DEFLATED) as archive:
        for compiled in classes.rglob("*.class"):
            archive.write(compiled, compiled.relative_to(classes).as_posix())
    java_temp = "-Djava.io.tmpdir=" + str(temporary)
    run([java, java_temp, "-cp", d8_jar, "com.android.tools.r8.R8", "--release", "--min-api", "24", "--lib", android_jar,
         "--pg-conf", ROOT / "autobid-obfuscation.pro", "--output", dex, classes_jar], env)
    hooked_dex = BUILD / "classes4.dex"
    native_dex = os.environ.get("LOCATION_HOOKS_DEX")
    native_base = os.environ.get("LOCATION_HOOKS_APK")
    if native_dex:
        with Path(native_dex).open("rb") as known:
            if hashlib.file_digest(known, "sha256").hexdigest() != "019817b5d58cb8777e0774158440c5468b1d0d1974b0f701b9d9d9f7d7f04d59":
                raise RuntimeError("LOCATION_HOOKS_DEX is not the known working v3 native hook DEX")
        shutil.copyfile(native_dex, hooked_dex)
        print("Reused verified current native location hook DEX", flush=True)
    elif native_base:
        # For UI-only updates, reuse the exact location DEX confirmed working on the user's phone.
        with Path(native_base).open("rb") as known:
            if hashlib.file_digest(known, "sha256").hexdigest() != "4480418460e78cf7743bd53eea241bd7485765cbe5d4c62d1d7eb3057debc65b":
                raise RuntimeError("LOCATION_HOOKS_APK is not the known working v2 APK")
        with zipfile.ZipFile(native_base) as known:
            hooked_dex.write_bytes(known.read("classes4.dex"))
        print("Reused exact native location hook DEX from working v2", flush=True)
    else:
        apktool = os.environ.get("APKTOOL_JAR")
        if not apktool or not Path(apktool).is_file():
            raise RuntimeError("Set APKTOOL_JAR to apktool_3.0.3.jar to assemble the native location hooks")
        original_smali = ROOT / "apk-project" / "smali_classes4"
        if not original_smali.is_dir():
            source_zip = Path(os.environ.get("BASE_SOURCE", str(ROOT.parent / "Locate_GO_4.1.0_AutoBid_Custom_Distance_source.zip")))
            prefix = "LocateGo-AutoBid-source/apk-project/smali_classes4/"
            with zipfile.ZipFile(source_zip) as original:
                for item in original.infolist():
                    if item.filename.startswith(prefix) and not item.is_dir():
                        relative = Path(item.filename[len(prefix):])
                        if relative.is_absolute() or ".." in relative.parts or ":" in str(relative):
                            raise RuntimeError("Invalid source archive member")
                        destination = original_smali / relative
                        destination.parent.mkdir(parents=True, exist_ok=True)
                        destination.write_bytes(original.read(item))
        hook_tools = BUILD / "hook-tools"
        hook_tools.mkdir()
        run([javac, "-cp", apktool, "-d", hook_tools, ROOT / "location-hooks" / "AssembleLocationDex.java"], env)
        hooked_dex = BUILD / "classes4.dex"
        run([java, java_temp, "-cp", str(hook_tools) + os.pathsep + apktool, "AssembleLocationDex",
             original_smali, ROOT / "location-hooks" / "smali", hooked_dex], env)
    # The supplied APK already contains the Volume Up hook in classes5.dex.
    # Replace the Java overlay and classes4 location hooks, preserving binary resources
    # and the other original DEX/native files byte for byte.
    with_dex = BUILD / "with-autobid.apk"
    with zipfile.ZipFile(base_apk) as source, zipfile.ZipFile(with_dex, "w") as target:
        if "classes6.dex" not in source.namelist():
            raise RuntimeError("The base APK is missing the AutoBid overlay")
        for item in source.infolist():
            name = item.filename
            upper = name.upper()
            if name in ("classes4.dex", "classes6.dex") or name.startswith("assets/location-picker/"):
                continue
            if name == "stamp-cert-sha256" or (upper.startswith("META-INF/") and
                    (upper.endswith((".SF", ".RSA", ".DSA", ".EC")) or upper == "META-INF/MANIFEST.MF")):
                continue
            target.writestr(item, source.read(item.filename))
        target.write(dex / "classes.dex", "classes6.dex", compress_type=zipfile.ZIP_STORED)
        target.write(hooked_dex, "classes4.dex", compress_type=zipfile.ZIP_STORED)
        for asset in sorted(assets.rglob("*")):
            if asset.is_file():
                target.write(asset, "assets/location-picker/" + asset.relative_to(assets).as_posix(), compress_type=zipfile.ZIP_DEFLATED)
    aligned = BUILD / (ARTIFACT + "-unsigned.apk")
    run([zipalign, "-P", "16", "-f", "4", with_dex, aligned], env)
    keystore = os.environ.get("KEYSTORE")
    if keystore:
        if not os.environ.get("KEYSTORE_PASSWORD"):
            raise RuntimeError("Set KEYSTORE_PASSWORD to sign the APK")
        final = BUILD / (ARTIFACT + ".apk")
        signing = [apksigner, "sign", "--ks", keystore, "--ks-pass", "env:KEYSTORE_PASSWORD"]
        if os.environ.get("KEYSTORE_ALIAS"):
            signing += ["--ks-key-alias", os.environ["KEYSTORE_ALIAS"]]
        run([*signing, "--out", final, aligned], env)
        run([apksigner, "verify", "--verbose", final], env)
        print(final)
    else:
        print("Unsigned APK created; set KEYSTORE and KEYSTORE_PASSWORD to sign it:")
        print(aligned)


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        print(error, file=sys.stderr)
        sys.exit(1)
