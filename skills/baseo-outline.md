# baseo-outline

## Description

Step 3 of the BASEO content creation pipeline. Takes the enriched brief (`baseo-brief-enrich`) and the research dossier (`baseo-research`) and produces a detailed paragraph-level outline. The drafter consumes this outline to write the actual article.

The goal: convert "we have a brief and a pile of data" into a section-by-section plan where every paragraph the drafter writes is already mapped — data assigned, links placed, snippet structure detailed, process moments flagged, word counts targeted. The drafter executes, doesn't improvise.

Trigger phrases: "outline this brief," "expand into outline," "build the article outline," plus Spanish equivalents ("arma el outline," "expande el brief en outline").

---

## What this skill expects loaded

- The **enriched brief** from `baseo-brief-enrich` (mandatory).
- The **research dossier** from `baseo-research` (mandatory).
- `baseo-context` — for canonical URLs, claims policy, banned phrases, Tangential criteria.
- `baseo-style-guide` — for intro templates, H2/H3 rules, visual cadence minimums, snippet patterns, paragraph rhythm.
- `baseo-services-reference.md` (optional) — when present, the outline can specify real BASEO process steps. When absent or undocumented for a service, process moments are flagged with `[PROCESS: shape description]` for the drafter.

---

## Scope: what this skill produces

A single detailed outline in markdown. Every section has:

- Title finalization (50–60 chars, primary keyword in first 30).
- Intro plan: template A/B/C choice, hook idea, word target, first BASEO mention position.
- Per-H2/H3 expansion: sub-bullets, data placement (first-party claims + sourced external stats), internal/external link placement, BASEO reference (process or contextual mention), visual element placement, word count target.
- Featured snippet structure with exact content suggested.
- Closing plan: Final thoughts target, audit CTA placement.
- Visual placement plan.
- Compliance preflight.

The outline does NOT contain article prose.

---

## The outline workflow

### Stage 1 — Index brief + dossier

Read both fully. Extract from the brief: editorial metadata, pain → service (or topic + connection), snippet target, CTA target, heading structure with enrichment. Extract from the dossier: SERP analysis, sources by tier, citable data points (first-party + external), internal link candidates, capability hooks, downstream notes.

If either document is malformed or missing critical fields, STOP and flag.

### Stage 2 — Finalize the title

- Primary keyword in first 30 characters; total 50–60 characters.
- No guarantee language ("Get 30 Leads Guaranteed" ❌), no package/price disclosure.
- For Tangential briefs, the title MUST position the topic as protagonist. "Speed to lead for real estate investors" ✅. "How BASEO handles your follow-up" ❌ (and out-of-scope fabrication).
- Headline angles from `baseo-context` (frustration, deal math, competitive jealousy, identity) are encouraged when they fit the keyword.

If the brief's working title fails any check, propose a replacement and note the change.

### Stage 3 — Intro plan

Choose one intro template per `baseo-style-guide`:

| Template | When to use |
|---|---|
| A — Challenge a belief | Reframing an assumption common in the SERP ("your homepage is your most important page") |
| B — Promise a concrete outcome | How-tos, playbooks, BOFU evaluations |
| C — Relatable scene / comparison | TOFU explainers; the seller-asks-ChatGPT scene, the competitor-outranking-you scene |

Produce: template chosen, hook idea (1 sentence), word target (< 80), first BASEO mention position (before halfway for Active; mid-to-late for Tangential), banned-opener check.

### Stage 4 — Expand each H2 (and H3)

**Per-H2 expansion structure**:

1. **Target word count**: total / (# of H2s + intro + closing), ±20% by section depth.
2. **Sub-bullets**: 3–6 bullets describing what each paragraph covers. Content ideas, NOT prose.
3. **Data point placement**: from the dossier — first-party claims (verbatim, "BASEO client data") and external stats (with source URL + recency). The drafter must cite exactly as placed.
4. **Internal link placement**: 1–3 links from corpus candidates with anchor text and URL.
5. **External link placement**: Tier 1/2 sources placed with the claim they back.
6. **BASEO reference**:
   - **Active brief**: does this section name a service, show the process, or both? If a process is needed AND `baseo-services-reference` documents it at the needed depth, specify the steps. If not documented → `[PROCESS: shape — e.g., 'audit reviews site, competitors, market; delivered written in ~2 business days']`.
   - **Tangential brief**: "BASEO mentioned here (count N/3)" or "no BASEO mention this section." Total stays 1–3.
7. **Visual element**: image, table, or list per the visual plan, with caption skeleton. Prefer proof visuals (SERP screenshots, traffic curves, report excerpts).
8. **Snippet capture (only in the designated H2)**: paragraph → write the 40–60 word candidate definition; list → the 5–8 items; table → headers + rows.

**Per-H3 expansion**: same but lighter (1–3 sub-bullets).

**H2/H3 keyword coverage compliance**: count H2s containing the primary keyword or close variation. Target ≥ 60%. Under → flag with rephrase suggestions in the preflight.

**Claims compliance during expansion**: every first-party number placed must exist verbatim in the Approved claims library; every external stat must carry a dossier-verified source. If the dossier flagged a stat "no source found," it does NOT enter the outline.

### Stage 5 — Closing plan

- **Closing heading**: `## Final thoughts` (or `## The bottom line` / `## What to do next`).
- **Word target**: 100–200.
- **Paragraph 1 plan**: one sentence restating the core insight.
- **Paragraph 2 plan**: one sentence on the next step, in deal/lead units.
- **CTA**: audit CTA text + verified URL from the brief. Zero-pressure framing for TOFU/Tangential ("free, written, no call required, yours to keep"); commercial detail for BOFU ("pricing for your market is included").
- **CTA voice check**: no banned phrases, no pressure tactics, no guarantees.

### Stage 6 — Visual placement plan

| Element | Count | Where each one goes |
|---|---|---|
| Images | N (≥2 TOFU, ≥3 MOFU, ≥3 BOFU) | Under H2 X, Y — what each shows |
| Tables | N (≥1) | Under H2 X — what it compares |
| Lists | N (≥1) | Under H2 X, Y |
| Callouts | Optional 0–3 | Where each lives |

For images, use `[SCREENSHOT: detailed description]` placeholders (SERP results, GA4 charts, report excerpts, before/after curves). The description must be specific enough that a non-author can capture or build the right visual.

### Stage 7 — Compliance preflight

| Rule | Target | Outline status |
|---|---|---|
| Intro word count | < 80 | ✅ / ⚠️ |
| Intro template used | A / B / C | ✅ / ❌ |
| H2 keyword coverage | ≥ 60% | ✅ / ⚠️ — quote H2s missing keyword |
| H3 long-tail coverage | ≥ 60% combined | ✅ / ⚠️ |
| H2 length | most 3–8 words, max 12 | ✅ / ⚠️ |
| Banned intro openers | none | ✅ / ❌ |
| Marketing-verb H2s | none | ✅ / ❌ |
| BASEO mention count | matches framing × funnel | ✅ / ⚠️ — actual vs target |
| Guarantee language planned | none | ✅ / ❌ |
| Package/price disclosure planned | none | ✅ / ❌ |
| First-party claims all from Approved library | yes | ✅ / ❌ |
| External stats all source-verified | yes | ✅ / ❌ |
| Internal link count | within brief's range | ✅ / ⚠️ |
| Featured snippet target captured | type matches brief | ✅ / ❌ |
| Images / lists / tables planned | ≥ brief minimums | ✅ / ❌ |
| Closing section planned | correct header | ✅ / ❌ |
| CTA URL valid | verified in `baseo-context` § Canonical URLs | ✅ / ❌ |
| Total estimated word count | within brief's range | ✅ / ⚠️ |

Any ❌ requires fix BEFORE the drafter runs. ⚠️ is acceptable with explicit acknowledgment.

---

## Output format

```
# Outline: [Final article title]

## Editorial recap (from brief + dossier)

- **Final title**: "[title]" (NN chars)
- **Primary keyword**: [keyword]
- **Persona**: [B1–B5 or dual]
- **Brief type**: Active | Tangential
- **Funnel stage**: TOFU | MOFU | BOFU
- **Word count target**: NN–NN
- **Internal link target**: N–N

## Intro plan

- **Template**: A / B / C
- **Hook**: [one sentence]
- **Word target**: under 80
- **First BASEO mention**: [where]
- **Banned-opener check**: ✅ / ❌

## Article body (H2-by-H2 expansion)

### H2: [exact H2 title]

- **Word target**: NN–NN
- **Sub-bullets**:
  1. [content idea]
     - Data: "[claim or stat]" — source: [BASEO client data | URL]
  2. [content idea]
  ...
- **Internal links**: "[anchor]" → [corpus URL]
- **External links**: "[claim]" backed by [Tier 1/2 URL]
- **BASEO reference**: [process steps + services-reference status | "[PROCESS: ...]" | "mention (count N/3)" | none]
- **Visual element**: [image/table/list/none] — [description]
- **Snippet capture**: [yes — type + exact structure / no]

#### H3: [exact H3 title]
- **Word target**: NN
- **Sub-bullets**: [1–3]
- **Data / links / BASEO reference**: [...]

[Repeat for every H2/H3.]

## Closing plan

- **Heading**: ## Final thoughts (or variant)
- **Word target**: 100–200
- **Paragraph 1 plan**: [...]
- **Paragraph 2 plan**: [...]
- **CTA**: text "[...]" → URL [verified] — voice check ✅ / ❌

## Visual placement plan

| Element | Section (H2) | Description |
|---|---|---|
| Image 1 | "[H2]" | [SCREENSHOT: ...] |
| Table 1 | "[H2]" | [...] |
| List 1 | "[H2]" | [...] |

## Compliance preflight

[The full table from Stage 7.]

## Flags

[Anything to resolve before drafting. Empty if clean.]

## Notes for the drafter

- Persona voice dial: [B1–B5 notes from brief/dossier]
- Banned phrases to watch: [topic-specific list]
- Snippet capture is in H2 "[name]" — build exactly as planned
- `[PROCESS: ...]` placeholders to insert: [list of sections]
```

---

## Hard rules

- **Do not write article prose.** Sub-bullets describe; the drafter writes.
- **Every data point must trace to the dossier.** First-party claims verbatim from the Approved library; external stats only with dossier-verified sources.
- **Every URL must trace to the brief or dossier.** No fabricated URLs.
- **Don't propose BASEO delivery specifics unless `baseo-services-reference` documents them.** Use `[PROCESS: ...]` placeholders otherwise.
- **No guarantee language, no package names, no BASEO prices** anywhere in the plan.
- **Honor the brief's framing.** Active = process positioning + full mention frequency. Tangential = 1–3 contextual mentions, soft audit CTA, no process positioning.
- **Flag, don't fix silently.** Heading structure issues surface in Flags; the editor decides.
- **Respect the compliance preflight.** Any ❌ resolves before the drafter consumes the outline.

---

## What this skill does NOT do

- Modify the brief or dossier (re-run those skills if they need changes).
- Write article prose → `baseo-draft`.
- Run self-check → `baseo-self-check`. Evaluate content → `baseo-content-review` / `baseo-onpage-audit`.
- Source new external data (that's `baseo-research`).
- Capture screenshots — placeholders only.
