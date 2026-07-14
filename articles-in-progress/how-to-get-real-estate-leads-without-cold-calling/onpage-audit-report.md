## BASEO On-Page Audit

**Post**: How to Get Real Estate Leads Without Cold Calling: 9 Strategies That Actually Work (`polished-article.md`)
**Word count**: ~2,970
**Funnel stage (surface judgment)**: MOFU
**Primary persona (surface judgment)**: B4 (dual B2)

---

### 1. Internal linking

**Current internal links**: 11 (target para ~3,000 palabras: 12–24 según densidad 4–8/1k; el brief fijó 7–15)
**Corpus checked**: `baseo-corpus.csv` (12 filas)

#### Missed linking opportunities

1. In: "BASEO's flagship client pays $161 per organic lead from Google, declining monthly (BASEO client data)."
   - Anchor: "flagship client"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/case-studies/
   - Why: URL canónica verificada de case studies; el pasaje cita el caso sin dar al lector dónde verlo. → **Aplicado por el orquestador antes de finalize.**

Sin más oportunidades reales: las 8 filas del corpus con overlap ≥0.30 ya están enlazadas (motivated-seller-leads, seller-leads, how-to-do-seo, rank-in-ai-overviews, keywords-for-investors, top-keywords, social-media, crm). Las filas restantes (foreclosure buyer-side, seo-for-realtors) tienen overlap bajo o persona equivocada; no forzar.

#### Linking issues

- Sin orphan anchors ("click here" etc.), sin self-links.
- ⚠️ Leve: `/home-cash-buyers-seo/#hero` aparece 3 veces (mid CTA, CTA H2, cierre). Es el patrón MOFU esperado (mid + end); en el límite de over-linking pero justificado. Sin acción.

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "How to Get Real Estate Leads Without Cold Calling: 9 Ways" (58 chars) | ✅ keyword desde el char 1, sin guarantees | — |
| Description | "Only ~1% of cold calls become appointments. Here are 9 ways to get real estate leads without cold calling, ranked by cost per deal and compounding." (147 chars) | ✅ promise + payoff, lenguaje investor | — |

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ✅ | 6 H2s con anchors, tras el intro |
| H2 cadence | ✅ | El bloque largo (9 estrategias) está segmentado por 9 H3s numerados; sin gaps >800 palabras sin heading |
| Images | 0 reales / 3 placeholders | Hero (Cat 4, top), SERP Tampa (Cat 1, estrategia 1), lead dashboard (Cat 3, sección math). Cada uno con su bloque de prompt. **Generar antes de publicar.** |
| Lists | 2 ✅ | Pilares SEO (estrategia 1), señales de distress (estrategia 9) |
| Tables | 2 ✅ | Escenarios de presupuesto; math por canal |
| Closing section | ✅ | "## Final thoughts", 150 palabras — "The investors winning inbound in your market aren't smarter than you." |

---

### 4. CTA

**Current CTA(s)**: mid-post: "a [free written audit] will tell you" (estrategia 1) · sección dedicada: "start with the [free site audit]: free, in writing, delivered in about 2 business days, no call required, yours to keep" · cierre: "[Get your free site audit →]"
**Position(s)**: mid + dedicated H2 + end
**URL validity**: ✅ all verified — https://www.thebaseo.com/home-cash-buyers-seo/#hero (entrada ✅ en canonical URLs)
**Verdict**: ✅ Aligned — patrón MOFU correcto, atado al workflow mostrado, sin presión ni guarantees

**Suggested CTA(s)**: sin cambios.

---

### Top fixes (priority order)

1. Añadir el link de case studies en la sección de math (anclado en "flagship client") — aplicado.
2. Generar las 3 imágenes desde sus prompts y reemplazar ambos bloques en el editor antes de publicar.
3. (Opcional) Si se busca densidad 4/1k estricta, el link #1 ya la alcanza (12 links ≈ 4.0/1k). Nada más que forzar.

### One-line summary

On-page listo para publicar una vez generadas las 3 imágenes; metas y CTAs pasan sin cambios y el enlazado queda en densidad objetivo con el link de case studies añadido.
