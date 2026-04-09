#!/usr/bin/env bash
# merge-calendar.sh  BASE_FILE  PART2_FILE
# Merges reels, carousels, and stories from PART2_FILE into BASE_FILE (in-place).
set -euo pipefail

BASE="$1"
PART2="$2"

if [[ ! -f "$BASE" ]]; then
  echo "ERROR: Base file not found: $BASE" >&2
  exit 1
fi
if [[ ! -f "$PART2" ]]; then
  echo "ERROR: Part-2 file not found: $PART2" >&2
  exit 1
fi

python3 - "$BASE" "$PART2" <<'PYEOF'
import json, sys

base_path, part2_path = sys.argv[1], sys.argv[2]

with open(base_path) as f:
    base = json.load(f)
with open(part2_path) as f:
    part2 = json.load(f)

base.setdefault("reels", []).extend(part2.get("reels", []))
base.setdefault("carousels", []).extend(part2.get("carousels", []))

# Merge stories: combine concepts for same day, append new days
existing_days = {s["day"]: s for s in base.get("stories", [])}
for story in part2.get("stories", []):
    day = story["day"]
    if day in existing_days:
        existing_days[day]["concepts"].extend(story["concepts"])
    else:
        existing_days[day] = story
# Preserve day order: base days first, then new days
day_order = [s["day"] for s in base.get("stories", [])]
for day in existing_days:
    if day not in day_order:
        day_order.append(day)
base["stories"] = [existing_days[d] for d in day_order]

with open(base_path, "w") as f:
    json.dump(base, f, indent=2, ensure_ascii=False)
    f.write("\n")

print(f"Merged: {len(base['reels'])} reels, {len(base['carousels'])} carousels, {len(base['stories'])} story days")
PYEOF
