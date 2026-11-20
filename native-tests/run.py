from pathlib import Path
import os
import shutil
import subprocess

root = Path(__file__).resolve().parent
java_home = os.environ.get("JAVA_HOME")
java = str(Path(java_home) / "bin" / "java.exe") if java_home else shutil.which("java")
javac = str(Path(java_home) / "bin" / "javac.exe") if java_home else shutil.which("javac")
library = root / "lib" / "json-20240303.jar"
classes = root / "build"
classes.mkdir(exist_ok=True)
production = root.parent / "autobid-java" / "sa" / "lg" / "android" / "locate" / "autobid"
sources = [str(p) for p in (root / "src").rglob("*.java")]
sources += [str(production / name) for name in ("AutoBidPreferences.java", "AppLocationOverride.java")]
subprocess.run([javac, "-encoding", "UTF-8", "-cp", str(library), "-d", str(classes), *sources], check=True)
subprocess.run([java, "-cp", str(classes) + os.pathsep + str(library), "NativeLocationTest"], check=True)
