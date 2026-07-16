# BASEO On-Page Audit

**Post**: How to Find Off-Market Properties: 9 Proven Ways Investors Actually Use (`polished-article.md`)
**Word count**: ~2,944 (cuerpo, sin bloques de prompt)
**Funnel stage (surface judgment)**: MOFU
**Primary persona (surface judgment)**: B4

---

## 1. Internal linking

**Current internal links**: 14 (12 a posts del blog + 2 al CTA de audit) — target para ~2,950 palabras: 12–24 (4–8/1,000). Densidad actual ≈ 4.7/1,000 ✅
**Corpus checked**: `baseo-corpus.csv` (33 filas)

### Missed linking opportunities

1. In: "Building it means a real page for every city you buy in, pages for the situations sellers are actually in (probate, foreclosure, divorce, inherited), and content structured so AI engines cite you when a seller asks."
   - Anchor: "SEO for a real estate website"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-do-seo-real-estate-website/
   - Why: la guía de 8 pasos cubre location pages + GBP + AI search; es el "cómo" natural del párrafo. **Opcional** — la frase ya carga un link (rank-in-ai-overviews); si se agrega, ponerlo en una frase vecina para no saturar.
2. In: "They type \"sell my house fast\" plus their city into Google..."
   - Anchor: "keywords motivated sellers type"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/keywords-for-real-estate-investors/
   - Why: overlap directo con el primary keyword del corpus. **Opcional**, misma nota de densidad.

### Linking issues

- ❌ **Anchor de 7 palabras**: "ways to generate leads without cold calling" (método 7) — regla 2–6 palabras. Acortar a "leads without cold calling".
- ✅ Sin orphan anchors ("click here"), sin self-links, sin over-linking (URL máxima repetida: el CTA #hero, 2 veces, aceptable mid+end).

---

## 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "How to Find Off-Market Properties: 9 Ways That Work" (51 chars) | ✅ | keyword desde el carácter 1; rango 50–60 ok; sin guarantee language |
| Description | "How to find off-market properties in 2026: 9 methods investors actually use, with real costs, response rates, and the deal math to run before you offer." (152 chars) | ✅ | promesa + payoff + lenguaje investor; rango 140–160 ok |
| URL slug | `how-to-find-off-market-properties` (6 palabras) | ✅ | límite superior del rango 3–6, aceptado |

---

## 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ✅ | 7 anchors H2, tras la intro (requerido: > 1,500 palabras) |
| H2 cadence | ✅ | el bloque "9 ways" (~1,300 palabras) queda roto por 9 H3s; sin gaps > 800 palabras sin heading |
| Images | 0 reales / 3 placeholders ✅ | hero (Cat. 4), diagrama MAO (Cat. 5), SERP con AI Overview (Cat. 1) — cada uno con su prompt block. ⚠️ generar los 3 visuales reales antes de publicar |
| Lists | 2 ✅ | señales de driving for dollars (bulleted) + script de cold call (numerada) |
| Tables | 2 ✅ | tools (5 filas) + pros/cons (4 filas) |
| Closing section | ✅ | "## Final thoughts", ~140 palabras — "Off-market deals aren't found; they're manufactured." |

---

## 4. CTA

**Current CTA(s)**:
- Mid: "If you want to know what that channel would look like on your site, the [free written audit] shows you, no call required." (H2 "Make off-market sellers come to you")
- End: "[Get your free site audit →]" precedido de "Free, in writing, delivered in about 2 business days. No call required, yours to keep either way."

**Position(s)**: mid + end (correcto para MOFU; framing soft correcto para Tangential)
**URL validity**: ✅ ambas → https://www.thebaseo.com/home-cash-buyers-seo/#hero (verificada en `baseo-context` § Canonical URLs)
**Verdict**: ✅ Aligned

**Suggested CTA(s)**: sin cambios; el actual cumple stage + persona + risk-reversal.

---

## Top fixes (priority order)

1. Acortar el anchor "ways to generate leads without cold calling" → "leads without cold calling" (método 7).
2. Generar los 3 visuales desde sus prompt blocks y reemplazar ambos bloques por la imagen real en el editor (pre-publicación, humano).
3. Opcional: agregar 1 de los 2 links internos sugeridos si el editor quiere subir densidad (4.7 → 5.0/1,000).

## One-line summary

On-page listo para publicar: metas y CTA limpios, estructura completa; solo acortar un anchor y generar los 3 visuales.
