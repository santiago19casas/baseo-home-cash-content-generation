# baseo-create-article

## Description

End-to-end orchestrator for the BASEO content creation pipeline. Takes raw editorial inputs (topic, cluster of keywords, heading structure, optional angle context) and runs the full sequence: `baseo-brief-enrich` → `baseo-research` → `baseo-outline` → `baseo-draft` → `baseo-self-check`. Outputs a polished article ready for editorial review.

This is the skill a writer invokes once. The orchestrator runs the 5-stage pipeline, saves each intermediate output as a separate file, honors STOP conditions from any sub-skill, and supports resumption from any stage.

Trigger phrases: "create this article," "run the pipeline," "generate the full draft," "process this topic end-to-end," plus Spanish equivalents ("crea este artículo," "corre la pipeline," "genera el draft completo").

---

## What this skill expects loaded

- **All 5 sub-skills**: `baseo-brief-enrich`, `baseo-research`, `baseo-outline`, `baseo-draft`, `baseo-self-check` — loadable in the same session.
- **All reference files**: `baseo-context`, `baseo-style-guide`, `baseo-services-reference.md`, `baseo-image-prompts.md`, `baseo-corpus.csv`.
- **WebSearch / web_fetch** for the research stage.

If any required tool or file is missing, STOP at the earliest stage that needs it and report the missing dependency.

---

## Inputs

1. **Topic / working title**.
2. **Cluster of keywords** (2–5 with shared search intent).
3. **Heading structure table** — H1/H2/H3 + guideline per heading, from the editorial SERP-analysis step.
4. **Optional: angle context** (e.g., "target B1," "lead with deal math," "AEO-attached").
5. **Optional: language** — defaults to English.

### Resume inputs (optional — skip earlier stages)

- `brief.md` (skips Stage 1)
- `brief.md + research-dossier.md` (skips Stages 1–2)
- `brief.md + research-dossier.md + outline.md` (skips Stages 1–3)
- `draft.md` (skips Stages 1–4; runs self-check only)

If both `outline.md` and `draft.md` are provided, use `draft.md` and skip outline.

---

## Pipeline stages

### Stage 0 — Prepare the article folder

1. Extract the **primary keyword** (explicit or first in cluster).
2. Slugify it: lowercase, hyphens, no special characters.
3. Create `articles-in-progress/[primary-keyword-slug]/` inside the working folder. If it already exists (re-run), reuse it — only stages that run this time overwrite their files.

Examples:
- `articles-in-progress/seo-for-real-estate-investors/`
- `articles-in-progress/ppc-vs-seo-cost-per-deal/`
- `articles-in-progress/chatgpt-motivated-seller-leads/`

If the folder cannot be created, STOP and report.

### Stage 1 — Enrich the brief

Invoke `baseo-brief-enrich` with: cluster + heading structure + angle context.

- Save to `articles-in-progress/[slug]/brief.md`.
- If brief-enrich STOPs (seller-targeted cluster, out-of-scope service framed as BASEO protagonist, out-of-domain pain, missing input) → STOP the pipeline. Report the reason verbatim. Do not proceed.

### Stage 2 — Gather research

Invoke `baseo-research` with: the brief.

- Save to `articles-in-progress/[slug]/research-dossier.md`.
- Honor the WebSearch budget (3–6 calls target).
- If research degrades (WebSearch unavailable, no corpus) → continue per research's fallback rules; note degradation in the final report.
- If research STOPs (malformed brief, zero usable sources) → STOP. Report.

### Stage 3 — Expand to outline

Invoke `baseo-outline` with: brief + dossier.

- Save to `articles-in-progress/[slug]/outline.md`.
- If the compliance preflight has any ❌ → STOP. Report which checks failed and what the editor must resolve.

### Stage 4 — Write the draft

Invoke `baseo-draft` with: the outline.

- Save to `articles-in-progress/[slug]/draft.md` (article + Draft notes appendix).
- If the drafter STOPs → STOP. Report.

### Stage 5 — Self-check

Invoke `baseo-self-check` with: the draft.

- Save `articles-in-progress/[slug]/polished-article.md` (article body, fixes applied) and `articles-in-progress/[slug]/self-check-report.md`.

---

## Output

### On success

The article folder contains: `brief.md`, `research-dossier.md`, `outline.md`, `draft.md`, `polished-article.md`, `self-check-report.md`.

The chat response includes: pipeline summary table, self-check verdict, top 3 flags, and file paths.

### On STOP

Save all completed outputs; report which stage failed and why (verbatim from the sub-skill); suggest resolution; list partial outputs.

---

## Output format

```
# baseo-create-article — Pipeline Run

## Inputs

- **Topic**: [topic]
- **Primary keyword**: [keyword]
- **Cluster**: [keywords]
- **Heading structure**: [N H2s, M H3s]
- **Angle context**: [text or "none"]
- **Language**: English | Spanish

**Article folder**: `articles-in-progress/[slug]/`

## Pipeline status

| Stage | Skill | Status | Output file | Notes |
|---|---|---|---|---|
| 0 | prepare folder | ✅ created / reused | `articles-in-progress/[slug]/` | |
| 1 | brief-enrich | ✅ / ❌ STOP / ⏭ skipped | `brief.md` | [Active/Tangential — flag count] |
| 2 | research | ✅ / ⚠️ degraded / ❌ / ⏭ | `research-dossier.md` | [N searches, corpus N rows] |
| 3 | outline | ✅ / ❌ / ⏭ | `outline.md` | [preflight: all ✅ or N ⚠️] |
| 4 | draft | ✅ / ❌ / ⏭ | `draft.md` | [NN words, N SCREENSHOT placeholders] |
| 5 | self-check | ✅ / ❌ / ⏭ | `polished-article.md` + `self-check-report.md` | [verdict] |

## Final verdict

**Status**: ✅ Ready for review | ⚠️ Needs writer attention | ❌ Stopped at Stage N

[Summary appropriate to status]

## Top flags from self-check (if any)

- [...]

## Output files (all in `articles-in-progress/[slug]/`)

- [brief.md](path)
- [research-dossier.md](path)
- [outline.md](path)
- [draft.md](path)
- [polished-article.md](path) ← send for editorial review after resolving flags
- [self-check-report.md](path)

## Notes for the writer

- [`[SCREENSHOT: ...]` placeholders to capture before publishing]
- [Any proprietary how-detail the self-check flagged for trimming]
- [Degradations, brief flags carried forward, etc.]
```

---

## Resume capability

Provide upstream outputs to skip stages:

- Edited the brief manually → provide `brief.md`, starts at Stage 2.
- Added sources to the dossier → provide brief + dossier, starts at Stage 3.
- Adjusted the outline → provide all three, starts at Stage 4.
- Manually-written draft → provide `draft.md`, runs Stage 5 only.

Skipped stages are marked `⏭ skipped (provided)`.

---

## Hard rules

- **Run stages in order.** No skipping unless an upstream output is provided.
- **Save every intermediate output**, even on STOP.
- **Honor sub-skill STOP conditions.** A STOP stops the orchestrator.
- **Don't modify sub-skill outputs.** Pass as-is between stages.
- **Don't add commentary between stages.** The status table covers progress.
- **Don't override sub-skill logic.** Brief says Tangential → everything downstream gets Tangential.
- **Match the input language** for sub-skill outputs; the orchestrator's report is English by default.
- **Don't attempt automatic resumption after a STOP.** Writer fixes and re-invokes.

---

## What this skill does NOT do

- Generate or modify the inputs (cluster, heading structure).
- Substitute for any sub-skill's logic.
- Evaluate the final article → `baseo-content-review`.
- Audit on-page → `baseo-onpage-audit`.
- Produce the .docx deliverable → `baseo-finalize`.
- Capture screenshots — human responsibility before publishing.
- Run on incomplete inputs: missing topic, cluster, or heading structure → STOP at Stage 1 with a clear message.
