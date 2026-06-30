# baseo-finalize

## Description

Phase 4 of the BASEO content pipeline. Takes a polished article that has passed `baseo-self-check` and editorial review, and produces a `.docx` file editable in Google Drive. The output is the production-ready handoff: upload to Drive, add real visuals for the `[SCREENSHOT: ...]` placeholders, final polish, publish to the BASEO blog.

Trigger phrases: "finalize this article," "convert to docx," "prepare for upload," "build the deliverable," plus Spanish equivalents ("finaliza el artículo," "convierte a docx," "prepara para subir a Drive").

This skill runs AFTER editorial review approves the polished article. If review returned REVISE / REFRAME / KILL, the article goes back to the writer — not to finalize.

---

## What this skill expects loaded

- **The polished article** (output of `baseo-self-check`, post-approval) — mandatory.
- **The brief** (`baseo-brief-enrich` output) — for the metadata header. Optional but recommended.
- `baseo-context` — for canonical URLs (verify the CTA URL).
- `anthropic-skills:docx` — for the actual `.docx` generation. Must be loadable in the same session.

If the polished article is missing, STOP and ask. If the docx skill is unavailable, STOP and surface the dependency.

---

## Scope: what this skill produces

A single `.docx` in the article folder, named after the article (e.g., `seo-vs-ppc-real-estate-investors.docx`), containing:

1. **Metadata header** — editorial context table + SEO metadata table (see Stage 2).
2. **Article title** as H1; intro; TOC (if present) with anchor links.
3. **All body sections** with H2/H3 hierarchy, native Word tables, working hyperlinks, bold/italic preserved.
4. **Image placeholders** as yellow-background boxes with the `[SCREENSHOT: ...]` text, each followed by a light-blue box holding its `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` block, in monospace.
5. **Final thoughts** + **CTA** formatted as a distinct callout box.

NOT produced: the Draft notes appendix (stripped), the self-check report, real screenshots.

---

## The finalize workflow

### Stage 1 — Parse the input + final sanity check

Strip the Draft notes appendix if present (everything after the final `---`).

Confirm structure: title, intro, H2s, closing, CTA. Malformed → STOP.

If the brief is provided, extract: primary keyword, persona, funnel stage, brief type, SEO metadata. If not, infer from the article and mark "inferred."

**Em-dash sanity check**: search for — (U+2014). Expectation: zero (self-check fixed them).
- 1–3 found: apply the self-check replacement logic (comma/colon/period by context).
- 4+ found: STOP — process gap; send back to self-check.
En-dashes (–) in ranges are fine.

**Keep both image blocks**: each image is a `[SCREENSHOT: ...]` marker + a `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` block. Keep both in the docx so the publisher can generate the image from the prompt. The `[SCREENSHOT: ...]` becomes a yellow box; the `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` becomes its own distinct box right below it (see Stage 4). Do NOT strip either.

**Compliance spot-check** (defensive, since this is the last gate before publishing):
- Any package name or BASEO price outside the approved case-study context → STOP, return to writer.
- Any guarantee phrase ("guaranteed page 1," "we'll get you X leads") → STOP, return to writer.
- CTA URL not a ✅-verified entry in `baseo-context` § Canonical URLs → STOP, ask the editor to fix.

### Stage 2 — Build the metadata header

Two tables above the article H1:

**Table A — Editorial context**:

| Field | Value |
|---|---|
| Article title (H1) | [from H1] |
| Date finalized | YYYY-MM-DD |
| Primary keyword | [from brief or inferred] |
| Persona target | B1–B5 |
| Funnel stage | TOFU / MOFU / BOFU |
| Brief type | Active / Tangential |
| Status | Approved for publication — placeholders need human completion |

**Table B — SEO metadata for upload** (visually distinctive):

| SEO field | Value | Check |
|---|---|---|
| Meta title | [from brief § SEO metadata proposal, or Draft notes, or inferred] | NN chars (50–60) ✅/⚠️ |
| Meta description | [...] | NN chars (140–160) ✅/⚠️ |
| URL slug | `[slug]` | NN words ✅/⚠️ |

The publisher copy-pastes Table B into the CMS. ⚠️ = verify before publishing.

### Stage 3 — Convert markdown to docx

Invoke `anthropic-skills:docx` (read its SKILL.md first if not loaded). Map: H1 → Heading 1, H2/H3 → Heading 2/3, paragraphs → Normal, lists → native list styles, tables → native tables with header formatting, links → hyperlink fields, emphasis preserved.

### Stage 4 — Format the distinctive blocks

**Image placeholders (`[SCREENSHOT: ...]`)**: single-cell table, light yellow background (#FFF2CC), monospace text, full width. Caption (if present) as italic text below the box.

**Image-generation prompts (`[PROMPT FOR CHATGPT IMAGE GENERATION: ...]`)**: single-cell table, light blue background (#DAE8FC), monospace text, full width, placed directly below its yellow `[SCREENSHOT: ...]` box. This keeps the prompt visible and easy to copy. The publisher copies it into ChatGPT, generates the image, and replaces both boxes with the real image.

**CTA callout box**: single-cell table, light gray background or thick border, CTA text + hyperlink bolder/larger than body. Example:

> **Get your free site audit →** ([https://www.thebaseo.com/home-cash-buyers-seo/#hero](https://www.thebaseo.com/home-cash-buyers-seo/#hero))

Placed at the end, after Final thoughts.

### Stage 5 — Output the file

Save to the article folder: `articles-in-progress/[primary-keyword-slug]/[primary-keyword-slug].docx`. If run standalone, save to the current working folder.

Provide a link to the file in the chat response, plus a handoff summary: file location, screenshot placeholder count, CTA verification status, next steps.

---

## Output format

```
# baseo-finalize — Output ready

## File

📄 **[article-name].docx** — [link]

Upload to Google Drive. Drive opens it as a Google Doc for editing.

## Metadata captured in the header

| Field | Value |
|---|---|
| Article title | [title] |
| Date finalized | YYYY-MM-DD |
| Primary keyword | [keyword] |
| Persona target | [B1–B5] |
| Funnel stage | [stage] |
| Brief type | Active / Tangential |

## Placeholders for human completion

### Visuals to add: N
- `[SCREENSHOT: ...]` (+ its `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]`) — section H2 "[name]"

## CTA verified

- Text: "[CTA text]"
- URL: [URL] — ✅ verified in `baseo-context` § Canonical URLs

## Next steps for the editor

1. Open the .docx in Google Drive (right-click → Open with Google Docs)
2. For each yellow box: copy the prompt from the blue box below it into ChatGPT, generate the image, and replace both boxes with the real visual
3. Final polish edit if needed
4. Copy to the CMS and publish
```

---

## Hard rules

- **Don't modify article content.** Finalize is format-and-package. Content issues → back to the writer.
- **Don't fill placeholders.** Yellow `[SCREENSHOT: ...]` boxes and blue `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` boxes stay verbatim for the human.
- **Strip the Draft notes appendix.**
- **Verify the CTA URL** against `baseo-context` § Canonical URLs. Unverified → STOP.
- **Run the compliance spot-check** (prices, packages, guarantees) — any hit STOPs the finalize.
- **Match the article's language** for generated metadata text.
- **Use `anthropic-skills:docx`** for the conversion — don't build docx from scratch.
- **Filename convention**: slugified primary keyword + `.docx`.
- **No analysis or commentary inside the docx** — only article + metadata header + CTA box.

---

## What this skill does NOT do

- Evaluate content → `baseo-content-review` (runs before).
- Audit on-page → `baseo-onpage-audit` (runs before).
- Auto-fix or rewrite → `baseo-self-check` / `baseo-draft`.
- Capture real visuals → human, in Drive.
- Publish to the CMS → manual or future automation.
- Generate new content or metadata beyond what brief + article establish.
- Translate the article.
