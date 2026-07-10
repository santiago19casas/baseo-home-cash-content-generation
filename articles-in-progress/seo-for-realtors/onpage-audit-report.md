## BASEO On-Page Audit

**Post**: SEO for Realtors: How to Rank Your Real Estate Website in 2026 (`polished-article.md`)
**Word count**: ~3,000
**Funnel stage (surface judgment)**: MOFU
**Primary persona (surface judgment)**: B4 + B1

---

### 1. Internal linking

**Current internal links (antes del fix)**: 7 instancias de contenido (6 URLs únicas) + 1 CTA de auditoría → densidad ~2.3 por 1,000 palabras.
**Target para ~3,000 palabras**: 9–24 (regla 4–8 / 1k; flag si < 3/1k). ❌ **Estaba bajo el piso (< 3/1k).**
**Corpus checked**: `baseo-corpus.csv` (12 filas).

#### Missed linking opportunities (corregidas)
1. In: *"Seller-intent: 'sell my house fast [city]', 'home value [city]'..."* / sección Content Marketing
   - Anchor: "seller leads for real estate investors"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/seller-leads-for-real-estate-investors/
   - Why: overlap alto (seller leads, motivated sellers, intent).
2. In: *"Situation guides for sellers under pressure (probate, divorce, inherited property)..."*
   - Anchor: "buying a foreclosure with cash"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/buy-foreclosure-with-cash/
   - Why: comparte términos de distress/foreclosure.
3. In: Content Marketing (distribución del contenido hiperlocal)
   - Anchor: "real estate social media marketing"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/social-media-marketing-real-estate-investors/
   - Why: canal complementario al contenido/SEO.

#### Linking issues
- `home-cash-buyers` usado 2× (dentro del límite; flag solo a partir de 3×). ✅
- Sin orphan anchors ("click here", "read more"). ✅ Sin self-links.

**Estado tras el fix**: 10 instancias de contenido + 2 CTA de auditoría → ~3.3/1k. ✅ Sale del flag.

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "SEO for Realtors: Rank Your Real Estate Website 2026" (52 chars) | ✅ | — (keyword en primeros 30, sin guarantee) |
| Description | "SEO for realtors, explained simply: how local SEO, Google Business Profile, city pages, and AI search bring in real leads, not just traffic." (140 chars) | ✅ | En el piso del rango; opcional subir a ~150: "SEO for realtors, explained: how local SEO, Google Business Profile, city pages, and AI search bring in real buyer and seller leads, not just traffic." (150) |

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ❌ → ✅ corregido | Faltaba (artículo > 1,500 words). Añadido bloque "In this guide" con anclas H2 tras la intro. |
| H2 cadence | ✅ | 13 H2 repartidos cada ~230–300 palabras; sin huecos > 800 ni H2 pegados. |
| Images | 4 placeholders (`[SCREENSHOT]` + prompt cada uno) | ⚠️ Generar imágenes reales antes de publicar. Mínimo (2) superado. |
| Lists | 5 ✅ | Checklists GBP/on-page/técnico + numeradas (reviews, content ideas). |
| Tables | 3 ✅ | Timeline, costos, DIY-vs-agency. |
| Closing section | ⚠️ → ✅ ajustado | "## Get Found by More Buyers and Sellers" (header no estándar pero es tu estructura); estaba ~90 words, expandido a ~110 para entrar en 100–200. FAQ va después. |

---

### 4. CTA

**Current CTA(s)**: final — *"[Get your free site audit →](https://www.thebaseo.com/home-cash-buyers-seo/#hero)"* precedido del copy de auditoría (3 issues, competitor keywords, deal-math projection, "no call required, yours to keep").
**Position(s)**: end (antes solo uno) → **mid + end tras el fix**.
**URL validity**: ✅ verificada — `https://www.thebaseo.com/home-cash-buyers-seo/#hero` (Canonical URLs).
**Verdict**: ⚠️ → ✅ tras añadir el CTA suave a mitad (MOFU pide mid + end).

**Suggested/aplicado mid-CTA**: *"Not sure which of these three you're missing? A [free site audit](https://www.thebaseo.com/home-cash-buyers-seo/#hero) will tell you exactly where your local SEO breaks, no call required."*

**Rationale**: MOFU educativo — un toque a mitad, atado al workflow de local SEO recién mostrado, más el toque final; ambos a la auditoría (risk-reversal, cero presión).

---

### Top fixes (priority order)
1. ✅ Añadir TOC tras la intro (artículo > 1,500 words).
2. ✅ Subir densidad de internal links por encima de 3/1k (+3 links de corpus a contenido cash-buyer).
3. ✅ Añadir CTA de auditoría a mitad de artículo (expectativa MOFU).
4. ✅ Expandir el cierre a ~110 words (rango 100–200).
5. (Opcional) Subir la meta description de 140 a ~150 chars.

### One-line summary
Estructura y CTA quedaban cortas para un MOFU de 3,000 palabras (sin TOC, links bajos, un solo CTA); aplicados TOC + 3 links + mid-CTA + cierre expandido, ya está publication-ready salvo generar las 4 imágenes.
