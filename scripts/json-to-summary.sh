#!/usr/bin/env bash
# json-to-summary.sh  CALENDAR_JSON
# Generates a human-readable markdown summary alongside the JSON file.
set -euo pipefail

JSON_FILE="$1"

if [[ ! -f "$JSON_FILE" ]]; then
  echo "ERROR: File not found: $JSON_FILE" >&2
  exit 1
fi

SUMMARY_FILE="${JSON_FILE%.json}-summary.md"

python3 - "$JSON_FILE" "$SUMMARY_FILE" <<'PYEOF'
import json, sys, textwrap

json_path, md_path = sys.argv[1], sys.argv[2]

with open(json_path) as f:
    cal = json.load(f)

week = cal.get("week", "")
meta = cal.get("meta", {})
reels = cal.get("reels", [])
carousels = cal.get("carousels", [])
stories = cal.get("stories", [])

lines = []
lines.append(f"# Fitovo Content Calendar — {week}\n")

if meta:
    lines.append(f"**Week {meta.get('week_number', '')} · {meta.get('phase', '')}**\n")
    if meta.get("focus"):
        lines.append(f"> {meta['focus']}\n")

lines.append(f"---\n")
lines.append(f"## Reels ({len(reels)})\n")
for i, r in enumerate(reels, 1):
    lines.append(f"### Reel {i} — {r.get('pillar', '')}")
    lines.append(f"**Hook:** {r.get('hook', '')}\n")
    lines.append(f"**CTA:** {r.get('cta', '')}\n")
    script = r.get("script", "")
    lines.append(f"**Script:**\n```\n{script}\n```\n")
    lines.append(f"**Caption:**\n{r.get('caption', '')}\n")
    lines.append(f"**Hashtags:** {' '.join(r.get('hashtags', []))}\n")
    lines.append(f"**TikTok caption:** {r.get('tiktok_caption', '')}\n")
    lines.append(f"**Visual notes:** {r.get('visual_notes', '')}\n")
    lines.append("---\n")

lines.append(f"## Carousels ({len(carousels)})\n")
for i, c in enumerate(carousels, 1):
    lines.append(f"### Carousel {i} — {c.get('pillar', '')}")
    lines.append(f"**Title:** {c.get('title', '')}\n")
    lines.append(f"**Slides:**")
    for j, slide in enumerate(c.get("slides", []), 1):
        slide_text = slide.replace("\n", " ")
        lines.append(f"{j}. {slide_text}")
    lines.append("")
    lines.append(f"**Caption:**\n{c.get('caption', '')}\n")
    lines.append(f"**Hashtags:** {' '.join(c.get('hashtags', []))}\n")
    lines.append("---\n")

lines.append(f"## Stories ({len(stories)} days)\n")
for s in stories:
    lines.append(f"### {s['day']}")
    for concept in s.get("concepts", []):
        lines.append(f"- {concept}")
    lines.append("")

output = "\n".join(lines)
with open(md_path, "w") as f:
    f.write(output)

print(f"Summary written to {md_path}")
PYEOF
