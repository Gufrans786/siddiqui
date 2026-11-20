import json
from pathlib import Path
import shutil
import tempfile
import unittest

from migration.generate_location_hooks import generate

ROOT = Path(__file__).resolve().parents[1]


class PortingTests(unittest.TestCase):
    def setUp(self):
        self.test_root = ROOT / "migration/.test-temp"
        self.test_root.mkdir(exist_ok=True)
        self.temporary = tempfile.TemporaryDirectory(prefix="locatego-porting-", dir=self.test_root)
        self.root = Path(self.temporary.name).resolve()
        assert self.root.parent == self.test_root.resolve()
        self.profile = json.loads((ROOT / "migration/locatego-4.1.0.profile.json").read_text())
        self.decoded = self.root / "decoded"
        for classname in {hook["class"] for hook in self.profile["hooks"]}:
            source = ROOT / "apk-project/smali_classes4" / (classname + ".smali")
            destination = self.decoded / "smali_classes9" / (classname + ".smali")
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source, destination)

    def tearDown(self):
        assert self.root.parent == self.test_root.resolve()
        self.temporary.cleanup()

    def test_generates_all_hooks_without_changing_input(self):
        before = {p: p.read_bytes() for p in self.decoded.rglob("*.smali")}
        output = self.root / "candidate"
        report = generate(self.decoded, output, self.profile, self.profile["helper_package"])
        self.assertEqual(sum(item["inserted"] for item in report), 8)
        self.assertEqual(len(list(output.rglob("*.smali"))), 5)
        for path, data in before.items():
            self.assertEqual(path.read_bytes(), data)

    def test_missing_signature_writes_no_candidate_classes(self):
        broken = json.loads(json.dumps(self.profile))
        broken["hooks"][-1]["method"] = "missingUpdatedMethod()V"
        output = self.root / "missing"
        with self.assertRaises(ValueError):
            generate(self.decoded, output, broken, broken["helper_package"])
        self.assertFalse(output.exists())

    def test_marked_hooks_are_not_added_twice(self):
        generated = self.root / "first"
        generate(self.decoded, generated, self.profile, self.profile["helper_package"])
        next_decoded = self.root / "next-decoded"
        shutil.copytree(generated, next_decoded / "smali_classes7")
        report = generate(next_decoded, self.root / "second", self.profile, self.profile["helper_package"])
        self.assertFalse(any(item["inserted"] for item in report))


if __name__ == "__main__":
    unittest.main()
