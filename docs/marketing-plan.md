# Fitovo UGC Social Media Marketing Plan

## Context
Fitovo is a pre-launch iOS fitness app for adults 40-65 focused on longevity training (bodyweight, strength, Norwegian 4x4). Launch target: ~4-5 weeks (early May 2026). Instagram account exists, TikTok being re-created with fitovo@rawleaf.com. No website yet. No existing content or followers. Minimal brand assets (logo variants + app icon in `assets/`).

The goal: build a waitlist, generate awareness, and create a content engine that runs largely on AI — with Kulvinder approving before anything goes live.

---

## 1. Waitlist & Landing Page (Set Up First — Day 1)

| Need | Tool | Cost |
|------|------|------|
| Landing page | **Carrd.co** (Pro) | ~$19/year |
| Email collection | **MailerLite** | Free (up to 2,500 subs) |
| Instagram DM automation | **ManyChat** | Free (up to 1,000 contacts) |

**Setup:**
- Carrd single-page site: hero with Fitovo logo, one-liner ("Train smarter after 40. Live better after 70."), email capture form connected to MailerLite, countdown to launch
- Link Carrd URL in Instagram bio
- ManyChat automation: when someone comments a trigger word (e.g., "EARLY" or "READY") on any post, auto-DM them the waitlist link + a welcome message
- MailerLite handles the email list with a simple welcome sequence (3 emails: welcome → your why → what's coming)

---

## 2. Content Strategy — The "Longevity Investment" Framework

### Core Narrative
**Not** "download our app" — instead: **"Your 40s and 50s are the investment window. What you do now determines your quality of life at 70, 80, 90."**

### 5 Content Pillars

| # | Pillar | What It Covers | % of Content |
|---|--------|----------------|-------------|
| 1 | **The Wake-Up Call** | Scary-but-motivating stats about muscle loss, VO2max decline, fall risk. "Did you know you lose 3-5% muscle mass per decade after 30?" | 25% |
| 2 | **The Science** | HRV, why the Norwegian 4x4 works, how readiness-based training prevents overtraining, zone 2 vs zone 5 | 25% |
| 3 | **The Founder Story** | Why Kulvinder built Fitovo, personal journey, building in public, dev updates | 20% |
| 4 | **Actionable Tips** | "3 bodyweight exercises every 50-year-old should do", "How to read your HRV", quick wins | 20% |
| 5 | **Product Teasers** | App UI previews (blurred then revealed), feature explanations, countdown content | 10% |

### Content Formats (Instagram priority)

| Format | Frequency | Purpose |
|--------|-----------|---------|
| **Reels** (15-60s) | 4-5/week | Primary reach driver — algorithm favours Reels heavily |
| **Stories** | 3-5/day | Engagement, polls, behind-the-scenes, countdown stickers |
| **Carousels** | 1-2/week | Educational deep-dives (swipeable stats, myth-busting) |
| **Static posts** | Rare | Only for announcements or high-impact quotes |

### TikTok (Secondary)
- Cross-post Reels to TikTok with platform-native captions (no Instagram watermark)
- 3/week initially — the 40-65 demo is growing on TikTok but less represented
- TikTok favours raw/unpolished — lean into the founder story content here

---

## 3. AI Content Creation Toolchain

### Recommended Stack (Budget-Conscious)

| Tool | Purpose | Monthly Cost | Notes |
|------|---------|-------------|-------|
| **Claude API** (via scheduled agent) | Script generation, captions, hashtags, content calendar | ~$5-15/mo | The brain of the operation |
| **HeyGen** (Creator plan) | AI avatar talking-head Reels | ~$24/mo | Best for UGC-style "person talking to camera" |
| **ElevenLabs** (Starter) | Voice cloning for voiceovers | ~$5/mo | Clone your voice once, use for all VO content |
| **CapCut Pro** | Video editing, auto-captions, templates | ~$8/mo | Assembles final videos from AI outputs |
| **Canva Pro** | Carousels, Stories templates, brand kit | ~$13/mo | Quick static/carousel content |
| **Later** (Starter) | Scheduling + auto-publish to IG & TikTok | ~$19/mo | Approval workflow built in |

**Total tooling: ~$74-84/month**

### Optional Upgrades (If Budget Allows)

| Tool | Purpose | Cost | When to Add |
|------|---------|------|-------------|
| **Arcads** | Hyper-realistic AI UGC actors | ~$100+/mo | When running paid ads at scale — most realistic UGC |
| **Creatify** | AI video ads from URL | ~$39/mo | When you have the Carrd page live and want ad creative |
| **ManyChat Pro** | Beyond 1,000 DM contacts | ~$15/mo | When DM automation hits free tier limit |

### Content Production Workflow

```
Monday AM (automated):
  Claude scheduled agent generates week's content:
  → 5 Reel scripts with hooks, body, CTA
  → 7 Story concepts (polls, questions, BTS prompts)
  → 2 Carousel outlines
  → All captions + hashtag sets
  → Output to a markdown file or Slack/Discord

Monday-Tuesday (you, ~1-2 hours):
  → Review scripts, tweak/approve
  → Feed approved scripts into HeyGen for talking-head Reels
  → Use ElevenLabs for any voiceover-style Reels
  → Assemble in CapCut (auto-captions, music, cuts)
  → Create carousels in Canva from outlines

Wednesday (you, ~30 min):
  → Upload week's content to Later
  → Set schedule
  → Later auto-publishes throughout the week

Daily (~5 min):
  → Post Stories (can be quick phone captures + AI-generated graphics)
  → Respond to comments/DMs
```

---

## 4. Pre-Launch Timeline (4-5 Weeks)

### Week 1: Foundation (Mar 28 - Apr 3)
- [ ] Set up Carrd waitlist page
- [ ] Connect MailerLite for email capture
- [ ] Set up ManyChat on Instagram
- [ ] Clone your voice on ElevenLabs (record 1 min sample)
- [ ] Create HeyGen avatar (upload photo or use stock avatar)
- [ ] Set up Canva brand kit (upload logo, set brand colours)
- [ ] Set up Later account, connect Instagram + TikTok
- [ ] Create the Claude scheduled agent (see Section 6 for prompt)
- [ ] **Content**: 3 founder story posts ("Why I'm building Fitovo"), 1 wake-up-call Reel, daily Stories

### Week 2: Build Momentum (Apr 4 - Apr 10)
- [ ] First full AI-generated content week using the pipeline
- [ ] **Content**: 5 Reels (2 science, 2 wake-up-call, 1 founder), 2 carousels, daily Stories
- [ ] Enable ManyChat trigger on all posts ("Comment FITOVO for early access")
- [ ] Start engaging with longevity/fitness accounts (comment genuinely on 10-15 posts/day)
- [ ] Cross-post best Reels to TikTok

### Week 3: Tease the Product (Apr 11 - Apr 17)
- [ ] Start showing blurred/teaser app screenshots
- [ ] **Content**: 5 Reels (mix of education + first app previews), 2 carousels, daily Stories with polls
- [ ] Launch first small paid ad test: $10/day Meta Lead Gen ad targeting 40-65, fitness interests → waitlist
- [ ] Share waitlist milestone Stories ("We just hit 100 people on the waitlist!")

### Week 4: Build Anticipation (Apr 18 - Apr 24)
- [ ] Reveal more app UI (readiness screen, workout screens)
- [ ] **Content**: 5 Reels (2 product demos, 2 education, 1 founder update), countdown sticker in Stories
- [ ] Increase ad spend if CPA is good ($15-20/day)
- [ ] "First 100 signups get 3 months free" urgency push
- [ ] Reach out to any micro-influencers in longevity/midlife fitness space

### Week 5: Launch Week (Apr 25 - May 1)
- [ ] Daily countdown Reels
- [ ] Launch day: announcement Reel + Story blitz + email blast to waitlist
- [ ] Update Carrd from waitlist → App Store link
- [ ] Burst ad spend on launch day ($30-50)
- [ ] ManyChat auto-reply switches to App Store link

---

## 5. Paid Ads Strategy (Meta/Instagram)

**Phase 1 — Waitlist (Weeks 3-4): $10-15/day = ~$150-200 total**
- Format: Lead Generation Ads (native form, user never leaves Instagram)
- Creative: Best-performing organic Reel repurposed as ad
- Targeting: Ages 40-65, interests in fitness, Apple Watch, running, strength training, longevity
- CTA: "Join the waitlist for early access"

**Phase 2 — Launch (Week 5): $30-50/day for 3-5 days = ~$100-250**
- Format: App Install Ads
- Creative: App demo Reel + founder story Reel (test both)
- Targeting: Same as Phase 1 + lookalike audience from waitlist emails

**Total ad budget: ~$250-450 across the 5 weeks**

**Important**: AI-generated video in Meta ads requires the "AI Info" label toggle. This is allowed and increasingly normal, but note it may slightly reduce engagement vs. real footage. Your founder-on-camera content may outperform AI avatars in ads — test both.

---

## 6. Claude Scheduled Agent — Prompts & Setup

### Option A: Claude Code Remote Trigger (Recommended)
Set up a weekly scheduled remote agent that generates the content calendar every Monday at 7am.

### Option B: Claude API Script
A simple script that calls Claude API weekly, outputs to a file or Slack webhook.

### The Master Content Generation Prompt

```markdown
You are Fitovo's social media content strategist. Fitovo is a pre-launch iOS fitness
app for adults aged 40-65 focused on longevity training. It combines bodyweight exercises,
strength programming, and the Norwegian 4x4 interval protocol with readiness-based
adaptive scheduling using Apple Watch biometrics (HRV, resting heart rate, sleep).

BRAND VOICE:
- Warm, knowledgeable, never preachy or patronising
- Speak TO the audience, not AT them — "you" not "users"
- Evidence-backed but accessible — cite studies casually, don't lecture
- Tone: confident friend who happens to be a sports scientist
- Never use: "anti-aging", "reverse aging", "biohacking", medical claims
- Do use: "longevity", "quality of life", "train smarter", "your body after 40"

TARGET AUDIENCE:
- Adults 40-65, both men and women
- Active or want to be active, but feel current fitness apps are designed for 25-year-olds
- Care about long-term health, not aesthetics or bodybuilding
- Many are Apple Watch owners
- Value: evidence, simplicity, flexibility around busy lives

CONTENT PILLARS (rotate through these):
1. The Wake-Up Call (25%) — Surprising stats about aging, muscle loss, VO2max decline, fall risk
2. The Science (25%) — HRV, Norwegian 4x4, readiness-based training, zone training
3. Founder Story (20%) — Why Fitovo exists, building in public, personal motivation
4. Actionable Tips (20%) — Exercises, HRV reading tips, recovery advice
5. Product Teasers (10%) — App features, UI previews, launch countdown

TASK: Generate this week's content calendar.

OUTPUT FORMAT (JSON):
{
  "week": "YYYY-MM-DD to YYYY-MM-DD",
  "reels": [
    {
      "pillar": "...",
      "hook": "First 3 seconds — must stop the scroll. Question or surprising stat.",
      "script": "Full 30-45 second script. Conversational, direct to camera style.",
      "cta": "End CTA — waitlist signup, follow, comment trigger word",
      "caption": "Instagram caption with line breaks. Include CTA.",
      "hashtags": ["10-15 relevant hashtags"],
      "tiktok_caption": "Shorter, more casual TikTok version",
      "visual_notes": "Direction for HeyGen avatar or B-roll style"
    }
    // ... 5 reels total
  ],
  "carousels": [
    {
      "pillar": "...",
      "title": "Slide 1 hook",
      "slides": ["Slide 1 text", "Slide 2 text", "...up to 8 slides"],
      "caption": "...",
      "hashtags": ["..."]
    }
    // ... 2 carousels
  ],
  "stories": [
    {
      "day": "Monday",
      "concepts": [
        "Poll: How many days do you exercise per week? 1-2 / 3-4 / 5+",
        "Behind-the-scenes: screenshot of code/design work",
        "Quick tip with text overlay"
      ]
    }
    // ... one entry per day
  ]
}

RULES:
- Never repeat a hook style two weeks in a row
- Every Reel must have a scroll-stopping first line
- Vary CTA types: comment trigger, bio link, follow, save, share
- Reference current health/fitness trends where relevant
- Include 1 "founder story" Reel per week minimum
- Make carousel slide text punchy — max 20 words per slide
- Story concepts should be low-effort to produce (polls, questions, text overlays)
```

### Weekly Variation Prompt (append to master prompt each week):

```markdown
WEEK CONTEXT:
- Week number: [X] of pre-launch / [X] since launch
- Waitlist count: [N]
- Last week's best performer: [describe top post and why it worked]
- Any trending topics to reference: [current events, viral fitness content]
- Special focus this week: [e.g., "tease the readiness scoring feature"]
- Avoid repeating: [list hooks/topics from last 2 weeks]
```

---

## 7. Hashtag Strategy

### Primary (use on every post):
`#fitovo` `#longevitytraining` `#fitnessafter40` `#fitnessafter50` `#trainsmarter`

### Rotating by pillar:
- **Wake-Up Call**: `#healthspan` `#muscleloss` `#vo2max` `#agingwell` `#sarcopenia` `#fallprevention`
- **Science**: `#hrv` `#heartratevariability` `#norwegian4x4` `#zontraining` `#exercisescience`
- **Tips**: `#bodyweightexercises` `#strengthafter40` `#mobilitytraining` `#recoveryday`
- **Founder**: `#buildinpublic` `#indieapp` `#founderlife` `#appdevelopment`
- **Product**: `#iosapp` `#applewatchfitness` `#fitnesstechnology` `#comingsoon`

Use 10-15 per post. Mix 5 high-volume + 5 mid-volume + 3-5 niche.

---

## 8. Engagement Strategy (10-15 min/day)

- **Comment on 10-15 posts/day** from accounts in the longevity/midlife fitness space — genuine, thoughtful comments, never spammy
- **Reply to every comment** on your posts within 2 hours (algorithm signal)
- **Reply to every DM** — ManyChat handles the automated ones, you handle real conversations
- **Follow relevant accounts**: fitness professionals who work with 40+ clients, longevity researchers, health podcasters
- **Collaborate**: Once you have 500+ followers, reach out to micro-influencers (1K-10K followers) in the midlife fitness niche for Story takeovers or joint Lives

---

## 9. Metrics to Track Weekly

| Metric | Target (Pre-Launch) | Tool |
|--------|-------------------|------|
| Follower growth | +50-100/week | Instagram Insights |
| Reel views (average) | 500+ by week 3 | Instagram Insights |
| Waitlist signups | 200+ by launch | MailerLite |
| Engagement rate | 3-5% | Later analytics |
| Best content pillar | Track which pillar gets most saves/shares | Manual |
| Ad CPA (cost per lead) | Under $2/lead | Meta Ads Manager |

---

## 10. Cost Summary

### Monthly Ongoing (Post-Setup)

| Item | Cost |
|------|------|
| HeyGen Creator | ~$24/mo |
| ElevenLabs Starter | ~$5/mo |
| CapCut Pro | ~$8/mo |
| Canva Pro | ~$13/mo |
| Later Starter | ~$19/mo |
| Claude API usage | ~$5-15/mo |
| Carrd Pro | ~$1.50/mo (billed yearly) |
| **Tooling subtotal** | **~$76-86/mo** |
| Meta ads (optional, variable) | $150-450/mo |
| **Total range** | **$76-536/mo** |

### One-Time Setup
- MailerLite: Free
- ManyChat: Free
- Voice clone recording: 5 minutes of your time
- HeyGen avatar setup: 15 minutes

---

## Verification
- [ ] Carrd page loads, email capture works, connects to MailerLite
- [ ] ManyChat trigger word automation fires correctly on a test comment
- [ ] Claude scheduled agent generates valid JSON content calendar
- [ ] HeyGen can produce a 30s talking-head Reel from a script
- [ ] ElevenLabs voice clone sounds natural
- [ ] Later can auto-publish a test Reel to Instagram
- [ ] Full pipeline test: Claude generates script → HeyGen renders video → CapCut edits → Later publishes
