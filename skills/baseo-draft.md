# baseo-draft

## Description

Step 4 of the BASEO content creation pipeline. Takes the detailed outline from `baseo-outline` and produces actual article prose. This is the skill where writing happens — every previous skill was planning. The drafter executes the plan, doesn't improvise.

The goal: a draft that passes `baseo-self-check` and `baseo-content-review` with minimal edits. Every paragraph traces to an outline bullet. Every claim has a source (or is verbatim from the Approved claims library). Every BASEO process description either uses `baseo-services-reference` or marks an explicit `[PROCESS: ...]` placeholder. Voice matches `baseo-style-guide` rigorously — operator-to-operator, deal math, zero agency-speak.

Trigger phrases: "draft this article," "write the draft from the outline," "generate the article," plus Spanish equivalents ("escribe el draft," "redacta el artículo desde el outline").

---

## What this skill expects loaded

- The **detailed outline** from `baseo-outline` (mandatory). Must have passed compliance preflight with no ❌ — if not, STOP and send back to outline.
- `baseo-context` — for canonical URLs, banned clichés + agency-speak + trust-killers, pricing disclosure policy (NEVER disclose), Approved claims library, Tangential rules.
- `baseo-style-guide` — voice rules 1–9, persona dials, intro patterns, H2/H3 rules, paragraph rhythm, deal-math sentences, service integration, internal linking, visual cadence, closes.
- `baseo-services-reference.md` — for accurate process descriptions. Documented → use real steps. Not documented → `[PROCESS: ...]` placeholder.

If any of these reference files is missing, STOP and flag — drafting requires all four.

---

## Scope: what this skill produces

A complete article draft in markdown, ready for `baseo-self-check`:

- Final title (from outline, verbatim).
- Intro (under 80 words, Template A/B/C from outline).
- All body sections with prose written from outline sub-bullets.
- Data citations placed exactly where the outline specified — first-party claims cited as BASEO client data, external stats with source links.
- Internal links with planned anchor text; external Tier 1/2 links.
- BASEO process descriptions (services-reference or `[PROCESS: ...]` placeholders).
- BASEO contextual mentions (1–3 for Tangential briefs).
- Featured snippet element built exactly per outline.
- Image placeholders with descriptive captions; lists and tables per plan.
- Final thoughts closing (100–200 words) + audit CTA (verified URL).
- A "Draft notes" appendix (separated by `---`) with: word count, placeholders inserted, claims/sources table, compliance pass results, language confirmation.

---

## The drafting workflow

### Stage 1 — Load and validate the outline

Confirm: preflight has no ❌; all outline sections present; brief type clear (Active/Tangential); persona voice dial clear; snippet target structure explicit. If validation fails, STOP — no partial drafts from broken outlines.

### Stage 2 — Write the title and intro

**Title**: outline's final title verbatim.

**Intro**: apply the chosen template (A/B/C) per `baseo-style-guide` § Intro patterns. Under 80 words. Never a banned opener ("In today's competitive real estate market...", "As a real estate investor, you know..."). First BASEO mention timing per outline. Write for the persona dial: B1 gets the burn acknowledged; B2 gets a number in the first two sentences; B3 gets respect before the gap; B5 gets the mechanism scene.

After the intro, insert a TOC (bulleted H2 anchor list) only if the word count target is > 1,500.

### Stage 3 — Write the body sections (H2 by H2)

**3a. H2 header** — exactly as the outline specifies.

**3b. Convert sub-bullets into paragraphs.** Each sub-bullet → 1–2 paragraphs. Apply voice rules: short sentences; 1–3 sentence paragraphs; take a stance; deal math before adjectives; italics one word; bold for nouns; no em-dashes; plain-language translation of any technical term at first use; never sound like the agency that burned him.

**3c. Place data points with citations.**

- **First-party claims**: verbatim from the outline (which pulled them verbatim from the Approved claims library). Attribution pattern: "One Florida client went from 3 to 28 organic leads a month in nine months (BASEO client data)." Never round, never extend, never composite.
- **External stats**: quote or paraphrase + exact source URL from the outline. Format: `[stat] ([Source name](URL))`.
- Apply the deal-math sentence pattern: specific number → context → contrasting number or deal implication.

**Good**:
> ChatGPT visitors convert at 15.9%, against 1.76% for Google organic ([source](URL)). Nine times the close rate on the same traffic, because the AI already qualified the seller before they clicked.

**Bad** (invents/extends a claim):
> Our clients typically triple their leads in a few months.

**3d. Insert internal links** — planned anchor text (2–6 words), corpus URL, mid-sentence placement.

**3e. Insert external authoritative links** — cite when the claim is made: `according to [Source](URL)` or `([Source](URL))`.

**3f. BASEO reference** — the most error-prone step. Two paths:

**For Active briefs**, sections may need a BASEO process description or service mention:

- If the outline specifies a process AND `baseo-services-reference` documents it: write the real steps, timeline, and deliverables from the reference. Show the playbook openly (transparency is the strategy — see `baseo-style-guide` § Service integration).
- If the outline specifies a process the reference does NOT document at that depth: insert `[PROCESS: shape description — verify against current BASEO delivery before publishing]`. Describe the SHAPE, never invent deliverable counts, tools, or timelines.

**Example with services-reference available** (Diagnostic Audit is documented):

> Here's what happens in week 1, before any monthly fee. You send the domain. Within about 2 business days you get a written audit: the 3 biggest issues holding your site back, the keywords your top local competitor ranks for that you don't, and the deal-math projection for your market. It's yours to keep whether we ever speak or not.

**Example with placeholder** (link outreach method is not documented):

> The links come from local chambers, REIAs, and news outlets, never from link farms. `[PROCESS: describe outreach method and monthly volume — verify against current BASEO delivery before publishing]`

**For Tangential briefs**: total mentions across the article 1–3, all contextual, no process positioning. Frame BASEO as one relevant option, not the method.

**Example Tangential mention**:

> If you'd rather see where your own site stands before building anything, a written audit (BASEO does these free for cash buyers) is the fastest way to get a prioritized list.

**3g. Build the featured snippet element** (only in the designated H2): paragraph (40–60 word definition, first paragraph under the H2), list (5–8 parallel items), or table (planned headers + rows). Don't redesign — write cleanly what the outline planned.

**3h. Insert visual elements**: image placeholders as `![SCREENSHOT: detailed description](placeholder)` + italic caption line. Tables and lists per outline structure.

**3i. Word count per section**: outline target ±20%. Don't pad.

**3j. Process H3 sub-sections**: same sub-stages, lighter.

### Stage 4 — Write the closing

- Heading per outline (`## Final thoughts` / `## The bottom line` / `## What to do next`).
- Paragraph 1: core insight, one sentence. Paragraph 2: next step in deal/lead units.
- CTA: outline's text and URL verbatim, as the last line with arrow link. Zero-pressure audit framing (TOFU/Tangential) or commercial detail (BOFU).
- No banned closes, no pressure tactics, no guarantees.

### Stage 5 — Final compliance pass (internal check)

| Check | Method | If fail |
|---|---|---|
| H2 keyword coverage | Count H2s with primary keyword variation | < 60% → flag in Draft notes |
| Banned clichés / agency-speak / trust-killers | Search against `baseo-context` § Banned clichés (all three lists) | Any found → rewrite the sentence |
| Banned intro openers | Search intro | Any → rewrite intro |
| Package/price disclosure | Search for "Foundation," "Growth," "Domination," "$2,500," "$4,500," "$7,500," "$1,500," "PStarter," "per month" price patterns | Any → rewrite (exception: $4,500 inside the approved case-study claim) |
| Guarantee language | Search for "guarantee" + ranking/lead promises, "we'll get you," "in 30/60/90 days" promises | Any → rewrite |
| First-party claims fidelity | Compare every BASEO result claim against the Approved claims library verbatim | Mismatch → fix to verbatim or cut |
| Em-dashes | Search for — | Any → replace per style guide |
| BASEO mention count | Count vs framing × funnel | Outside range → flag |
| `[PROCESS: ...]` placeholders | Count | List in Draft notes |
| Data points without source | Count unsourced numbers (excluding approved first-party claims) | Should be 0 — fix |
| Internal links count | Count | Outside target → flag |
| Featured snippet element present | Confirm designated H2 has it | Missing → STOP and fix |
| Image/list/table minimums | Count | Below → flag |
| Total word count | Sum | Outside range → flag |
| Audience check | Re-read: is any section addressed to a motivated seller? | Any → rewrite to investor-addressed |

Rewritable issues: fix inline before output. Unresolvable issues (missing snippet element, structurally seller-addressed section): STOP and flag.

### Stage 6 — Output the draft + Draft notes appendix

Two blocks separated by `---`: clean article body, then the Draft notes appendix.

---

## Output format

```
[ARTICLE BODY — clean markdown, starts with the title as H1]

# [Title]

[Intro, under 80 words]

[TOC if > 1,500 words]

## [H2 #1]
[Body paragraphs]

### [H3 #1.1]
[Body paragraphs]

[... all H2s/H3s ...]

## Final thoughts

[Closing]

[Get your free site audit →](URL)

---

# Draft notes (NOT for publication — for handoff to self-check and review)

## Compliance pass results

| Check | Status | Detail |
|---|---|---|
| H2 keyword coverage | ✅ N/M (P%) / ⚠️ | [...] |
| Banned clichés / agency-speak / trust-killers | ✅ none / ❌ N rewritten | [...] |
| Package/price disclosure | ✅ none / ❌ removed | [...] |
| Guarantee language | ✅ none / ❌ rewritten | [...] |
| First-party claims fidelity | ✅ all verbatim / ❌ | [...] |
| Em-dashes | ✅ none | [...] |
| BASEO mention count | ✅ N vs target / ⚠️ | [...] |
| Data points without source | ✅ 0 / ❌ N | [...] |
| Internal links | ✅ N / ⚠️ | [...] |
| Featured snippet element | ✅ (type) under H2 "[name]" / ❌ | [...] |
| Image/list/table | ✅ I:N L:N T:N / ⚠️ | [...] |
| Total word count | ✅ NNNN / ⚠️ | [...] |
| Audience (investor-addressed) | ✅ / ❌ | [...] |

## Process placeholders inserted

- `[PROCESS: ...]` — service: [name] — section: H2 "[name]" — services-reference status: not documented
...

## Claims and data points cited (for verification)

| Claim | Source | Section | Type |
|---|---|---|---|
| "[exact claim]" | BASEO client data (Approved library) / [URL] | H2 "[name]" | first-party / external |

## Internal links inserted

| Anchor text | Target URL | Section |
|---|---|---|

## Language match

Draft written in: English | Spanish — matches outline ✅ / ❌

## Outstanding flags for human review

- [...]
```

---

## Hard rules

- **Don't deviate from the outline structure.** The drafter writes prose; it does not redesign.
- **Don't invent data, links, URLs, or delivery specifics.** Every data point traces to the outline. Every process traces to `baseo-services-reference` OR uses a `[PROCESS: ...]` placeholder.
- **Don't invent or extend BASEO results.** First-party claims verbatim from the Approved claims library only. No composites, no rounding, no "typically."
- **Never promise outcomes.** No ranking guarantees, no lead-count promises, no "in 30 days." Expectation language mirrors the public FAQ: first leads month 3–5, real volume month 6–9.
- **Never disclose packages or prices.** "Foundation/Growth/Domination," "$2,500/$4,500/$7,500," setup fees — banned (single exception: the $4,500 figure inside the approved case-study claim).
- **Never address the motivated seller.** The reader is the investor, always.
- **Apply `baseo-style-guide` rigorously**, including the persona voice dial and the B1 read-through (would this sentence fit the previous agency's pitch deck? Cut it).
- **Apply the agency-speak translation table.** Leads, not conversions. Cost per deal, not ROAS.
- **Cite every claim.** Approved library or source URL. The Draft notes appendix lists them all.
- **No meta-commentary in the body.** No "as I mentioned earlier."
- **The Draft notes appendix is NOT part of the article.** Clearly separated by `---` and labeled.

---

## What this skill does NOT do

- Generate or modify the brief, dossier, or outline → upstream skills.
- Run the independent compliance pass → `baseo-self-check`.
- Evaluate or score → `baseo-content-review` / `baseo-onpage-audit`.
- Capture real screenshots — `[SCREENSHOT: ...]` placeholders only.
- Verify BASEO delivery accuracy — that's the human's job (or the `baseo-services-reference` maintainer).
- Format the final deliverable → `baseo-finalize`.
