# baseo-onpage-audit

## Description

Audit publication-readiness of a BASEO blog post. Checks four on-page layers: internal linking, meta tags, article structure, and CTA. Returns one structured report. Nothing else.

Trigger phrases: "review internal links," "audit linking," "check the metas," "evaluate the CTA," "audit on-page," "is this publication-ready," plus Spanish equivalents ("revisa el enlazado interno," "audita los metas," "audita el on-page," "está listo para publicar").

Do NOT use for ICP fit, service coverage, claim integrity, voice, or style — those live in `baseo-content-review`. Stay in your lane.

---

## What this skill expects to have loaded

- **`baseo-context`** — canonical URLs (CTA validation), personas (CTA fit), funnel stages (CTA expectations), banned phrases (anchor/CTA voice).
- **`baseo-style-guide`** — visual cadence rules, H2 cadence, intro and closing conventions, link density.
- **`baseo-corpus.csv`** — sitemap of published BASEO blog content, in the mounted working folder. Expected columns: `url, title, meta_description, primary_keyword`.

If `baseo-corpus.csv` is missing or empty, run the other checks and clearly note that internal-linking suggestions could not be generated.

---

## Scope

- **Internal linking** — density, missed opportunities (vs corpus), anchor quality, orphan/self-link detection.
- **Meta tags** — title length/keyword, description length/value-prop.
- **Article structure** — TOC, H2 cadence, image/list/table minimums, closing section.
- **CTA** — presence, position, persona-and-funnel alignment, URL validity.

## What this skill does NOT review

- ICP fit, service coverage, claims, voice, style → `baseo-content-review`.
- Body rewriting. Keyword research, competitor analysis, rank tracking, backlinks.
- Non-blog content.

---

## Input handling

- **Pasted text or markdown**: evaluate directly.
- **Uploaded file** (.md, .html, .txt, .docx): read with the appropriate tool.
- **URL**: fetch via web_fetch.
- **Corpus**: read `baseo-corpus.csv` from the working folder (or a user-provided path).

---

## The audit workflow

### Check 1 — Internal linking

1. Extract topic terms from the target: title, H1, H2s, H3s, first sentence per section. Strip stop words; keep domain phrases ("motivated seller leads," "city landing pages," "cost per deal," "AI Overviews," "Google Business Profile," "Carrot site," etc.).
2. For each corpus row, extract topic terms from `title`, `primary_keyword`, `meta_description`.
3. Surface candidates with overlap ≥ 0.30, plus any corpus title/keyword appearing near-verbatim in the target body.
4. For each candidate: already linked → note and skip. Not linked → missed opportunity: propose anchor (2–6 words, natural) and quote the sentence where it should go.
5. **Density check**: 4–8 internal links per 1,000 words. Flag < 3 or > 10 per 1k.
6. **Quality flags**: orphan anchors ("click here," "read more"), over-linking (same URL 3+), self-links.

If corpus missing → run only steps 5–6 and state the limitation.

### Check 2 — Meta tags

| Element | Rule | Flag if |
|---|---|---|
| **Title** | 50–60 chars; primary keyword in first 30; no "\| BASEO" stuffing on TOFU/MOFU; no guarantee language | Outside range, keyword buried, guarantee phrasing |
| **Meta description** | 140–160 chars; promise + payoff + implicit CTA in investor language (leads/deals, not "visibility") | Outside range, no value prop, clickbait, agency-speak |

Quote exact value + char count. Propose a copy-pasteable replacement if flagged.

### Check 3 — Article structure

| Element | Rule | Flag if |
|---|---|---|
| **TOC** | Present for articles > 1,500 words; lists H2s with anchors | Missing or incomplete |
| **H2 cadence** | One H2 every ~300–500 words, roughly even | H2s within 150 words of each other, or > 800-word gaps |
| **Visual minimums** | ≥ 2 images, ≥ 1 list, ≥ 1 table | Below any minimum |
| **Closing section** | `## Final thoughts` (or `## The bottom line` / `## What to do next`), 100–200 words | Missing, > 300 or < 50 words |

Count both real images and `[SCREENSHOT: ...]` placeholders; if only placeholders, note that real visuals must be added before publishing.

### Check 4 — CTA

1. Identify CTA(s): links to the audit/contact URL, buttons, inline phrases ("Get your free site audit," "See what's broken on your site").
2. Surface-judge the primary persona (B1–B5) and funnel stage from visible cues. Do NOT call into `baseo-content-review`.
3. Judge against funnel + persona per `baseo-context` § Funnel stages:
   - **TOFU**: one soft audit CTA near the end, zero-pressure framing ("free, written, no call required"). Not in first 200 words.
   - **MOFU**: mid-post + end CTAs, tied to the workflow shown.
   - **BOFU**: multiple touches; commercial detail allowed ("pricing for your market is included in the audit").
4. **URL validity**: every CTA URL must be a ✅-verified entry in `baseo-context` § Canonical URLs, OR a thebaseo.com URL present in `baseo-corpus.csv`. Anything else → flag as potentially fabricated.
5. **CTA voice**: no banned clichés, no pressure tactics ("spots filling fast"), no guarantees. Failing voice → propose a replacement matching persona + stage and the brand's risk-reversal framing.

Missing, generic ("subscribe"), or mismatched CTA → propose a specific replacement with a verified URL.

---

## Output format

Match the blog's source language (skill names stay in English). Quote the original verbatim.

```
## BASEO On-Page Audit

**Post**: [title or filename]
**Word count**: ~XXXX
**Funnel stage (surface judgment)**: TOFU | MOFU | BOFU
**Primary persona (surface judgment)**: B1 | B2 | B3 | B4 | B5 | NONE

---

### 1. Internal linking

**Current internal links**: X (target for this word count: Y–Z)
**Corpus checked**: [path, or "not provided — missed-opportunity suggestions unavailable"]

#### Missed linking opportunities
1. In: "[exact sentence]"
   - Anchor: "[2–6 words]"
   - Link to: [corpus URL]
   - Why: [shared terms]

#### Linking issues
- [orphan anchors / over-linking / self-links with quotes]

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "..." (NN chars) | ✅/❌ | [replacement if ❌] |
| Description | "..." (NN chars) | ✅/❌ | [replacement if ❌] |

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ✅/❌/N/A | [...] |
| H2 cadence | ✅/❌ | [...] |
| Images | N real / N placeholders / ❌ | [list] |
| Lists | N ✅/❌ | — |
| Tables | N ✅/❌ | — |
| Closing section | ✅/❌ | [first sentence, NN words] |

---

### 4. CTA

**Current CTA(s)**: [quote with context]
**Position(s)**: [end / mid / multiple]
**URL validity**: ✅ all verified / ❌ N unverified [list]
**Verdict**: ✅ Aligned / ⚠️ Weak / ❌ Missing or mismatched

**Suggested CTA(s)**:
- Primary: "[exact text]" → [verified URL]

**Rationale**: [one sentence on stage + persona fit]

---

### Top fixes (priority order)

1. [Specific change with exact location]
2. [...]
3. [...]

### One-line summary

[One sentence the editor can act on.]
```

---

## Hard rules

- **Quote the blog.** Exact titles, char counts, CTA text.
- **Every suggestion copy-pasteable.**
- **Do not rewrite the body.** Body issues → `baseo-content-review`.
- **CTA wording customized to topic + persona**, using verified URLs only.
- **Don't fabricate URLs.** Canonical URLs (✅ entries) or corpus only. No relevant URL → omit the suggestion.
- **Don't fabricate delivery details in CTAs or anchors.** Describe the capability ("the free written audit"), never invent specifics.
- **Match the blog's source language**; suggested rewrites in the blog's language.
- **No buzzwords or agency-speak in your own output.**

---

## What this skill does NOT do

- ICP / service / claim evaluation → `baseo-content-review`.
- Voice / style / rhythm → `baseo-content-review`.
- Body editing. Keyword research, competitor analysis, backlinks.
- Non-blog content.
