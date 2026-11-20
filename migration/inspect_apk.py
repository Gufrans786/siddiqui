"""Read-only DEX surface inventory; no app launch, installation or network requests."""
from pathlib import Path
from zipfile import ZipFile
import argparse
import hashlib
import json

from dex_inventory import Dex


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", type=Path, required=True)
    parser.add_argument("--profile", type=Path, default=Path(__file__).with_name("locatego-4.1.0.profile.json"))
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    with args.apk.open("rb") as stream:
        digest = hashlib.file_digest(stream, "sha256").hexdigest()
    inventory = []
    methods = {}
    with ZipFile(args.apk) as apk:
        for name in apk.namelist():
            if name.endswith(".dex") and "/" not in name:
                dex = Dex(apk.read(name))
                inventory.append({"dex": name, "classes": len(dex.classes), "declared_methods": len(dex.declared)})
                for owner, method, descriptor in dex.declared:
                    methods[(owner, method + descriptor)] = name
    hooks = []
    for hook in profile["hooks"]:
        location = methods.get(("L" + hook["class"] + ";", hook["method"]))
        hooks.append({**hook, "present": location is not None, "actual_dex": location})
    report = {
        "target": str(args.apk.resolve()), "sha256": digest,
        "matches_known_base_apk": digest == profile["base_apk_sha256"],
        "dex_inventory": inventory, "location_hook_surface": hooks,
        "matching_hooks": sum(hook["present"] for hook in hooks),
        "total_hooks": len(hooks), "requires_manual_review": True,
        "limits": ["Exact method signature inventory only; method behavior is not validated.",
                   "Lifecycle, manifest, authorization and backend/order-schema adaptation must be reviewed separately.",
                   "No application was executed and no backend request was made."]
    }
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(json.dumps(report, indent=2), encoding="utf-8")
    print(f"Matched {report['matching_hooks']}/{report['total_hooks']} hook signatures; manual review still required.")
    print(args.out.resolve())


if __name__ == "__main__":
    main()
