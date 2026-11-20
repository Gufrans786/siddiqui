from pathlib import Path
import os
import shutil
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parent
BUILD = ROOT / "build"
IS_WINDOWS = os.name == "nt"


def executable(directory, name):
    for suffix in ((".bat", ".exe") if IS_WINDOWS else ("",)):
        candidate = directory / (name + suffix)
        if candidate.exists():
            return str(candidate)
    raise FileNotFoundError(f"{name} not found in {directory}")


def newest(directory):
    return max((p for p in directory.iterdir() if p.is_dir()), key=lambda p: [int(x) if x.isdigit() else 0 for x in p.name.replace("-", ".").split(".")])


def run(command, env):
    print("+", " ".join(str(x) for x in command), flush=True)
    subprocess.run([str(x) for x in command], cwd=ROOT, env=env, check=True)


def main():
    android_home = Path(os.environ["ANDROID_HOME"])
    java_home = os.environ.get("JAVA_HOME")
    env = os.environ.copy()
    if java_home:
        env["JAVA_HOME"] = java_home
        env["PATH"] = str(Path(java_home) / "bin") + os.pathsep + env.get("PATH", "")
    java_bin = Path(java_home) / "bin" if java_home else Path(shutil.which("java")).parent
    javac = executable(java_bin, "javac")
    jar = executable(java_bin, "jar")
    build_tools = newest(android_home / "build-tools")
    aapt2 = executable(build_tools, "aapt2")
    d8 = executable(build_tools, "d8")
    zipalign = executable(build_tools, "zipalign")
    android_jar = newest(android_home / "platforms") / "android.jar"
    shutil.rmtree(BUILD, ignore_errors=True)
    generated = BUILD / "generated"
    classes = BUILD / "classes"
    dex = BUILD / "dex"
    generated.mkdir(parents=True)
    classes.mkdir(parents=True)
    dex.mkdir(parents=True)
    compiled = BUILD / "compiled.zip"
    run([aapt2, "compile", "--dir", ROOT / "res", "-o", compiled], env)
    unsigned = BUILD / "unsigned.apk"
    run([aapt2, "link", "-I", android_jar, "--manifest", ROOT / "AndroidManifest.xml", "--java", generated, "-o", unsigned, compiled], env)
    sources = [str(p) for p in (ROOT / "src").rglob("*.java")] + [str(p) for p in generated.rglob("*.java")]
    run([javac, "-source", "8", "-target", "8", "-encoding", "UTF-8", "-cp", android_jar, "-d", classes, *sources], env)
    classes_jar = BUILD / "classes.jar"
    run([jar, "cf", classes_jar, "-C", classes, "."], env)
    run([d8, "--lib", android_jar, "--output", dex, classes_jar], env)
    with_dex = BUILD / "with-dex.apk"
    with zipfile.ZipFile(unsigned) as source, zipfile.ZipFile(with_dex, "w") as target:
        for item in source.infolist():
            target.writestr(item, source.read(item.filename))
        target.write(dex / "classes.dex", "classes.dex", compress_type=zipfile.ZIP_DEFLATED)
    aligned = BUILD / "MGS_Offline_Password_Generator.apk"
    run([zipalign, "-f", "4", with_dex, aligned], env)
    keystore = os.environ.get("KEYSTORE")
    if keystore:
        final = BUILD / "MGS_Offline_Password_Generator-signed.apk"
        apksigner = executable(build_tools, "apksigner")
        run([apksigner, "sign", "--ks", keystore, "--ks-pass", "pass:" + os.environ["KEYSTORE_PASSWORD"], "--out", final, aligned], env)
        print(final)
    else:
        print(aligned)


if __name__ == "__main__":
    main()
