#!/usr/bin/env bash
# Converts a content calendar JSON file into a human-readable markdown summary.
# Usage: ./scripts/json-to-summary.sh content-calendar/week-YYYY-MM-DD.json
set -euo pipefail

JSON_FILE="$1"
if [[ ! -f "$JSON_FILE" ]]; then
  echo "Error: File not found: $JSON_FILE" >&2
  exit 1
fi

# Derive output path: .json -> -summary.md
OUTPUT_FILE="${JSON_FILE%.json}-summary.md"

python3 -c "
import json, sys, os

with open('$JSON_FILE') as f:
    data = json.load(f)

week = data['week']
meta = data.get('meta', {})
reels = data.get('reels', [])
carousels = data.get('carousels', [])
stories = data.get('stories', [])

lines = []

# Header
lines.append(f'# Fitovo Content Calendar — Week of {week.split(\" to \")[0]}')
if meta.get('phase'):
    lines.append(f'**Phase:** {meta[\"phase\"]}')
if meta.get('focus'):
    lines.append(f'**Focus:** {meta[\"focus\"]}')
lines.append('')
lines.append('---')
lines.append('')

# Hook differentiation table
avoided = meta.get('previous_hooks_avoided', [])
if avoided:
    lines.append('## What\'s New This Week')
    lines.append('')
    lines.append('**Previous hooks avoided:**')
    for h in avoided:
        lines.append(f'- {h}')
    lines.append('')
    if meta.get('topics_covered_last_week'):
        lines.append('**Topics covered last week:** ' + ', '.join(meta['topics_covered_last_week']))
        lines.append('')
    lines.append('---')
    lines.append('')

# Reels
lines.append('## REELS')
lines.append('')

days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
for i, reel in enumerate(reels):
    day_suggestion = days[i] if i < len(days) else ''
    lines.append('---')
    lines.append('')
    lines.append(f'### Reel {i+1} — {reel[\"pillar\"]}')
    lines.append(f'**Pillar:** {reel[\"pillar\"]}')
    lines.append(f'**Hook:** \`{reel[\"hook\"]}\`')
    lines.append(f'**CTA:** {reel[\"cta\"]}')
    if day_suggestion:
        lines.append(f'**Post day suggestion:** {day_suggestion}')
    lines.append('')
    lines.append('---')
    lines.append('')
    lines.append('**SCRIPT (copy-paste for HeyGen):**')
    lines.append('')
    lines.append(reel['script'])
    lines.append('')
    lines.append('---')
    lines.append('')
    lines.append('**INSTAGRAM CAPTION:**')
    lines.append('')
    lines.append(reel['caption'])
    lines.append('')
    lines.append('---')
    lines.append('')
    lines.append('**TIKTOK CAPTION:**')
    lines.append('')
    lines.append(reel['tiktok_caption'])
    lines.append('')
    lines.append('---')
    lines.append('')
    lines.append('**VISUAL NOTES:**')
    lines.append(reel['visual_notes'])
    lines.append('')
    lines.append('---')
    lines.append('')

# Carousels
lines.append('## CAROUSELS')
lines.append('')

for i, carousel in enumerate(carousels):
    lines.append('---')
    lines.append('')
    lines.append(f'### Carousel {i+1} — {carousel[\"pillar\"]}')
    lines.append(f'**Title (Slide 1):** {carousel[\"title\"]}')
    lines.append('')
    lines.append('---')
    lines.append('')
    lines.append('**SLIDES (copy-paste into Canva):**')
    lines.append('')
    for j, slide in enumerate(carousel['slides']):
        lines.append(f'**Slide {j+1}**')
        lines.append(slide)
        lines.append('')
    lines.append('---')
    lines.append('')
    lines.append('**INSTAGRAM CAPTION:**')
    lines.append('')
    lines.append(carousel['caption'])
    lines.append('')
    lines.append('---')
    lines.append('')

# Stories
lines.append('## STORIES — Daily Concepts')
lines.append('')
lines.append('> Low-effort to produce. Polls, quizzes, question boxes, text overlays, behind-the-scenes.')
lines.append('')
lines.append('---')
lines.append('')

for story in stories:
    lines.append(f'### {story[\"day\"]}')
    # Support both schemas: 'concepts' (array) and 'concept' (string)
    if 'concepts' in story:
        for j, concept in enumerate(story['concepts']):
            lines.append(f'{j+1}. {concept}')
    elif 'concept' in story:
        lines.append(story['concept'])
    lines.append('')

# Posting schedule
lines.append('---')
lines.append('')
lines.append('## Posting Schedule Suggestion')
lines.append('')
lines.append('| Day | Format | Pillar | Content |')
lines.append('|---|---|---|---|')
for i, reel in enumerate(reels):
    day = days[i] if i < len(days) else f'Day {i+1}'
    carousel_note = ''
    for c in carousels:
        # Pair carousels with reels that share a pillar
        pass
    lines.append(f'| {day} | Reel | {reel[\"pillar\"]} | {reel[\"hook\"][:60]}... |')
lines.append('')
lines.append('Stories: post 3 concepts daily, every day Mon\u2013Sun.')
lines.append('')

with open('$OUTPUT_FILE', 'w') as f:
    f.write('\n'.join(lines))

print(f'Written: $OUTPUT_FILE')
"
