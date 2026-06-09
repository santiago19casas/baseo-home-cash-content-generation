# baseo-research

## Description

Step 2 of the BASEO content creation pipeline. Takes the enriched brief produced by `baseo-brief-enrich` and gathers everything downstream skills need: external authoritative sources, citable data points (including sourcing the external stat candidates from the claims library), internal linking candidates from the corpus, SERP analysis, and BASEO capability hooks. Outputs one structured research dossier that `baseo-outline` and `baseo-draft` consume.

The goal: by the end of this step, the drafter has every fact, quote, link, and source it needs in one place. The drafter does not improvise data — it cites this dossier.

Trigger phrases: "research this brief," "gather data for this article," "build the research dossier," plus Spanish equivalents ("investiga este brief," "arma el dossier," "junta las fuentes").

---

## What this skill expects loaded

- The **enriched brief** from `baseo-brief-enrich` (mandatory — this skill does not run without a brief).
- `baseo-context` — for canonical URLs, Service catalog, Approved claims library + external stat candidates, Tangential criteria, banned phrases.
- `baseo-style-guide` — for deal-math sentence rules and what "good evidence" looks like.
- `baseo-corpus.csv` — sitemap of published BASEO blog content, in the mounted working folder. Expected columns: `url, title, meta_description, primary_keyword`. Used for internal linking candidates.
- **WebSearch / web_fetch** — for SERP analysis, external source discovery, and fetching specific pages. If WebSearch is unavailable, degrade gracefully and note it in the dossier's Tool status section. The skill does NOT call any keyword research API — keyword research is assumed done upstream.

---

## Scope: what this skill produces

A single research dossier in markdown that includes:

- Brief recap.
- SERP analysis of top 10 for the primary keyword.
- External authoritative sources, tier-classified.
- Citable data points with verified source URLs — including **source verification for any external stat candidates** the brief flagged from `baseo-context`.
- Internal linking candidates from the corpus.
- BASEO capability hooks — for Active briefs, the process shape from `baseo-services-reference`; for Tangential briefs, the contextual mention angle.
- Notes for downstream skills.

## What this skill does NOT do

- Generate or modify the brief → `baseo-brief-enrich`.
- Expand into an outline → `baseo-outline`. Write the draft → `baseo-draft`.
- Run keyword research from scratch.
- Fabricate sources or invent delivery specifics. Every URL and stat must trace to a verifiable source.

---

## The research workflow

### WebSearch budget per dossier

Target: 3–6 WebSearch / web_fetch calls. Distribution:

- 1 search on the primary keyword (Stage 2 SERP analysis)
- 1–2 searches to source the external stats the brief flagged (Stage 3/4)
- 1–3 web_fetch calls on specific URLs to verify a stat, quote, or definition before citing

If a stage genuinely needs more, do them — the budget is a target, not a hard cap.

### Stage 1 — Parse the brief

Extract: primary + secondary keywords, persona target (B1–B5), brief type (Active/Tangential), funnel stage, language, pain → service mapping (or topic + BASEO connection), claims the brief flagged for use, featured snippet target, word count and density targets, heading structure with enrichment.

If the brief is missing required fields, STOP and flag — do not run on a malformed brief.

### Stage 2 — SERP analysis (WebSearch)

Run **one WebSearch on the primary keyword**. Capture:

- **Top 10 results**: URL + title + snippet excerpt. Note repeating domains. For this niche, expect Carrot, agency sites, and REI education sites — note which competitors-for-attention rank (other agencies pitching the same ICP).
- **Featured snippet detection**: type (paragraph/list/table) and source URL if visible.
- **People Also Ask**: list the questions if visible (great H3 material for this audience).
- **Common angles across top results**: 2–3 sentences. Are they agency pitches, listicles, or genuine education? Where's the gap BASEO's operator-voice can fill?
- **Content gaps**: what's missing that this brief could own? (Frequently: real numbers, deal math, niche specificity — most ranking content is generic.)

If a featured snippet is visible, cross-check its type against the brief's snippet target. Mismatch → flag.

### Stage 3 — External authoritative sources (WebSearch)

Identify 3–8 authoritative external sources. Quality tiers (prioritize higher):

| Tier | Examples | Use for |
|---|---|---|
| Tier 1 — Primary docs & primary data | Google Search Central docs and update announcements, Google Business Profile docs, OpenAI/Anthropic/Perplexity official docs, ATTOM / NAR / Census data, WordPress.org | Official guidance, market data, technical facts |
| Tier 2 — Original research & niche authorities | Carrot (State of Marketing report, data posts — the niche's most-trusted source), Ahrefs/Semrush/Backlinko studies, original SEO experiments with methodology | Statistical claims, benchmarks, niche behavior data |
| Tier 3 — Authoritative practitioners | Search Engine Land/Journal, BiggerPockets articles, named REI marketing practitioners | Quotes, interpretive analysis, community sentiment |

Avoid: other investor-SEO agencies' marketing blogs (competitors, no methodology), generic listicle aggregators.

**How to source**: WebSearch with `site:` operators chosen by topic — `site:developers.google.com`, `site:carrot.com`, `site:ahrefs.com/blog`, `site:biggerpockets.com`, `site:attomdata.com`. Use web_fetch to verify any stat before the dossier cites it.

**Source quality guideline**: aim for at least 3 sources from Tier 1 or Tier 2 combined. If you can't, flag "Sources insufficient" — don't pad with weak Tier 3.

Output per source: `[Name](URL) — Tier: [1/2/3] — supports: [claim or section]`.

### Stage 4 — Citable data points

Build the article's evidence base. The style guide requires at least 3 sentences with specific number + source, with at least one converted to deal math.

Two streams:

**A. BASEO first-party claims**: pull verbatim from `baseo-context` § Approved claims library — these need no external source (cite as "BASEO client data" / the Florida case study). NEVER modify, round, or extend them. If the brief asks for a first-party number not in the library → flag "claim not approved — confirm with Eddie before use."

**B. External stats**: for each external stat candidate the brief flagged (ChatGPT 15.9% conversion, CPC +36%, 93.7% follow-up failure, etc.), find and verify the actual source URL via WebSearch/web_fetch. A stat without a found source gets flagged `❌ source not found — drafter must drop this stat`.

For each data point: stat/quote verbatim, source URL (original publisher, not an aggregator), recency (flag > 2 years old; for fast-moving AI-search stats flag > 1 year), suggested H2 placement, relevance HIGH/MEDIUM/LOW.

**Stage 4 emphasis by framing**:
- **Active brief**: prioritize stats supporting the service's value (deal math, channel economics, case study numbers).
- **Tangential brief**: prioritize stats about the topic itself without forcing a BASEO connection on every stat.

### Stage 5 — Internal linking candidates from corpus

Read `baseo-corpus.csv`. If absent or empty, skip and note that internal linking suggestions could not be generated.

For each candidate row: extract topic terms from `title`, `primary_keyword`, `meta_description`; match against the brief's keywords and heading enrichment; surface rows with overlap ≥ 0.30 or verbatim phrase matches.

For each surfaced candidate output: corpus URL, why relevant, suggested anchor text (2–6 words, natural), and which H2/H3 would naturally host the link.

Density target: ~1.5× the brief's link count so the outline has options.

### Stage 6 — BASEO capability hooks

For **Active** briefs:

- List each BASEO service the brief flagged (canonical names from `baseo-context` § Service catalog).
- For each, describe the **process shape** in 3–5 steps using ONLY what `baseo-services-reference` documents. Example: "Audit first (week 1, free, written) → tracking + foundation months 1–2 → city pages + situation pillars months 2–6 → AEO layer from month 3."
- Note per service: **services-reference status** — ✅ documented at the needed depth / ❌ not documented → drafter inserts `[PROCESS: ...]` placeholder.

For **Tangential** briefs:

- Confirm the BASEO connection sentence from the brief.
- Identify which active service(s) the article could mention contextually (1–3 mentions total).
- Note the CTA target (always soft, always the audit).
- Do NOT propose process shapes — BASEO is not the protagonist.

### Stage 7 — Notes for downstream skills

- Data placement recommendations: which stat lives under which H2; which number is the pull-quote/callout candidate.
- Snippet capture mechanics: candidate 40–60 word definition, or the list items / table rows the data supports.
- Persona voice dial reminder (from brief).
- Banned phrases to watch given the topic (e.g., for an AI-search article, "revolutionary" and "game-changing" are high-risk; for an agency-accountability article, watch for accidental guarantee language).
- Placeholder strategy: which sections will need `[PROCESS: ...]` placeholders.

---

## Output format

```
# Research Dossier: [Article working title from brief]

## Brief recap

- **Primary keyword**: [keyword]
- **Persona target**: [B1–B5 or dual]
- **Brief type**: Active | Tangential
- **Funnel stage**: TOFU | MOFU | BOFU
- **Featured snippet target**: paragraph | list | table — under H2 "[name]"
- **Word count target**: NN–NN
- **Internal link target**: N–N (~1.5× candidates produced)

## Tool status

- **WebSearch / web_fetch**: ✅ N searches + M fetches / ❌ unavailable — [degradation notes]
- **Corpus CSV**: ✅ loaded (NN rows) / ❌ not available
- **Notes**: [fallbacks or limitations]

## SERP analysis (top 10 for "[primary keyword]")

**Top results**:
1. [Title] — [URL] — [one-line angle summary]
...

**Featured snippet in position zero**: [type/none] — [source URL] — [1-line summary]

**People Also Ask**: [questions if present]

**Common angle across top results**: [2–3 sentences]

**Content gaps this brief can fill**: [2–3 sentences]

**Snippet target alignment**: ✅ matches / ⚠️ differs — [note]

## External authoritative sources

### Tier 1 (primary docs & data)
- [Name](URL) — supports: [...]

### Tier 2 (original research & niche authorities)
- [Name](URL) — supports: [...]

### Tier 3 (practitioners)
- [Name](URL) — supports: [...]

## Citable data points

### BASEO first-party (from Approved claims library — cite as BASEO client data)

| Claim (verbatim from library) | Suggested H2 | Relevance |
|---|---|---|
| "[claim]" | [H2 name] | HIGH/MEDIUM/LOW |

### External stats (source-verified)

| Data point | Source | Recency | Suggested H2 | Relevance |
|---|---|---|---|---|
| "[exact stat]" | [URL] | [year] | [H2 name] | HIGH/MEDIUM/LOW |

**Stats with no source found (drafter must drop)**:
- [stat] — ❌ no credible source located

## Internal linking candidates (from baseo-corpus.csv)

1. **[Corpus URL]**
   - Why relevant: [shared topic terms]
   - Suggested anchor text: "[2–6 words]"
   - Suggested placement: under "[heading name]"
...

## BASEO capability hooks

For Active briefs:
- **Service(s) in play**: [canonical name(s)]
- **Process shape**: [3–5 steps from baseo-services-reference]
- **Services-reference status**: ✅ documented / ❌ not documented — drafter inserts `[PROCESS: ...]`

For Tangential briefs:
- **BASEO connection (from brief)**: "[one sentence]"
- **Active services to mention contextually**: [name(s)]
- **Mention frequency target**: 1–3
- **CTA target**: soft, free audit URL from `baseo-context`

## Notes for downstream skills

### For `baseo-outline`
- Data placement: [...]
- Snippet capture: [candidate definition / list items / table rows]

### For `baseo-draft`
- Persona voice dial: [B1–B5 notes]
- Banned phrases to watch (topic-specific risk): [list]
- Placeholder strategy: [sections needing `[PROCESS: ...]`]

## Flags

[Issues the editor should resolve before outline. Empty if clean.]
```

---

## Hard rules

- **Never fabricate sources or stats.** Every external data point must trace to a verifiable URL. No source → the stat is flagged for removal.
- **Never modify Approved claims library numbers.** Verbatim or not at all.
- **Never fabricate URLs.** Internal links from `baseo-corpus.csv` only; external from actual WebSearch results; BASEO URLs from `baseo-context` § Canonical URLs.
- **Never propose BASEO delivery specifics beyond `baseo-services-reference`.** Undocumented depth → placeholder note for the drafter.
- **Differentiate Active vs Tangential focus** per the stage rules above.
- **Don't pad the dossier.** 5 strong data points beat 15 weak ones.
- **Flag missing context.** Corpus absent, WebSearch down, malformed brief — surface it, don't silently degrade.
- **Target 3–6 WebSearch calls**; exceed only if the topic genuinely needs more.

---

## What this skill does NOT do

- Generate or modify the brief → `baseo-brief-enrich`.
- Expand the outline → `baseo-outline`. Write the draft → `baseo-draft`.
- Run self-check → `baseo-self-check`. Evaluate content → `baseo-content-review` / `baseo-onpage-audit`.
- Define the angle, persona, or framing — research consumes the brief, it doesn't override it.
