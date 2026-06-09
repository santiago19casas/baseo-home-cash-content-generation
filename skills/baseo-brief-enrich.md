# baseo-brief-enrich

## Description

Step 1 of the BASEO content creation pipeline. Takes raw editorial inputs (cluster of 2–5 keywords + heading structure table + optional angle context) and produces an enriched brief that downstream skills (`baseo-research`, `baseo-outline`, `baseo-draft`) consume.

The goal: convert "we want to write about X" into a structured brief that explicitly answers who is the reader, what funnel stage, what pain → service, what angle, what CTA, what depth target, what featured snippet target.

Trigger phrases: "enrich this brief," "create a brief," "build a content brief," "prepare this for drafting," "convert the heading structure into a brief," plus Spanish equivalents ("enriquece este brief," "arma el brief," "convierte esto en brief").

This skill is run by the **editor** before handing the brief to the writer. The writer consumes the enriched brief, not the raw inputs.

---

## What this skill expects loaded

- **`baseo-context`** — for personas B1–B5, Service catalog, Out-of-scope services, Pain → service active map, Approved claims library, Funnel stages, Canonical URLs.
- **`baseo-style-guide`** — referenced briefly for snippet capture rules. Main consumer is the drafter later.
- **`baseo-corpus.csv`** — optional, used here only for sanity-checking that the proposed angle doesn't duplicate existing content. Not required.

---

## Inputs

The user must provide:

1. **Cluster of keywords** — 2–5 keywords with shared search intent, from editorial keyword research. Mark the primary keyword if known; otherwise the skill infers.
2. **Heading structure table** — rows of Heading + Level (H1/H2/H3) + Guideline. From the editorial SERP-analysis step.
3. **Optional: angle context** — free-text direction. Examples: "target B1 burned investors," "lead with the deal math," "use the Florida case study heavily," "AEO-attached for B5."

---

## Scope: what this skill produces

A single enriched brief in markdown, ready for `baseo-research` to consume and for the writer to read.

The brief includes:

- Editorial metadata (persona, funnel stage, language, depth target, word count range, density targets).
- Pain → service mapping (validated against the active map).
- Angle / POV.
- CTA target (verified URL + funnel-appropriate text — for BASEO, the free audit is the universal CTA).
- Featured snippet target type (paragraph / list / table) + which H2 captures it.
- SEO metadata proposal (meta title, meta description, URL slug).
- Per-heading enrichment: persona-specific notes added to each H2/H3.
- Notes for downstream skills.
- Flags for anything the editor should resolve before sending to the writer.

## What this skill does NOT do

- Keyword research (assumed done upstream in the editorial calendar).
- Heading structure generation (assumed done upstream via the SERP-analysis flow).
- Gathering external research → `baseo-research`.
- Outline expansion → `baseo-outline`. Writing → `baseo-draft`. Reviewing → `baseo-content-review` / `baseo-onpage-audit`.

---

## The enrichment workflow

### Step 1 — Parse inputs

Read the cluster, heading structure, and angle context. Identify the primary keyword and secondary keywords. Note the input language — articles default to English (US/Canada audience) unless the editor specifies otherwise.

If the inputs are incomplete (no headings, no cluster), STOP and ask the editor for the missing piece. Do NOT invent inputs.

**Audience gate (run first)**: if the cluster or headings indicate the searcher is a **homeowner/motivated seller** (e.g., "sell my house fast tampa," "how to sell an inherited house") rather than an investor researching marketing, STOP: "This cluster targets motivated sellers — that's client-site content, not BASEO blog content. Skip or reassign."

### Step 2 — Determine persona

Map to B1–B5 using signals in the cluster + heading guidelines + angle context:

| Signal | Likely persona |
|---|---|
| "SEO agency," "burned," "agency not delivering," "SEO report," "what should my agency do," "fire my SEO company" | B1 |
| "PPC," "Google Ads," "cost per lead," "cost per click," "PPC vs SEO," "reduce ad spend" | B2 |
| "Google Business Profile," "competitor ranking above me," "get found online," reputation/veteran signals | B3 |
| "Carrot," "investor website," "city pages," "DIY SEO," "how does SEO work for wholesalers," "motivated seller leads" (channel education) | B4 |
| "ChatGPT leads," "AI search," "AI Overviews," "Perplexity," "AEO," "llms" | B5 (attach to a base persona when possible) |
| None of above clearly | DEFAULT to B1 or B2 (primary editorial weight per `baseo-context`) |

Dual-audience acceptable when the inputs genuinely span two personas (e.g., B2 + B5). Avoid more than two — if three personas all fit, the article is too broad and should split.

If the angle context explicitly names a persona, use that and override the signal table.

### Step 3 — Determine funnel stage

| Keyword type | Funnel stage |
|---|---|
| "what is X," "does SEO work for real estate investors," "X explained," channel trends, AI search education | TOFU |
| "how to X," "audit X," "fix X," playbooks, checklists, "questions to ask," channel comparisons | MOFU |
| "best SEO agency for real estate investors," "SEO company for we buy houses," "[competitor/platform] alternative," "BASEO review," case study keywords | BOFU |

If mixed signals: pick the dominant stage of the cluster, not the highest-volume keyword.

### Step 4 — Pain → service mapping

Cross-reference the keywords + heading guidelines against `baseo-context` § Pain → service → angle map. The STOP rule isn't about the topic — it's about whether BASEO is framed as the provider of a service it doesn't sell. Five branches:

#### Branch 1 — Active pain (BASEO as protagonist)

Pain maps to an entry in the **active** table.

→ **Produce an Active brief.** BASEO's method is the playbook. Use canonical service name(s) for each section's service reference. CTA and mention frequency follow funnel-stage defaults.

#### Branch 2 — Out-of-scope service framed as BASEO protagonist

The angle or headings frame BASEO as delivering something on the **Out-of-scope services** list (e.g., "BASEO's follow-up automation," "How BASEO runs your direct mail campaigns").

→ **STOP.** Output a flag: "This brief frames BASEO as the provider of an out-of-scope service ([service]). Two options: (a) reframe as tangential (topic-protagonist education, no claim BASEO sells it), or (b) kill the topic."

This protects against service fabrication — the most damaging editorial error for an agency selling trust to burned buyers.

#### Branch 3 — Out-of-scope topic framed as tangential

The topic touches an out-of-scope service BUT the heading structure positions the **topic** (not BASEO) as the protagonist, and BASEO is mentioned only contextually.

Example: "Speed to lead: why answering in 5 minutes converts 900% more sellers" — follow-up systems are out of scope, but this educates the ICP and mentions BASEO once contextually.

→ **Produce a Tangential brief.** See Tangential adjustments below.

#### Branch 4 — Unmapped pain in BASEO's domain

Pain doesn't match the active map but the topic is clearly in BASEO's domain: SEO, AI search, investor lead-gen economics, Carrot ecosystem, Google updates, GBP, motivated-seller search behavior, marketing channel comparisons.

→ **Produce a Tangential brief.** Same adjustments as Branch 3.

#### Branch 5 — Pain out of BASEO's domain

No connection to investor marketing/lead generation at all (e.g., "best hard money lenders," "how to estimate rehab costs," "wholesaling contracts 101").

→ **STOP.** Output a flag: "This brief addresses a pain outside BASEO's editorial domain. Skip the article." (Deal-execution content may serve the persona, but it doesn't serve the funnel and dilutes topical authority.)

### Tangential brief adjustments (Branch 3 and Branch 4)

- **BASEO mention frequency**: 1–3 contextual mentions total, regardless of funnel stage.
- **CTA**: always soft. The free audit, low-pressure framing. URL from `baseo-context` § Canonical URLs.
- **Method positioning**: NOT required. Contextual mention is acceptable.
- **Mandatory in the brief**: a one-sentence **BASEO connection** justification. If you cannot articulate why this article serves BASEO's ICP, it's not tangential — it's out of scope. Move to Branch 5 (STOP).
- **Mark the brief explicitly**: `Brief type: Tangential`.

### Hard prohibitions (apply to BOTH Active and Tangential briefs)

- **Never claim BASEO sells an out-of-scope service.** Teaching about follow-up is education; "BASEO sets up your CRM" is fabrication.
- **Never promise rankings, lead counts, or timelines as guarantees.** Past client results (Approved claims library) are proof; promises are banned.
- **Never select an anti-angle** (`baseo-context` § Anti-angles) — including any seller-facing framing.
- **Never pick a CTA URL that isn't verified in `baseo-context` § Canonical URLs.**

If the inputs force any of these, STOP and flag the editor.

### Step 5 — CTA target

For BASEO, the universal conversion action is the **free Diagnostic Audit**. There is no "install free" equivalent; the audit IS the low-commitment entry by design.

- **TOFU** → one soft CTA at end. Framing: "free, written, no call required, yours to keep."
- **MOFU** → mid-post + end CTAs, both to the audit. Mid-post ties to the workflow just shown ("the audit shows you which of these is broken on your site").
- **BOFU** → multiple touches. Audit framed with the commercial detail: "pricing for your market is included in the audit."

CTA URL: the verified audit URL from `baseo-context` § Canonical URLs. Never invent URLs.

### Step 6 — Featured snippet target

Per `baseo-style-guide` § Targeting featured snippets. Choose ONE target type per article:

| H2 pattern in the structure | Target snippet type | Where it lives |
|---|---|---|
| "What is X?" / "X explained" | Paragraph snippet | 40–60 word definition right after intro, under the first H2 |
| "How to X" / numbered steps | List snippet | Numbered list (5–8 items) under a dedicated H2 |
| "X vs Y" / cost comparisons / "best X" | Table snippet | Clean comparison table above its explanation |

If two H2s could capture different snippet types, pick the one with higher search volume in the cluster.

### Step 6.5 — SEO metadata proposal

Propose the metadata that flows through outline → draft → self-check → finalize:

**Meta title**: 50–60 characters strict; primary keyword in the first 30; differentiated from the H1; no package/price disclosure; no guarantee language.

**Meta description**: 140–160 characters strict; promise + payoff + implicit CTA; primary keyword early; no clickbait; investor language (leads, deals), not agency-speak.

**URL slug**: 3–6 words, lowercase, hyphens, primary-keyword focused.

Example pairing:
- H1: "PPC Costs You $7,500 Per Deal. Organic Costs $500. Here's the Math"
- Meta title: "SEO vs PPC for Real Estate Investors: Cost Per Deal" (52 chars)
- Slug: `seo-vs-ppc-real-estate-investors`

Generate all three. If proposed values don't fit length constraints, propose 2 alternatives so the editor can pick.

### Step 7 — Depth and density targets

Default targets by funnel stage (adjust ±20% if angle context specifies):

| Stage | Word count | Internal links | Images min | Tables | Lists |
|---|---|---|---|---|---|
| TOFU | 1,200–2,200 | 5–10 | 2 | 1 | 1 |
| MOFU (playbook/how-to) | 1,800–3,000 | 7–15 | 3–4 | 1–2 | 2 |
| BOFU (evaluation/case study) | 2,000–3,500 | 8–18 | 3–5 | 2 | 2 |

Note the ceiling runs slightly lower than a technical-SEO blog: this audience reads less and skims more (podcast/YouTube learners). Depth comes from numbers and specificity, not length.

### Step 8 — Per-heading enrichment

For each H2/H3 in the original structure, add:

- **Persona-specific angle**: how to write this section for the target persona (e.g., for B1, lead with accountability mechanics; for B2, put the cost table here).
- **Service reference**: which BASEO service (active catalog only) this section names. May be "none."
- **Claims to use**: which Approved claims library entries or external stat candidates naturally support this section.
- **Snippet capture**: yes/no. If yes, which type and what to write.
- **Watch out for**: specific clichés, agency-speak, or guarantee language likely to creep in here.

Do NOT rewrite the original guideline. Add enrichment ON TOP of it.

---

## Output format

Produce the brief in this exact structure. Match the language of the input (skill names and persona labels stay in English).

```
# Brief: [Article working title — derive from primary keyword]

## Editorial metadata

- **Primary keyword**: [keyword]
- **Secondary keywords**: [keyword, keyword, keyword]
- **Language**: English | Spanish
- **Persona target**: B1 | B2 | B3 | B4 | B5 (+ rationale in one sentence; mark dual-audience if applicable)
- **Funnel stage**: TOFU | MOFU | BOFU
- **Word count target**: NN–NN
- **Internal link target**: N–N
- **Image minimum**: N · Tables minimum: N · Lists minimum: N
- **Brief type**: Active | Tangential

## Pain → topic → connection

For **Active** briefs:
- **Reader pain (in their words)**: "[the pain quoted as the investor would say it]"
- **BASEO service that solves it**: [canonical service name(s) from the active catalog]
- **Why this pairing**: [one sentence]

For **Tangential** briefs:
- **Reader pain or question (in their words)**: "[what the reader is trying to learn]"
- **Topic protagonist**: [the topic itself]
- **BASEO frame**: contextual mention only — NOT the method. State this explicitly.
- **BASEO connection (mandatory)**: [one sentence: why this serves BASEO's ICP]
- **Adjacent active service(s) this primes**: [if any]

## Angle / POV

[2–3 sentences. What makes this BASEO's take, not a generic marketing blog post? Reference the persona's pain, the deal-math frame, and the service.]

## Featured snippet target

- **Type**: paragraph | list | table
- **Captured under H2**: "[H2 name]"
- **Rationale**: [one sentence]

## CTA target

- **Funnel stage**: [TOFU / MOFU / BOFU]
- **Position(s)**: end | mid + end | multiple touches
- **Primary CTA text**: "[suggested copy — audit-framed, zero-pressure language]"
- **Primary CTA URL**: [verified URL from `baseo-context` § Canonical URLs]

## SEO metadata proposal

- **Meta title**: "[suggested]" (NN chars)
- **Meta description**: "[suggested]" (NN chars)
- **URL slug**: `[slug]`
- Alternatives: [alt title / alt description / alt slug]

## Enriched heading structure

### H2: [original heading]
- **Original guideline**: [verbatim from input]
- **Persona-specific angle**: [...]
- **Service reference**: [canonical service name, or "none"]
- **Claims to use**: [Approved claim or external stat candidate, or "none"]
- **Snippet capture**: yes (type) | no
- **Watch out for**: [clichés / agency-speak / guarantee risk]

#### H3: [original sub-heading]
- [same fields, lighter]

[Repeat for every H2 and H3.]

## Notes for downstream skills

- **For `baseo-research`**: [specific stats to source, competitor pages to check, corpus URLs likely relevant]
- **For `baseo-outline`**: [structural recommendations — e.g., "deal-math table under H2 #2, before the playbook"]
- **For `baseo-draft`**: [persona voice dial, mandatory framings, which claims library entries to use; if a delivery process is needed, note whether `baseo-services-reference` documents it or the drafter should insert a `[PROCESS: ...]` placeholder]

## Flags

[Bulleted list of concerns the editor should resolve. Empty if clean.]
```

---

## Hard rules

- **Never frame BASEO as the provider of an out-of-scope service.** Tangential framing IS allowed for out-of-scope topics — what STOPs the brief is the provider-frame, not the topic.
- **Never target motivated sellers as the reader.** Audience gate in Step 1 is mandatory.
- **Never invent a CTA URL.** Verified entries in `baseo-context` § Canonical URLs only.
- **Never plan guarantee language.** Proof = past results from the Approved claims library; promises are banned.
- **Default to B1 or B2 when persona is ambiguous.** Document the ambiguity in Flags.
- **Don't write prose for the reader yet.** The brief is a structured handoff.
- **Don't propose specific delivery details.** That's the drafter's job using `baseo-services-reference`. If a process moment is needed, note "drafter to describe [service] process or insert placeholder."

---

## What this skill does NOT do

- Gather external research → `baseo-research`.
- Expand into paragraph-level plans → `baseo-outline`.
- Write the draft → `baseo-draft`.
- Run self-check → `baseo-self-check`.
- Review or score finished content → `baseo-content-review` / `baseo-onpage-audit`.
