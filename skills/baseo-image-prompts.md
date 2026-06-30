# baseo-image-prompts

Reference file for generating ChatGPT image-generation prompts that accompany every `[SCREENSHOT: ...]` placeholder in the pipeline output. Read by `baseo-draft` (the drafter writes both blocks together) and referenced by `baseo-style-guide`, `baseo-self-check`, and `baseo-wp-upload`.

The publisher copies the prompt block, pastes into ChatGPT image generation, gets the image, and inserts it in the WordPress draft at the matching `[SCREENSHOT: ...]` spot. No further editing of the prompt required.

**Key difference from a product company**: BASEO is an SEO/AEO agency, not a software product. There is NO BASEO app UI to screenshot. So this file has NO "product screenshot" category. The images BASEO articles use are: Google SERPs, Google Business Profile / local results, analytics-and-lead dashboards, photographic hero images, and the occasional diagram. The reader is always the investor; images never address a motivated seller.

---

## Output format in the article body

Every screenshot placeholder must appear in this exact format, with TWO consecutive blocks:

```
[SCREENSHOT: Brief description of what to capture, in plain language so the publisher knows what the image is for. 1–2 sentences.]

[PROMPT FOR CHATGPT IMAGE GENERATION:
Full detailed prompt covering composition, elements, exact text, layout, spacing, hierarchy, realism, styling, aspect ratio, and what should NOT appear. Multi-line is fine. Paste-ready into ChatGPT image generation without modification.
]
```

The first block (`[SCREENSHOT: ...]`) is for the publisher to understand context and shows where the image goes in the body. The second block (`[PROMPT FOR CHATGPT IMAGE GENERATION: ...]`) is copy-paste fodder for ChatGPT.

Note on the WP upload flow: BOTH blocks are uploaded and visible in the WordPress draft. The publisher reads the `[SCREENSHOT: ...]` for placement, copies the `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` block into ChatGPT, generates the image, and replaces both blocks with the real image right in the WP editor. (`baseo-wp-upload` does NOT strip the prompt blocks.)

---

## Universal requirements for every prompt

Every ChatGPT prompt must:

- Be extremely specific.
- Describe the entire composition.
- Describe all visible elements.
- Include exact text visible in the image whenever applicable.
- Include layout details.
- Include spacing and hierarchy.
- Include realism requirements.
- Include styling requirements.
- Include aspect ratio requirements (default `16:9 landscape, 1600×900 pixels` unless otherwise specified for the image type).
- Include an explicit "what should NOT appear" list.

**Banned vague phrasing** — never use these in a prompt:

- "show something similar"
- "create an example"
- "display a dashboard"
- "include some data"
- "or similar"
- "etc."
- "and other"

Everything must be explicitly defined.

**ICP guardrails** (specific to BASEO):

- Cities/queries are real-estate and cash-buyer flavored: "sell my house fast [city]", "we buy houses [city]", "cash home buyers [city]", probate/foreclosure/inherited variants. Use real US metros from the ICP (Phoenix, Dallas, Atlanta, Tampa, Houston, Las Vegas, Charlotte, Denver, Jacksonville, Memphis, Orlando, Nashville, Kansas City, San Antonio).
- NEVER name a real competitor agency or a real cash-buyer brand. Use plausible invented domains (e.g., `phoenixcashoffer.com`, `selltampahousefast.com`, `webuyhousesdenver.co`).
- Dashboards prove the deal-math story: leads, cost per lead, deals closed — NOT impressions as the hero metric (per `baseo-context` § Banned agency-speak: impressions are not a success metric for this ICP).
- Hero images depict the investor's world (operators, properties, "we buy houses" context), not corporate stock-photo cheese. The audience is hands-on operators, not enterprise marketers.

---

## BASEO brand identity (for hero + diagram images)

⚠️ **Eddie: set these once.** SERP / GBP / dashboard images mimic Google/analytics chrome, so brand color barely applies to them. But hero scenes and diagrams should feel on-brand. Defaults below until confirmed:

- **Palette**: professional and trustworthy. Default placeholder: deep navy/charcoal base with a single confident accent (blue or green). Replace with BASEO's real brand colors.
- **Logo**: do not fabricate a BASEO logo in images. Leave space for it if a hero needs branding; the publisher adds the real logo if wanted.
- **Tone**: grounded, credible, "real operator," not glossy SaaS. No purple gradients, no neon, no cyberpunk, no glassmorphism, no AI-art look.

---

## Image type categories and their rules

The drafter chooses the right category based on the article context, then builds the prompt using the rules + template for that category. **Default in doubt**: Google SERP (Category 1) for an in-body image; Featured image (Category 4) for the top-of-article hero.

### Category 1 — Google SERP screenshot

When to use: any time the article shows what a search result looks like in Google. This is the most common BASEO image (ranking is the core story).

**Requirements**:

- Realistic desktop Google search results page.
- The query is a cash-buyer / seller-intent search ("sell my house fast [city]", "we buy houses [city]", "cash home buyers [city]").
- At least 5 visible organic results, plus the **local Map Pack** (3-pack) when the article is about local SEO, and an **AI Overview** box at the top when the article is about AI search.
- Realistic invented domains (no real competitor names, no `example.com`): `phoenixcashoffer.com`, `sell[city]housefast.com`, `webuyhouses[city].co`, plus an authority site or two (a local news domain, BBB).
- Realistic blue titles (~50–60 chars) and gray meta descriptions (~140–160 chars) written in cash-buyer voice ("Get a fair cash offer in 24 hours. We buy houses as-is, any condition...").
- Google branding visible (Google logo top-left, search bar with the query, tabs: All, Maps, Images, News, More).
- Natural Google SERP spacing.

**If the client's own result should rank #1**: show one invented cash-buyer domain at position #1 with a strong title/snippet, then competitor positions below. (This mirrors the BASEO homepage SERP visual: client #1, two competitors below.)

**Never include**: empty search pages, single-result layouts, simplified mockups, obviously fake URLs, oversized callouts dominating the image, AI-art appearance.

**If annotations are required** (arrows pointing to the Map Pack, AI Overview, an organic result): clean arrows, subtle labels, professional educational styling. Never oversized callouts.

**Default aspect ratio**: 16:9 landscape, 1600×900 pixels.

### Category 2 — Google Business Profile / local results

When to use: articles about local SEO, the Map Pack, Google Business Profile, "near me" searches, reviews.

**Requirements**:

- A realistic Google Business Profile panel OR a Map Pack 3-pack, as the article needs.
- For a GBP panel: business name (invented cash-buyer brand), primary category "Property Investment Company" or "Real Estate Agency", a star rating with a realistic review count (e.g., 4.9, 63 reviews), service-area list, recent photos, posts, "Directions" and "Call" buttons.
- For a Map Pack: a Google map with 3 pinned local businesses, each with name, rating, category, and a short snippet, under a query like "we buy houses near me".
- Realistic Google local UI chrome.

**Never include**: fake/placeholder business names that look unreal, empty profiles, AI-art appearance.

**Default aspect ratio**: 16:9 landscape, 1600×900 pixels.

### Category 3 — Analytics / lead-reporting dashboard

When to use: showing Google Analytics 4, Search Console, or a lead/deal-math reporting view. This is BASEO's proof visual.

**Requirements**:

- Exact metrics shown, and they must be **lead/deal metrics, not vanity metrics**. Specify which: organic leads, cost per lead, deals closed, organic sessions. Impressions/clicks can appear as secondary, never as the headline.
- Exact chart behavior matching the BASEO story: leads climbing over time (e.g., 3 → 28 over nine months), cost per lead trending down (toward ~$161 and falling), organic sessions recovering from a collapse (the 284 low) then rising.
- Exact date range (e.g., "Last 9 months", "Jan–Sep 2026").
- Exact axis and legend labels.

**Never say**: "show a chart", "display some metrics". Always specify the metric, the trend shape, and the visual takeaway (what the chart proves).

**Match the reporting voice**: if it's a BASEO-style report, the columns are leads with phone numbers, cost-per-lead trend, pages published, AI citations — never an impressions dashboard. (Per `baseo-context` § Lead-Focused Reporting.)

**Never include**: impressions/CTR as the dominant metric, fake numbers that don't fit a real tool, AI-art appearance, oversized callouts.

**Default aspect ratio**: 16:9 landscape, 1600×900 pixels.

### Category 4 — Featured image (hero / article banner)

When to use: the main image at the top of the article, or the social-share preview.

**Requirements**:

- NEVER a screenshot. A realistic, magazine-quality photographic scene from the investor's world.
- Professional photography quality, natural lighting, realistic humans if present (no plastic/AI faces).
- Investor-world subjects: an operator on the phone in a truck or modest office, a "We Buy Houses" yard sign on a suburban lawn, a hand reviewing a lead notification on a phone, a distressed-but-honest property exterior, a kitchen-table conversation (tasteful, not exploitative of the seller).
- No floating UI, no giant icons, no unrealistic effects, no AI-art look.
- Grounded and credible, not glossy-corporate.

**Always describe**: subject, environment, camera angle, lighting, mood, composition (leave negative space upper-left for a title overlay on hero banners).

**Sensitivity**: the motivated seller is sometimes in distress (foreclosure, divorce, probate). Keep any human depiction dignified and respectful. Never depict distress in a way that mocks or exploits.

**Default aspect ratio**: 16:9 landscape, 1600×900 pixels (blog hero); 1.91:1, 1200×630 pixels (OG social preview — specify which).

### Category 5 — Diagram / data viz

When to use: a concept that's clearer as a diagram than a photo — the investor-site content architecture (city pages → seller-situation pages → authority), a deal-math comparison (PPC cost per deal vs organic), a lead funnel (visitors → leads → deals), or a checklist graphic.

**Requirements**:

- Clean, professional, vector-style.
- Limited palette using the BASEO brand colors (see § BASEO brand identity; default navy/charcoal + one accent).
- Clear, readable labels; arrows/connectors where needed; no clutter.
- Numbers tied to the article (e.g., "PPC: ~$7,500 / deal" vs "Organic: $500–$2,000 / deal"; or "City pages → 60%+ of organic traffic").

**Never include**: clip-art, cartoonish style, neon, AI-art look, unreadable tiny text.

**Default aspect ratio**: 16:9 landscape, 1600×900 pixels.

---

## Final rule for every prompt

The generated image must always look like a real asset that could appear on a professional company website, an SEO/marketing blog, or a real analytics tool. It must NEVER look AI-generated.

If the drafter is in doubt about which category fits, default to Category 1 (Google SERP) for an in-body image, or Category 4 (Featured image) for the top-of-article hero.

---

## Templates the drafter uses

### Template — Google SERP screenshot (Category 1)

```
[PROMPT FOR CHATGPT IMAGE GENERATION:
Photorealistic screenshot of a real Google desktop search results page. The search query at the top is "[EXACT QUERY — e.g., 'sell my house fast phoenix']". Google logo in the top-left above the search bar; search bar populated with the query; tabs below: All (active), Maps, Images, News, More.

Result count text: "About [PLAUSIBLE NUMBER, e.g., 2,310,000] results (0.48 seconds)".

[IF LOCAL MAP PACK SHOULD APPEAR: a Google Map with 3 pinned cash-buyer businesses below the search bar, each with an invented name, a star rating (e.g., 4.8/4.9), review count, category "Property Investment Company", and a "we buy houses, any condition" snippet.]

[IF AI OVERVIEW SHOULD APPEAR: an AI Overview box at the very top summarizing how to sell a house fast for cash, citing 2–3 invented cash-buyer domains in the sources row.]

Organic results (at least 5). Position #1 is an invented cash-buyer site [e.g., "phoenixcashoffer.com › sell-my-house-fast-phoenix"] with a blue title like "Sell My House Fast Phoenix | Cash Offer in 24 Hours" and a gray meta description in cash-buyer voice. Positions #2–#5 are other invented cash-buyer domains and one local authority site. Realistic green/gray URL breadcrumbs, blue ~50–60 char titles, gray ~140–160 char descriptions.

Natural Google SERP spacing, generous whitespace, subtle gray dividers.

NEVER include: real competitor brand names, fake URLs like example.com, empty or single-result layouts, simplified mockups, oversized callouts dominating the image, AI-art appearance.

Aspect ratio: 16:9 landscape, 1600×900 pixels.
]
```

### Template — Google Business Profile / local (Category 2)

```
[PROMPT FOR CHATGPT IMAGE GENERATION:
Photorealistic screenshot of a real Google Business Profile panel as it appears on the right side of a desktop Google search for "[INVENTED CASH-BUYER BRAND — e.g., 'Phoenix Cash Offer']".

Profile shows: business name "[brand]", primary category "Property Investment Company", overall rating [e.g., 4.9] with [e.g., 63] reviews, an address line and service-area note ("Serves Phoenix and surrounding areas"), "Directions" and "Call" and "Website" buttons, a row of 3–4 recent photos (modest suburban homes, a team headshot), a recent Google Post ("We buy houses as-is, any condition — fair cash offer in 24 hours"), and 2 visible review snippets with reviewer names and star ratings.

[IF A MAP PACK INSTEAD: a Google Map with 3 pinned cash-buyer businesses under the query "we buy houses near me", each with name, rating, category, and a one-line snippet.]

Realistic Google local UI: correct fonts, spacing, button styles, the blue "Directions" pill.

NEVER include: unreal placeholder names, empty profiles, real competitor brands, AI-art appearance.

Aspect ratio: 16:9 landscape, 1600×900 pixels.
]
```

### Template — Analytics / lead-reporting dashboard (Category 3)

```
[PROMPT FOR CHATGPT IMAGE GENERATION:
Photorealistic screenshot of [DASHBOARD — e.g., "a Google Analytics 4 report" OR "a clean monthly lead report"]. The view focuses on [EXACT FOCUS — e.g., "organic leads and cost per lead over the last 9 months"].

Top section: header "[EXACT HEADER]" and a date range selector showing "[EXACT RANGE — e.g., 'Last 9 months']".

Metric cards row (lead/deal metrics, NOT impressions as the headline): [LIST EACH — e.g., "Organic leads this month: 28 (+833% vs. start). Cost per organic lead: $161 (down from $480). Organic deals closed: 3. Organic sessions: recovered from 284 to 4,900."].

Main chart: a line chart of [METRIC — e.g., "organic leads per month"] that [SHAPE — e.g., "starts at 3 in month 1, stays low through month 4, then climbs steeply to 12 by month 5 and 28 by month 9"]. A second line or axis shows cost per lead trending DOWN over the same period. X-axis labeled with months, Y-axis labeled with the metric.

[IF A TABLE BELOW: columns "Date", "Lead", "Phone", "Source", "Status" with 5+ realistic rows — this is the lead-focused report style, leads with phone numbers, never an impressions table.]

Style: clean, professional analytics UI, white background, neutral palette, real-tool aesthetic.

NEVER include: impressions/CTR as the dominant metric, fake numbers that don't fit a real tool, oversized callouts, illustration/AI-art style.

Aspect ratio: 16:9 landscape, 1600×900 pixels.
]
```

### Template — Featured image / hero (Category 4)

```
[PROMPT FOR CHATGPT IMAGE GENERATION:
Magazine-quality professional photograph for a blog article hero. [SUBJECT — e.g., "A real estate investor in his late 30s on a phone call, standing beside a pickup truck in front of a modest suburban house he's evaluating, relaxed and confident."]

Environment: [DETAIL — e.g., "A quiet residential street, mid-morning, the house slightly out of focus behind him with a small 'For Sale' sign."]

Camera angle: [DETAIL — e.g., "Eye-level, three-quarter view, subject on the right third."]

Lighting: [DETAIL — e.g., "Soft natural morning light, warm tones, no harsh shadows."]

Mood: [DETAIL — e.g., "Grounded, credible, hands-on operator. Professional but not corporate."]

Composition: [DETAIL — e.g., "Rule of thirds, negative space upper-left for a title overlay."]

NEVER include: AI-art appearance, over-stylized colors, floating UI elements, giant icons, plastic/cartoon human features, glossy stock-photo cheese, anything mocking a distressed seller.

Style: looks like a photograph shot by a professional for a real estate or business publication.

Aspect ratio: 16:9 landscape, 1600×900 pixels (blog hero) OR 1.91:1, 1200×630 pixels (OG social preview — specify which).
]
```

### Template — Diagram / data viz (Category 5)

```
[PROMPT FOR CHATGPT IMAGE GENERATION:
Clean professional vector diagram illustrating [CONCEPT — e.g., "the investor-site content architecture that generates organic leads"].

Layout: [DETAIL — e.g., "a pyramid in three tiers. Top tier labeled 'City landing pages — 60%+ of organic traffic'. Middle tier 'Seller-situation pages — probate, foreclosure, divorce, inherited, tenants'. Bottom tier 'Trust + authority — GBP, reviews, local links'. A short caption under the pyramid: 'The pages that turn searches into motivated-seller leads.'"]

[OR for deal math: "two columns side by side. Left column 'PPC' with '~$7,500 per deal' in large type. Right column 'Organic (mature)' with '$500–$2,000 per deal'. A small note: 'Same leads. Different math.'"]

Palette: BASEO brand colors — [navy/charcoal base + one accent; Eddie to confirm exact hex]. White background. Readable sans-serif labels. Clean arrows/connectors. No clutter.

NEVER include: clip-art, cartoon style, neon, glassmorphism, tiny unreadable text, AI-art look.

Aspect ratio: 16:9 landscape, 1600×900 pixels.
]
```

---

## How the drafter uses this file

When `baseo-draft` reaches a point where a screenshot/image is needed (Stage 3h):

1. Determine the image category (SERP, GBP/local, dashboard, hero, diagram).
2. Choose the appropriate template above.
3. Fill in the bracketed sections with article-specific specifics (which query, which city, which metric and trend, which scene, which concept).
4. Output BOTH blocks: the `[SCREENSHOT: ...]` description for the publisher AND the `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` block.

Both blocks travel all the way into the WordPress draft. The publisher reads the SCREENSHOT description for context, copies the PROMPT block (from `[PROMPT FOR CHATGPT IMAGE GENERATION:` to the closing `]`), pastes into ChatGPT image generation, gets the image, and replaces both blocks with the real image in the WordPress editor.

If uncertain which category fits, default to Category 1 (Google SERP) in-body, or Category 4 (hero) for the top image. When the article doesn't give enough info to fill a bracket (e.g., no specific city named), use a plausible ICP city/metro the publisher can adjust.

---

## What this file does NOT cover

- The publisher's workflow inside the WP editor (inserting the real images) — manual, no skill handles it.
- Image upload to the WP Media Library — out of scope for v1.
- Image alt text and SEO file naming — the drafter writes the caption under the placeholder per `baseo-style-guide` § Captions; the publisher sets alt text and filename when inserting the real image.
- Schema/JSON-LD for images — Astro handles all schema at render time (per `baseo-wp-upload`).
- Both blocks (SCREENSHOT + PROMPT) are uploaded and visible in the WP draft; neither `baseo-wp-upload` nor `baseo-finalize` strips them. The publisher replaces both with the real image after generating it.
