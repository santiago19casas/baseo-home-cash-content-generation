## BASEO On-Page Audit

**Post**: Seller Leads for Real Estate Investors: How to Get More Motivated Sellers in 2026 (`polished-article.md`)
**Word count**: ~2,560
**Funnel stage (surface judgment)**: MOFU
**Primary persona (surface judgment)**: B4 Scaling (+ B2)

---

### 1. Internal linking

**Current internal links**: 7 de contenido (thebaseo.com/resources + pilar) + 2 al CTA audit (#hero) = 9 enlaces a thebaseo.com. Para ~2,560 palabras, el target del style guide (4–8 por 1,000) sería ~10–20. Estás **ligeramente por debajo** en enlaces de contenido (~2.7/1k).
**Corpus checked**: `baseo corpus.csv` (9 filas)

Enlaces internos actuales (contenido): pre-foreclosure, motivated-seller playbook, top-real-estate-keywords, how-to-do-seo-real-estate-website, rank-in-ai-overviews, how-to-use-crm-for-real-estate, pilar home-cash-buyers.

#### Missed linking opportunities

1. In: "Build a bench: wholesalers, agents who pass on ugly houses, probate attorneys, property managers, contractors. Each one sees motivated sellers you don't." (sección Free Strategies)
   - Anchor: "social media for investors"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/social-media-marketing-real-estate-investors/
   - Why: canal adicional de motivated-seller leads; refuerza el clúster de lead-gen.
2. In: "for an expired, you tried the retail path and it didn't work, here's a cash offer with no showings" (sección Convert Into Contracts) — o en Pre-Foreclosure.
   - Anchor: "buy a foreclosure with cash"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/buy-foreclosure-with-cash/
   - Why: solapamiento temático con distressed/foreclosure; ya solo tienes 1 link a pre-foreclosure.

#### Linking issues

- Sin orphan anchors ("click here"/"read more"): todos los anchors son descriptivos de 2–6 palabras. ✅
- Sin over-linking (ningún URL repetido 3+ veces). El único repetido es el CTA #hero (2×, mid + end), que es correcto para MOFU. ✅
- Sin self-links. ✅

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "Seller Leads for Real Estate Investors: 2026 Guide" (50 chars) | ✅ | keyword en primeros 30, sin garantía, sin stuffing |
| Description | "Motivated seller leads for real estate investors in 2026: free vs. paid sources, what leads cost per deal, and how to build your own pipeline." (142 chars) | ✅ | promesa + payoff + CTA implícito, en lenguaje de inversor (leads/deals) |

Ambos dentro de rango. (El payload subido a WP ya usa estos valores en el `acf`.)

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ✅ | Presente (>1,500 palabras), lista los H2 con anchors |
| H2 cadence | ✅ | Un H2 cada ~250–450 palabras, razonablemente parejo |
| Images | ⚠️ 0 reales / 3 placeholders | hero (Cat.4), SERP "sell my house fast Tampa" (Cat.1), dashboard 3→28 (Cat.3) — cada uno con su `[PROMPT FOR CHATGPT IMAGE GENERATION]`. **Generar las 3 imágenes reales antes de publicar.** |
| Lists | ✅ 2 | canales gratis (bullets) + secuencia de follow-up (numerada) |
| Tables | ✅ 1 | comparación de plataformas |
| Closing section | ⚠️ | "Get More Seller Leads Without Renting Them" (~110 palabras). Cumple el patrón de cierre (insight + próximo paso + un solo CTA) pero no usa el header canónico `## Final thoughts` / `## The bottom line` / `## What to do next`. Renombrar o aceptar como variante. |

---

### 4. CTA

**Current CTA(s)**: mid-post — "If you want to know which of those seller searches your own market can rank for, and what that would cost against what you pay now, that's exactly what a free written audit shows you. No call required. [See what your market can rank for →]"; cierre — "Free, in writing, delivered in about 2 business days, no call required, yours to keep. [Get your free site audit →]"
**Position(s)**: mid + end (correcto para MOFU)
**URL validity**: ✅ ambos a `https://www.thebaseo.com/home-cash-buyers-seo/#hero` (entrada ✅-verificada en `baseo-context` § Canonical URLs)
**Verdict**: ✅ Aligned — dos toques, framing risk-reversal (gratis, por escrito, sin llamada), atado al workflow mostrado.

**Suggested CTA(s)**: sin cambios necesarios.

**Rationale**: MOFU pide mid + end apuntando al audit; ambos cumplen y usan lenguaje de inversor sin presión ni garantías.

---

### Top fixes (priority order)

1. **Generar las 3 imágenes reales** desde los prompts y reemplazar ambos bloques en el editor de WP (bloqueante para publicar; hoy son placeholders).
2. **Sumar 1–2 enlaces internos** (social-media-marketing y buy-foreclosure-with-cash) para llegar al rango de densidad.
3. **Header de cierre**: renombrar a `## Final thoughts` o aceptar conscientemente la variante "what to do next".

### One-line summary

On-page listo para publicar salvo un bloqueante real: faltan las 3 imágenes (hoy placeholders); metas y CTA ya están en verde.
