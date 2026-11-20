"""Generate candidate hooks from NEW decoded classes; never copy old library implementations."""
from pathlib import Path
import argparse
import json
import re


def locate_method(text, selector):
    matches = [m for m in re.finditer(r"^\.method [^\n]+\n.*?^\.end method", text, re.M | re.S)
               if m.group(0).splitlines()[0].endswith(" " + selector)]
    if len(matches) != 1:
        raise ValueError(f"Expected one method matching {selector}; found {len(matches)}")
    return matches[0]


def inject_entry(block, code):
    lines = block.splitlines(keepends=True)
    annotations = 0
    for index, line in enumerate(lines[1:], 1):
        value = line.strip()
        if value.startswith(".annotation"):
            annotations += 1
        if value.startswith(".end annotation"):
            annotations -= 1
            continue
        if annotations or not value or value.startswith((".", "#", ":")):
            continue
        return "".join(lines[:index]) + code + "\n" + "".join(lines[index:])
    raise ValueError("No code entry found")


def apply_hook(block, hook, helper):
    marker = "# LOCATEGO-HOOK: " + hook
    if marker in block:
        return block, False
    if "Lsa/lg/android/locate/autobid/AppLocationOverride;" in block:
        raise ValueError("This method already has an unmarked override hook; review it manually")
    prefix = "    " + marker + "\n"
    if hook.endswith("_register"):
        names = {"background_register": "registerBackgroundModule", "map_manager_register": "registerMapManager", "puck_register": "registerPuck"}
        if hook == "puck_register":
            code = f"    invoke-static/range {{p0 .. p0}}, {helper}->registerPuck(Ljava/lang/Object;)V"
        else:
            code = f"    invoke-static/range {{p0 .. p1}}, {helper}->{names[hook]}(Ljava/lang/Object;Landroid/content/Context;)V"
        # The superclass constructor must run before passing this object to a helper.
        matches = list(re.finditer(r"^    invoke-direct(?:/range)? [^\n]+-><init>\([^\n]*\)V$", block, re.M))
        if not matches or "p0" not in matches[0].group(0):
            raise ValueError("Could not establish the superclass constructor anchor")
        first = matches[0]
        return block[:first.end()] + "\n\n" + prefix + code + block[first.end():], True
    if hook == "background_json":
        code = f"    invoke-static/range {{p0 .. p0}}, {helper}->jsonLocation(Lorg/json/JSONObject;)Lorg/json/JSONObject;\n    move-result-object p0"
    elif hook == "android_live_location":
        code = f"    invoke-static/range {{p1 .. p2}}, {helper}->androidLocation(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Location;\n    move-result-object p2"
    elif hook == "puck_update":
        code = f"    invoke-static/range {{p0 .. p1}}, {helper}->puckLocation(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\n    move-result-object p1\n    check-cast p1, [Lcom/mapbox/geojson/Point;"
    elif hook == "background_current":
        locals_match = re.search(r"^    \.locals (\d+)$", block, re.M)
        if not locals_match or int(locals_match.group(1)) < 2:
            raise ValueError("Current-position hook requires two entry scratch locals; review register layout")
        code = (f"    move-object/from16 v0, p0\n    move-object/from16 v1, p2\n"
                f"    invoke-static/range {{v0 .. v1}}, {helper}->currentPosition(Ljava/lang/Object;Ljava/lang/Object;)Z\n"
                "    move-result v0\n    if-eqz v0, :locatego_real_current\n    return-void\n    :locatego_real_current")
        if ":locatego_real_current" in block:
            raise ValueError("The planned branch label is already used")
    elif hook == "map_result":
        returns = list(re.finditer(r"^    return-object ([vp]\d+)$", block, re.M))
        if len(returns) != 1:
            raise ValueError("Expected a single object return; review the new getter implementation")
        result = returns[0]
        register = result.group(1)
        code = (prefix + f"    invoke-static/range {{{register} .. {register}}}, {helper}->mapboxLocation(Ljava/lang/Object;)Ljava/lang/Object;\n"
                f"    move-result-object {register}\n    check-cast {register}, Lcom/mapbox/common/location/Location;\n\n")
        return block[:result.start()] + code + block[result.start():], True
    else:
        raise ValueError("Unsupported hook: " + hook)
    return inject_entry(block, prefix + code), True


def generate(decoded, output, profile, helper_package):
    if output.resolve() == decoded.resolve() or output.resolve().is_relative_to(decoded.resolve()):
        raise ValueError("Output must be separate from the decoded input tree")
    helper = "L" + helper_package.strip("/").replace(".", "/") + "/AppLocationOverride;"
    prepared = {}
    report = []
    for hook in profile["hooks"]:
        relative = Path(hook["class"] + ".smali")
        if relative.is_absolute() or ".." in relative.parts or ":" in str(relative):
            raise ValueError("Invalid class path in profile")
        candidates = [directory / relative for directory in decoded.glob("smali*") if (directory / relative).is_file()]
        if len(candidates) != 1:
            raise ValueError(f"Expected one class {relative}; found {len(candidates)}")
        source = candidates[0]
        text = prepared.get(relative, source.read_text(encoding="utf-8"))
        match = locate_method(text, hook["method"])
        changed, inserted = apply_hook(match.group(0), hook["id"], helper)
        prepared[relative] = text[:match.start()] + changed + text[match.end():]
        report.append({"id": hook["id"], "input": str(source), "output": relative.as_posix(), "inserted": inserted})
    # All selectors are validated before writing any output class.
    for relative in prepared:
        if (output / relative).exists():
            raise ValueError("Output file already exists: " + str(output / relative))
    for relative, text in prepared.items():
        destination = output / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_text(text, encoding="utf-8")
    output.mkdir(parents=True, exist_ok=True)
    (output / "PORT_REVIEW.json").write_text(json.dumps({"candidate_only": True, "hooks": report}, indent=2), encoding="utf-8")
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--decoded", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--profile", type=Path, default=Path(__file__).with_name("locatego-4.1.0.profile.json"))
    parser.add_argument("--helper-package", default="sa/lg/android/locate/autobid")
    args = parser.parse_args()
    report = generate(args.decoded, args.out, json.loads(args.profile.read_text(encoding="utf-8")), args.helper_package)
    print(f"Generated {sum(item['inserted'] for item in report)} candidate hooks in {len({item['output'] for item in report})} classes. Review before building.")


if __name__ == "__main__":
    main()
