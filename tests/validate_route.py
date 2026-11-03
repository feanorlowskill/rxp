#!/usr/bin/env python3
"""Static structure checks for the custom RXP guide; not an in-game test."""

from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "UndeadMageCustom.lua"
text = SOURCE.read_text(encoding="utf-8")

blocks = re.findall(r"RXPGuides\.RegisterGuide\(\[\[(.*?)\]\]\)", text, flags=re.S)
if len(blocks) != 2:
    sys.exit(f"FAIL: expected 2 RegisterGuide blocks, found {len(blocks)}")

names = []
next_targets = []
for index, block in enumerate(blocks, start=1):
    def one(pattern, label):
        found = re.findall(pattern, block, flags=re.M)
        if len(found) != 1:
            sys.exit(f"FAIL: guide block {index} must have exactly one {label}; found {len(found)}")
        return found[0].strip()

    names.append(one(r"^#name\s+(.+)$", "#name"))
    next_targets.append(one(r"^#next\s+(.+)$", "#next"))
    one(r"^#forever\s*$", "#forever directive")
    one(r"^#defaultfor\s+Undead Mage\s*$", "#defaultfor Undead Mage")
    one(r"^#version\s+12\s*$", "#version 12")

if len(set(names)) != len(names):
    sys.exit(f"FAIL: guide names are not unique: {names}")
if next_targets[0] != names[1]:
    sys.exit(f"FAIL: first guide points to {next_targets[0]!r}, not second guide {names[1]!r}")
if next_targets[1] != "12-14 Silverpine Forest":
    sys.exit(f"FAIL: expected handoff to RXP guide '12-14 Silverpine Forest', found {next_targets[1]!r}")

toc = (ROOT / "RXP_UndeadMageCustom.toc").read_text(encoding="utf-8")
if "## Dependencies: RXPGuides" not in toc or "UndeadMageCustom.lua" not in toc:
    sys.exit("FAIL: TOC must declare RXPGuides dependency and load UndeadMageCustom.lua")

print("PASS: 2 guide blocks; unique names; internal chain and Silverpine handoff are consistent.")
print("NOTE: This is a static check only; test loading and route behavior in WoW Forever.")
