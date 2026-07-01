# baseo-content-review

## Description

A single consolidated evaluator. Reads a BASEO blog draft (pasted text, uploaded file, or URL) and returns one structured verdict covering ICP fit, service coverage, claim integrity, voice, style, and quality.

Trigger phrases: "review this blog," "evaluate this article," "is this on-brand," "does this fit our ICP," "is this BASEO-aligned," plus Spanish equivalents ("revisa este blog," "evalúa este artículo," "está alineado con nuestro ICP").

Do NOT use for internal links / metas / structure (that's `baseo-onpage-audit`), and do NOT rewrite the article unless the user explicitly asks in a follow-up turn.

---

## What this skill expects to have loaded

- **`baseo-context`** — personas, anti-personas, Service catalog + Out-of-scope services, Pain → service map, Approved claims library + claims policy, Funnel stages, Banned clichés (all three lists), Anti-angles, Canonical URLs, Pricing disclosure policy.
- **`baseo-style-guide`** — voice rules, intro patterns, H2/H3 rules, paragraph rhythm, deal-math sentences, service integration, banned intro openers.

Context wins when context and style-guide conflict.

---

## Scope: what this skill reviews

- **ICP fit**: persona match (B1–B5), anti-persona signals (especially seller-addressed content), anti-angle detection, pain → service alignment.
- **Service coverage**: BASEO named in body, real services referenced (not out-of-scope or fabricated), method vs. mention, frequency vs. funnel.
- **Claim integrity**: first-party results verbatim from the Approved claims library; external stats sourced; zero guarantees.
- **Voice and style**: intro template, H2/H3 keyword coverage, paragraph rhythm, deal-math sentences, banned phrases, agency-speak, trust-killers.
- **Quality**: cliché count, actionability, CTA alignment, pricing/package disclosure check.

## What this skill does NOT review

- Internal link density, meta tags, TOC/structure → `baseo-onpage-audit`.
- Body rewriting → separate turn if asked.
- Brief generation, keyword research → other skills.

---

## Input handling

- **Pasted text**: evaluate directly.
- **Uploaded file** (.md, .docx, .txt, .pdf): read via the appropriate skill first.
- **URL**: fetch with web_fetch.

---

## The review workflow

Run all 8 steps. Each is independent, but hard caps (Step 1) override the holistic score.

### Step 0 — Detect framing (Active vs Tangential)

**Tangential signals**: BASEO named 1–3 times, contextual; no method/playbook language presented as BASEO's delivery; topic is the protagonist in headings; soft audit CTA only.

**Active signals**: BASEO named 4+ times with method positioning; the playbook is explicitly BASEO's process; sections center on BASEO services; mid-post + end CTAs.

Mixed/unclear → lean **Active** (stricter expectations; safer to over-apply).

Output: `**Framing detected**: Active | Tangential`.

### Step 1 — Hard caps (deterministic)

**1a. Gut check (3 questions)**

| # | Question | Look for |
|---|---|---|
| 1 | Is the reader a cash home buyer / REI operator (not a motivated seller, not a generic SMB)? | Investor vocabulary: motivated sellers, deal flow, CPL, cost per deal, wholesale, flips, Carrot, assignment fees. If any passage addresses a homeowner trying to sell, or the article works identically for a dentist → ❌ |
| 2 | Does it talk in deals and dollars (not marketing abstractions)? | Numbers tied to leads/CPL/cost per deal/deal profit. Pure conceptual marketing content with no economics → ❌ |
| 3 | Does it connect to BASEO appropriately for its framing? | **Active**: method/process positioning for a service in the active catalog. → ❌ if no active service connection. **Tangential**: BASEO named at least once contextually with a clear ICP connection. → ❌ if not named, or named without connection. |

All 3 ❌ → cap final score at 2. 2 of 3 ❌ → cap at 3.

**1b. Package / price disclosure**

Search for package names ("Foundation," "Growth," "Domination," "PStarter") and BASEO prices ("$2,500," "$4,500," "$7,500," "$1,500 setup"). Exception: "$4,500" inside the approved Florida case-study claim ("$54K profit on a $4,500 invoice" framing) is allowed — verify context.

- 1 disclosure → cap at 2. 2+ → cap at 1.

**1c. Guarantee language**

Search for ranking/lead/timeline promises: "guaranteed page 1," "we'll get you X leads," "10x your leads," "#1 in 90 days," etc. Describing past client results is proof and is fine; promising the reader an outcome is the violation.

- Any guarantee → cap at 2. Multiple or headline-level → cap at 1.

**1d. Service fabrication and claim fabrication**

- Any claim that BASEO delivers an **Out-of-scope service** (CRM/follow-up setup, direct mail, web design, lead selling, coaching) → fabrication → cap at 1.
- Any claim of a service in neither the catalog nor the out-of-scope list → fabrication → cap at 1.
- Any first-party result NOT verbatim in the Approved claims library (including "3 to 42" where the standard is "3 to 28," rounded numbers, composite clients) → claim fabrication → cap at 2, and flag for immediate correction.
- Any external stat with no source link → flag; 3+ unsourced stats → cap at 3.

### Step 2 — Persona match

Identify the primary persona (B1 Burned / B2 PPC-Dependent / B3 Invisible Veteran / B4 Scaling / B5 AEO First-Mover / NONE). Quote 2–3 signaling passages. Dual-audience acceptable.

Anti-persona read (motivated seller, agent, iBuyer corporate, generic SMB, DIY-zero-budget) → downgrade by 1 tier and flag with quote.

Persona NONE → cap at 3.

### Step 3 — Service coverage

**3a. BASEO named in body (not just CTA)**

- 0 mentions → cap at 2.
- 1 mention in CTA only → cap at 2.
- 1+ in body → no cap from this step.

**3b. Frequency vs. framing + funnel**

| Framing | Funnel | Expected mentions |
|---|---|---|
| Active | TOFU | 2–4, first before halfway |
| Active | MOFU | 4–8, the approach (WHAT + WHY) is what BASEO does |
| Active | BOFU | Protagonist, nearly every section |
| Tangential | any | 1–3 total, contextual, soft CTA only |

Outside range → flag (fix, not cap).

**3c. Method vs. mention**

Per `baseo-style-guide` § Service integration: in Active articles, BASEO must appear at least once as the approach (WHAT + WHY + that-we-do-it), not just a hollow name-drop. But the approach is NOT the proprietary how — naming tools, exact counts, or internal workflow is over-disclosure, not a strength.

- ✅ structural pass: explains the approach and why, and states BASEO does it ("tracking goes in first, then original city pages and situation pillars, then the AI layer, in that order, because situation pages without tracking is how the last agency hid").
- ❌ structural fail (too little): every mention is generic ("BASEO can help with SEO").
- ❌ over-disclosure (too much): the article reveals proprietary how — specific tool/vendor names, exact pages-per-month or links-per-month counts, internal QA/approval steps, outreach methodology. Flag it:

> ⚠️ Proprietary delivery detail published (tools / exact counts / internal workflow). Per editorial policy this stays off the blog — recommend trimming to the WHAT/WHY level.

Do NOT validate delivery accuracy against actual BASEO operations — Claude doesn't have ground truth beyond `baseo-services-reference`. Missing approach entirely (Active brief) → flag and propose the WHAT/WHY framing needed, without inventing specifics.

### Step 4 — Pain → service → CTA alignment

Identify the reader pain. Validate against `baseo-context` § Pain → service map.

- Pain on active map → ✅.
- Pain implies an out-of-scope service as the solution → ❌ (misaligned; tangential education would be fine, BASEO-as-provider is not).
- Pain not on any list → flag as misaligned.

CTA checks (per § Funnel stages):
- BOFU without hard CTA → flag.
- TOFU with hard sell in first 200 words → flag.
- MOFU never naming a specific service → flag.
- Generic CTA ("subscribe to our newsletter") → flag.
- CTA other than the audit (or a verified URL) → flag.

Quote the actual CTA(s) and propose replacements where needed.

### Step 5 — Voice and style

| Check | Method | Flag if |
|---|---|---|
| Intro under 80 words | Count | > 80 |
| Intro uses Template A/B/C | Pattern match | None; warm-up paragraph |
| Banned intro opener | Search openers | Any found |
| H2 keyword coverage | % H2s with primary keyword | < 60% |
| H2 length | Most 3–8 words, max 12 | Outliers without long-tail value |
| H3 long-tail coverage | Cluster across H2s+H3s | < 60% combined |
| Paragraph rhythm | Most 1–3 sentences | Multiple > 4 |
| Deal-math sentences | Sentences with number + source, at least one converted to deals/dollars | < 3 sourced numbers, or zero deal-math conversion |
| Agency-speak | Search the translation-gap table (conversions, ROAS, organic visibility, impressions-as-success) | Any untranslated |
| Marketing-verb H2s | unlock/leverage/supercharge/harness | Any |
| Tables/lists well-formed | Headers, parallel structure, 3+ items | Malformed |
| Featured snippet target | Deliberate definition / list / table | None |
| Sounds-like-the-old-agency test | Read as B1: any sentence that fits a generic agency pitch deck | Quote each |
| Expertise nudge — tone | Is the "this is how we do it / here's your gap" beat consultative (reader concludes, authority by specialization) or arrogant ("wrong team," "we're the experts," "come to us")? | Arrogant phrasing → flag and quote (trust-killer per `baseo-context`) |
| Expertise nudge — frequency | Count the self-referential "you should be doing this / that's why you need us" beats | 3+ → flag as over-promotion (cap is 1–2, ideally 1 in the close, per `baseo-style-guide` § Frequency cap) |

Quote each violation with context.

### Step 6 — Cliché scan (deterministic)

Search against `baseo-context` § Banned clichés (all three lists: generic slop, agency-speak, trust-killers). Quote each with its sentence.

- 0–2 → no penalty. 3+ → downgrade 1 tier and flag each. (Trust-killers also trigger Step 1c/1d caps where applicable.)

### Step 7 — Actionability

Every article must be executable or decision-enabling for an operator:

- Specific steps, specific numbers, specific timelines? ("Build one page per market; expect first leads month 3–5" ✅. "Invest in SEO for long-term growth" ❌.)
- Concrete examples, real SERP/report moments, before/after states, napkin-math the reader can run on his own business?
- Could the reader take a real action (audit his own site, ask his agency the 7 questions, run the deal math) within a day of reading?

Purely conceptual with no implementable takeaway → cap at 3.

### Step 8 — Score and verdict

Apply hard caps first, then assign holistic 1–5:

| Score | Verdict | Meaning |
|---|---|---|
| 5 | PASS | Right reader, right pain, right service, right voice, clean claims. Publish as-is. |
| 4 | PASS WITH EDITS | Strong fit. Minor polish. |
| 3 | REVISE | Topic OK, fix specific issues this week. |
| 2 | REFRAME | Major rework — different angle, same topic. |
| 1 | KILL | Wrong audience, fabricated service/claim, guarantees, or multiple price disclosures. Replace in the calendar. |

Pick one score. No fractions, no hedging.

---

## Output format

Return in exactly this structure. **Write the report in Spanish** (the reviewer reads Spanish). Two things stay in their original language: (1) quotes from the article, verbatim (English); (2) any suggested replacement copy that would be inserted into the article — meta titles, meta descriptions, CTA text, anchor text — must be in the article's language (English), since it goes into an English article. Section headers below may stay as-is or be translated; the analysis prose is Spanish.

```
## BASEO Content Review

**Verdict**: PASS | PASS WITH EDITS | REVISE | REFRAME | KILL
**Score**: X / 5
**Framing detected**: Active | Tangential
**Funnel stage**: TOFU | MOFU | BOFU
**Primary persona**: B1 Burned | B2 PPC-Dependent | B3 Invisible Veteran | B4 Scaling | B5 AEO First-Mover | NONE

---

### Hard cap status

- Gut check: X/3 passed
  1. Investor reader (not seller/generic)? ✅/❌ — [justification]
  2. Deals-and-dollars language? ✅/❌ — [justification]
  3. BASEO connection appropriate to framing? ✅/❌ — [which service, or "none"]
- Package/price disclosure: ✅ none / ❌ N — [quote each]
- Guarantee language: ✅ none / ❌ — [quote each]
- Service fabrication: ✅ none / ❌ — [list with quotes]
- Claim integrity: ✅ all approved/sourced / ❌ — [list each violation with quote]

[State the cap triggered, if any]

### Persona fit
[2–3 sentences + 2 quoted passages. If anti-persona, name which.]

### Service coverage
- **BASEO named**: N times in body, M in CTA only
- **Active services referenced**: [canonical name] — "[quote]"
- **Method vs. mention**: [method shown / mention only / mixed] — quote the strongest method passage
- [⚠️ delivery-detail verification notes if any]

### Pain → service → CTA alignment
- **Pain identified**: [pain]
- **Service it maps to**: [service] — ✅ active / ❌ out-of-scope / ❌ not on map
- **Current CTA(s)**: "[quote]"
- **CTA verdict**: ✅ / ⚠️ / ❌

### Voice and style
- **Intro**: NN words, Template A/B/C/none — quote first sentence
- **H2 keyword coverage**: X/Y (Z%) — quote H2s missing it
- **Paragraph rhythm**: ✅ / ❌ — quote the longest
- **Deal-math sentences**: N sourced numbers, deal conversion ✅/❌ — quote 1–2
- **Agency-speak found**: [list with quotes]
- **Banned intro openers / marketing-verb H2s**: [list]
- **Old-agency-pitch sentences**: [list with quotes]
- **Featured snippet target**: ✅ deliberate / ⚠️ accidental / ❌ none — type + location

### Red flags
[Bulleted, each with a quote. Empty if none.]

### Clichés detected (from baseo-context)
- "[phrase]" — in: "[sentence]"
[3+ → note automatic 1-tier downgrade.]

### Actionability
[2–3 sentences. Quote the strongest action sentence.]

### Top 3 fixes (if not a 5)
1. [Specific change with quote]
2. [...]
3. [...]

### One-line summary
[One sentence the editor can act on.]
```

---

## Hard rules for the review itself

- **Quote the article.** Never characterize without a quote.
- **Write the report in Spanish.** Exceptions that stay in the article's language (English): verbatim quotes, and any suggested replacement copy meant to be inserted into the article (meta title/description, CTA, anchor text).
- **No hedging. Pick one verdict.**
- **Don't inflate scores.** A 1 or 2 is valid.
- **Don't use buzzwords or agency-speak in the review.** Practice what the ICP demands.
- **Don't rewrite unless explicitly asked in a follow-up turn** (then use `baseo-style-guide` + `baseo-context`).
- **Don't fabricate services, claims, or delivery specifics in suggestions.** Active catalog + Approved claims library + services-reference only. If a fix needs an undocumented delivery detail, say "verify with Eddie."
- **Don't fabricate URLs.** `baseo-context` § Canonical URLs or the article's existing links only.

---

## What this skill does NOT do

- On-page audit → `baseo-onpage-audit`.
- Brief generation → `baseo-brief-enrich`.
- Article rewriting → follow-up turn.
- Persona / service / cliché definition → `baseo-context`.
