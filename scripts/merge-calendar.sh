#!/usr/bin/env bash
# Merges a partial content calendar JSON into an existing one.
# Usage: ./scripts/merge-calendar.sh <existing.json> <partial.json>
# The partial's reels, carousels, and stories are appended to the existing file.
set -euo pipefail

EXISTING="$1"
PARTIAL="$2"

if [[ ! -f "$EXISTING" ]]; then
  echo "Error: Existing file not found: $EXISTING" >&2
  exit 1
fi
if [[ ! -f "$PARTIAL" ]]; then
  echo "Error: Partial file not found: $PARTIAL" >&2
  exit 1
fi

python3 -c "
import json

with open('$EXISTING') as f:
    base = json.load(f)
with open('$PARTIAL') as f:
    part = json.load(f)

base['reels'] = base.get('reels', []) + part.get('reels', [])
base['carousels'] = base.get('carousels', []) + part.get('carousels', [])
base['stories'] = base.get('stories', []) + part.get('stories', [])

# Merge meta if present
if 'meta' in part:
    if 'meta' not in base:
        base['meta'] = {}
    for key in ['previous_hooks_avoided', 'topics_covered_last_week']:
        if key in part['meta']:
            base['meta'][key] = list(set(base['meta'].get(key, []) + part['meta'].get(key, [])))
    for key in ['phase', 'focus']:
        if key in part['meta'] and key not in base['meta']:
            base['meta'][key] = part['meta'][key]

with open('$EXISTING', 'w') as f:
    json.dump(base, f, indent=2, ensure_ascii=False)

print(f'Merged into: $EXISTING')
"
