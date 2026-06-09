# baseo-self-check

## Description

Step 5 of the BASEO content creation pipeline. Runs a deterministic compliance pass on a draft and auto-fixes the safe issues before the draft reaches editorial review. The goal: the reviewer spends their time on judgment calls, not on counting clichés or grep-ing for price disclosures.

Defense-in-depth: this skill runs whether the draft came from `baseo-draft` or was written manually. The drafter has its own internal pass; self-check is a second, independent pass for every draft, any origin.

Trigger phrases: "self-check this draft," "pre-review compliance check," "polish before review," plus Spanish equivalents ("haz el self-check," "revisa antes de mandarlo a review").

---

## What this skill expects loaded

- **The draft to check** (mandatory). Either a `baseo-draft` output (article + Draft notes appendix) or a manually-written markdown article.
- `baseo-context` — banned clichés/agency-speak/trust-killers, pricing disclosure policy, Approved claims library, Service catalog + Out-of-scope list, canonical URLs, funnel rules.
- `baseo-style-guide` — paragraph rhythm, H2/H3 rules, intro patterns, link density, visual minimums, closing conventions.
- Optionally, the **brief** — to verify against original targets. Without it, use style-guide defaults.

---

## Scope: what this skill produces

Two outputs separated by `---`:

1. **Polished draft**: article body with safe auto-fixes applied (banned phrases replaced, agency-speak translated, marketing-verb H2s rewritten, price disclosures removed, em-dashes replaced). `[SCREENSHOT: ...]` and `[PROCESS: ...]` placeholders stay untouched.
2. **Self-check report**: structured fix log + flags, with verdict (✅ Ready for review | ⚠️ Needs writer attention before review).

---

## The self-check workflow

5 stages. Each is deterministic — counts, pattern matches, range comparisons. No judgment calls.

### Stage 1 — Parse the draft

Separate article body from Draft notes appendix if present. Use Draft notes for context but verify everything independently — don't trust its claims.

### Stage 2 — Deterministic checks

| # | Check | Method | Auto-fix? |
|---|---|---|---|
| 1 | Banned clichés | Search body against `baseo-context` § Banned words and phrases | ✅ Yes |
| 1b | Banned agency-speak | Search for the left column of the translation table (conversions, ROAS, organic visibility, impressions-as-success, etc.) | ✅ Yes (translate to investor language) |
| 1c | Banned trust-killers | Search for guarantee phrases, "trust the process," "full-service," "all industries," "leads in 30 days," 10x promises | ❌ Flag only — usually requires sentence rework, and guarantees are STOP-level |
| 2 | Banned intro openers | Match first sentence against banned opener list | ✅ Yes (rewrite to Template A/B/C) |
| 3 | Marketing-verb H2s | Search H2s for "unlock," "leverage," "supercharge," "harness," "empower" | ✅ Yes |
| 4 | Package/price disclosure | Search for "Foundation," "Growth," "Domination," "PStarter," "$2,500," "$4,500," "$7,500," "$1,500," "/month" price patterns, "setup fee" | ✅ Yes (remove/rephrase) — EXCEPTION: "$4,500" inside the approved Florida case-study claim is allowed; verify context before fixing |
| 4b | Em-dashes (—) | Search body for U+2014 | ✅ Yes (replace per context table below) |
| 4c | Meta title length/keyword | From brief or Draft notes: 50–60 chars, keyword in first 30 | ❌ Flag only |
| 4d | Meta description length | 140–160 chars | ❌ Flag only |
| 4e | URL slug format | lowercase, hyphens, 3–6 words, keyword stem | ❌ Flag only |
| 5 | Banned structural patterns | Listicle-with-no-depth, generic-SMB content, ranking-promise structures | ❌ Flag only |
| 6 | First-party claim fidelity | Compare every BASEO result claim against the Approved claims library verbatim. Includes the 28-vs-42 check: any "42 leads" usage → flag | ❌ Flag only — STOP-level if a claim is invented |
| 7 | Service fabrication | Search for claims that BASEO delivers anything on the Out-of-scope list, or services not in the catalog at all | ❌ Flag only — STOP-level issue |
| 7b | Audience check | Detect seller-addressed passages ("if you need to sell your house fast...") — second-person aimed at homeowners | ❌ Flag only — STOP-level if structural |
| 8 | H2 keyword coverage | Count H2s with primary keyword variation | ❌ Flag only |
| 9 | H3 long-tail coverage | Count H3s with cluster variations | ❌ Flag only |
| 10 | H2 length compliance | Most 3–8 words, max 12 | ❌ Flag only |
| 11 | Paragraph rhythm | Paragraphs > 4 sentences | ❌ Flag only |
| 12 | BASEO mention count | vs framing × funnel from brief (or infer) | ❌ Flag only |
| 13 | Internal link count | Links to thebaseo.net | ❌ Flag only |
| 14 | Internal link URL validity | Verify against `baseo-corpus.csv` / `baseo-context` § Canonical URLs | ❌ Flag only |
| 15 | External link count | Tier 1/2 citations | ❌ Flag only |
| 16 | Data points without source | Numbers lacking source AND not in Approved library | ❌ Flag only — never fabricate sources |
| 17 | Image/list/table minimums | Count vs style-guide minimums | ❌ Flag only |
| 18 | `[SCREENSHOT: ...]` placeholders | Count | ⚠️ Inventory for human |
| 19 | `[PROCESS: ...]` placeholders | Count | ⚠️ Inventory for human |
| 20 | Featured snippet element present | Detect 40–60 word definition near top / 5–8 item list / comparison table | ❌ Flag only |
| 21 | TOC (if > 1,500 words) | Bulleted H2 anchor list above first H2 | ❌ Flag only |
| 22 | Closing section header | `## Final thoughts` / `## The bottom line` / `## What to do next` | ❌ Flag only |
| 23 | Closing word count | 100–200 | ❌ Flag only |
| 24 | CTA present at end | Explicit audit CTA | ❌ Flag only |
| 25 | CTA URL validity | Verified entry in `baseo-context` § Canonical URLs | ❌ Flag only |
| 26 | Total word count | vs brief range (or defaults) | ❌ Flag only |

### Stage 3 — Apply auto-fixes (safe rewrites only)

**Banned clichés (Check 1)** — simplest neutral equivalent that preserves meaning; if the swap breaks meaning, flag instead:

| Banned phrase | Auto-fix strategy |
|---|---|
| "leverage / harness [X]" | "use [X]" |
| "unlock the [X]" | drop "unlock the," keep [X] |
| "supercharge [X]" | "improve [X]" |
| "game-changing / revolutionary / cutting-edge / next-level" | delete the adjective |
| "in today's [competitive] market/world/landscape" | delete the phrase |
| "the power of / the magic of" | "what [X] does" or delete |
| "It's no secret that..." / "the truth is..." / "at the end of the day" | delete the phrase |
| "moreover / furthermore / additionally" as openers | delete the opener |
| "dive in / dive into" | "start" or "look at" |
| "as we mentioned earlier / as we'll see later" | delete |
| "in this article, we'll cover..." | rewrite to Template A/B/C |
| "hopefully this article helped you" / "share it" | delete the sentence |

**Agency-speak (Check 1b)** — translate per `baseo-context` table:

| Found | Replace with |
|---|---|
| "conversions" (lead context) | "leads" |
| "ROAS" | "cost per deal" (restructure sentence if needed; if restructuring changes meaning, flag) |
| "organic visibility" | "showing up on Google" / "rankings" |
| "impressions" (as success metric) | flag if it's the sentence's point; replace with "leads" only if trivially safe |

**Em-dashes (Check 4b)** — replace based on context:

| Pattern | Replacement |
|---|---|
| Joins two complete clauses | Period + capital |
| Introduces list/definition | Colon |
| Parenthetical aside | Comma pair |
| Soft pause | Comma |

Default if ambiguous: comma. En-dash (–) in ranges ("$2,500–$4,500", "months 2–6") is fine — do NOT replace.

**Marketing-verb H2s (Check 3)**: rewrite keeping keyword and topic. "Unlock more motivated seller leads" → "How motivated seller leads come from organic search."

**Package/price disclosure (Check 4)**: remove the disclosure, keep the capability/deal-math language. "Our Growth package at $4,500/month includes..." → "the monthly engagement includes..." If removal breaks the sentence, flag. Always verify the $4,500 exception context (approved case-study claim: "$54K profit on a $4,500 invoice") before touching it.

If ANY auto-fix changes meaning or breaks grammar, FLAG instead of fixing. Better to flag than to mangle.

### Stage 4 — Build the self-check report

For each check: ✅ pass / ⚠️ fixed (original → replacement, location) / ❌ flag (quote + location + suggested fix shape).

### Stage 5 — Verdict

- ✅ **Ready for review** — 0 ❌ flags.
- ⚠️ **Needs writer attention** — 1–3 ❌ flags (list top 3) / 4+ (list all).
- Any STOP-level issue (Check 6 invented claim, Check 7 service fabrication, Check 7b seller-addressed content, Check 1c guarantee language, missing snippet element, missing CTA on BOFU) → ⚠️ regardless of count.

---

## Output format

```
[POLISHED ARTICLE BODY — markdown, auto-fixes applied, placeholders intact]

# [Title]
[... full polished article ...]

## Final thoughts
[Closing]
[Get your free site audit →](URL)

---

# Self-check report

## Verdict

**Status**: ✅ Ready for review | ⚠️ Needs writer attention before review
**Summary**: N auto-fixes applied · N flags raised.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|

## Flags (require human attention)

### Critical (must fix before review)
- ❌ **[Check name]**: [issue] — Quote: "[...]" — Location: [section] — Suggested fix: [...]

### Style/structure (should fix before review)
- ❌ ...

### Informational
- ⚠️ ...

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count | NNNN | NN–NN | ✅/⚠️ |
| H2 keyword coverage | N/M (P%) | ≥ 60% | ✅/⚠️ |
| BASEO mentions | N | framing×funnel | ✅/⚠️ |
| Internal links (thebaseo.net) | N | N–N | ✅/⚠️ |
| External Tier 1/2 citations | N | ≥ 3 | ✅/⚠️ |
| Claims: first-party verbatim / external sourced | ✅/❌ | all | ✅/❌ |
| Guarantee language | 0 | 0 | ✅/❌ |
| Package/price disclosures | 0 | 0 | ✅/❌ |
| Images / lists / tables | I:N L:N T:N | minimums | ✅/⚠️ |
| `[SCREENSHOT]` placeholders | N | human fills | ⚠️ info |
| `[PROCESS]` placeholders | N | human verifies | ⚠️ info |
| Featured snippet element | present (type) / missing | present | ✅/❌ |
| TOC | present / N/A / missing | per rule | ✅/⚠️ |
| Closing section | "[header]" NN words | 100–200 | ✅/⚠️ |
| CTA at end + URL valid | present / missing | audit CTA, verified URL | ✅/❌ |

## Placeholders inventory (for human verification before publish)

### Process placeholders
- `[PROCESS: ...]` — service: [name] — section: H2 "[name]" — verify with Eddie/delivery

### Screenshot placeholders
- `[SCREENSHOT: ...]` — section: H2 "[name]" — what to capture: [description]
```

---

## Hard rules

- **Don't make judgment calls.** Mechanical only. Interpretation needed → flag.
- **Auto-fix only when meaning is preserved.**
- **Don't invent content.** Never add sources, links, claims, or text.
- **Don't remove placeholders.** `[SCREENSHOT: ...]` and `[PROCESS: ...]` are intentional.
- **Don't change article structure.**
- **Never "fix" a claim by adjusting the number.** Claim fidelity issues are flags for the writer, not edits.
- **Verify, don't trust the Draft notes.**
- **Polished article stays in the original language.** The report is in English by default.

---

## What this skill does NOT do

- Evaluate quality or assign verdicts → `baseo-content-review`.
- Audit on-page elements in depth → `baseo-onpage-audit`.
- Rewrite paragraphs or improve voice qualitatively.
- Add data points, links, images, or content.
- Verify BASEO delivery accuracy in `[PROCESS]` placeholders → human responsibility.
