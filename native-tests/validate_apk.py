from pathlib import Path
from zipfile import ZipFile
import json
import os
import re
import struct

ROOT = Path(__file__).resolve().parents[1]


class Dex:
    def __init__(self, data):
        self.data = data
        self.strings = []
        for index in range(self.u32(56)):
            _, offset = self.leb(self.u32(self.u32(60) + 4 * index))
            self.strings.append(data[offset:data.index(b"\0", offset)].decode("utf-8", errors="replace"))
        self.types = [self.strings[self.u32(self.u32(68) + 4 * i)] for i in range(self.u32(64))]
        prototypes = []
        for i in range(self.u32(72)):
            _, result, parameters = struct.unpack_from("<III", data, self.u32(76) + 12 * i)
            arguments = [] if not parameters else [self.types[struct.unpack_from("<H", data, parameters + 4 + 2 * j)[0]] for j in range(self.u32(parameters))]
            prototypes.append("(" + "".join(arguments) + ")" + self.types[result])
        self.methods = []
        for i in range(self.u32(88)):
            owner, prototype, name = struct.unpack_from("<HHI", data, self.u32(92) + 8 * i)
            self.methods.append((self.types[owner], self.strings[name], prototypes[prototype]))
        self.classes = set()
        self.declared = set()
        self.bridge_methods = []
        for i in range(self.u32(96)):
            definition = self.u32(100) + 32 * i
            self.classes.add(self.types[self.u32(definition)])
            offset = self.u32(definition + 24)
            if offset:
                sizes = []
                for _ in range(4):
                    size, offset = self.leb(offset)
                    sizes.append(size)
                for _ in range(sizes[0] + sizes[1]):
                    _, offset = self.leb(offset)
                    _, offset = self.leb(offset)
                for count in sizes[2:]:
                    index = 0
                    for _ in range(count):
                        delta, offset = self.leb(offset)
                        index += delta
                        _, offset = self.leb(offset)
                        _, offset = self.leb(offset)
                        self.declared.add(self.methods[index])
            annotation = self.u32(definition + 20)
            if annotation:
                fields = self.u32(annotation + 4)
                for j in range(self.u32(annotation + 8)):
                    method, annotations = struct.unpack_from("<II", data, annotation + 16 + 8 * fields + 8 * j)
                    for k in range(self.u32(annotations)):
                        entry = self.u32(annotations + 4 + 4 * k)
                        annotation_type, _ = self.leb(entry + 1)
                        if self.types[annotation_type] == "Landroid/webkit/JavascriptInterface;":
                            self.bridge_methods.append(self.methods[method])

    def u32(self, offset):
        return struct.unpack_from("<I", self.data, offset)[0]

    def leb(self, offset):
        value = shift = 0
        while True:
            part = self.data[offset]
            offset += 1
            value |= (part & 127) << shift
            if part < 128:
                return value, offset
            shift += 7


def removed(name):
    upper = name.upper()
    return name in ("classes4.dex", "classes6.dex", "stamp-cert-sha256") or name.startswith("assets/location-picker/") or (
        upper.startswith("META-INF/") and (upper.endswith((".SF", ".RSA", ".DSA", ".EC")) or upper == "META-INF/MANIFEST.MF"))


base_name = "Locate_GO_4.1.0_AutoBid_Custom_Distance.apk"
base_candidates = (ROOT.parent / base_name, ROOT.parents[1] / "baseline" / base_name)
base = Path(os.environ["BASE_APK"]) if os.environ.get("BASE_APK") else next(
    (candidate for candidate in base_candidates if candidate.is_file()), base_candidates[0])
final = ROOT / "build/Locate_GO_4.1.0_Compact_English_v3.apk"
with ZipFile(base) as original, ZipFile(final) as apk:
    assert len(apk.namelist()) == len(set(apk.namelist()))
    assert apk.testzip() is None
    unchanged = 0
    for name in original.namelist():
        if not removed(name):
            assert apk.read(name) == original.read(name), name
            unchanged += 1
    seen = set()
    dexes = {}
    for name in apk.namelist():
        if name.endswith(".dex") and "/" not in name:
            parsed = Dex(apk.read(name))
            assert not (seen & parsed.classes), "Duplicate DEX classes"
            seen |= parsed.classes
            dexes[name] = parsed
    old = Dex(original.read("classes4.dex"))
    new = dexes["classes4.dex"]
    assert old.classes == new.classes and len(new.classes) == 8658
    assert old.declared == new.declared, "Changed existing method declarations"
    helper = "Lsa/lg/android/locate/autobid/AppLocationOverride;"
    references = {m for m in new.methods if m[0] == helper}
    assert len(references) == 8, references
    assert references <= dexes["classes6.dex"].declared, "Unresolved native hook"
    assert sorted(m[1] for m in dexes["classes6.dex"].bridge_methods) == ["cancel", "save"]
    for asset in (ROOT / "apk-project/assets/location-picker").iterdir():
        if asset.is_file():
            assert apk.read("assets/location-picker/" + asset.name) == asset.read_bytes()

changed = []
for patch in (ROOT / "location-hooks/smali").rglob("*.smali"):
    relative = patch.relative_to(ROOT / "location-hooks/smali")
    baseline = ROOT / "apk-project/smali_classes4" / relative
    blocks = lambda text: {m.group(1): m.group(0) for m in re.finditer(r"^\.method ([^\n]+)\n.*?^\.end method", text, re.M | re.S)}
    before, after = blocks(baseline.read_text(encoding="utf-8")), blocks(patch.read_text(encoding="utf-8"))
    assert before.keys() == after.keys()
    changed += [(relative.as_posix(), name) for name in before if before[name] != after[name]]
assert len(changed) == 8
report = {"unchanged_original_apk_members": unchanged, "classes4_inventory": len(new.classes),
          "preserved_classes4_method_declarations": len(new.declared), "resolved_hook_signatures": len(references),
          "changed_method_bodies": changed, "native_unit_assertions": 26, "picker_browser_tests": 5,
          "android_phone_runtime": "not tested: no connected device; local emulator image incomplete"}
output = ROOT.parent / "verification/compact-english-v3-validation.json"
output.parent.mkdir(exist_ok=True)
output.write_text(json.dumps(report, indent=2), encoding="utf-8")
print(json.dumps(report, indent=2))
