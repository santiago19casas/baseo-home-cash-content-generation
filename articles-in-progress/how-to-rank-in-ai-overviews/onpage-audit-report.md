## BASEO On-Page Audit

**Post**: How to Rank in AI Overviews: The Practical Playbook for 2026
**URL**: https://www.thebaseo.com/home-cash-buyers-seo/resources/rank-in-ai-overviews/
**Word count**: ~2,300 (target del brief: 2,000–2,600 ✅)
**Funnel stage (surface judgment)**: MOFU
**Primary persona (surface judgment)**: B5 (atado a B4)

---

### 1. Internal linking

**Current internal links (cuerpo)**: 6 hacia thebaseo.com — 4 a posts del blog, 1 a case-studies, 1 al CTA de audit. Target del brief: 7–12.
**Corpus checked**: `baseo corpus.csv` (10 filas)

Enlaces de cuerpo detectados:

- `/resources/what-pre-foreclosure-means-for-buyers/` — anchor "pre-foreclosure explainer" (**aparece 2 veces**, en "What Triggers…" y en el paso 4)
- `/resources/how-to-do-seo-real-estate-website/` — anchor "the fundamentals of real estate SEO"
- `/resources/buy-foreclosure-with-cash/` — anchor "foreclosure buying guide"
- `/resources/how-to-get-motivated-seller-leads/` — anchor "motivated-seller leads with phone numbers"
- `/home-cash-buyers-seo/case-studies/` — anchor "real results here"

**Densidad**: ~6 enlaces internos en ~2,300 palabras ≈ 2.6 por 1,000. Por debajo del piso de 4/1,000 y del target 7–12 del brief. Recomendación: sumar 1–2 enlaces contextuales.

#### Missed linking opportunities

1. En: "which of your target keywords actually trigger an AI Overview, and whether your domain is one of the cited sources."
   - Anchor: "target keywords"
   - Link a: `https://www.thebaseo.com/home-cash-buyers-seo/resources/top-real-estate-keywords/`
   - Por qué: solapamiento en keywords/search intent; el post de keywords es el destino natural cuando se habla de qué queries priorizar.
2. En (paso 4, cluster de autoridad): "a city pillar linked to seller-situation pages, each linked out to the explainers behind them"
   - Anchor: "seller-situation pages"
   - Link a: `/resources/what-pre-foreclosure-means-for-buyers/` u otra situación — **ya cubierto**; alternativa: variar el segundo anchor de pre-foreclosure para no repetir URL/anchor.

#### Linking issues

- ⚠️ **URL repetida**: `/what-pre-foreclosure-means-for-buyers/` enlazada 2 veces (aceptable, por debajo del umbral de over-linking de 3+, pero conviene que el segundo toque apunte a otra situación o al post de keywords para ampliar el web interno).
- ✅ Sin orphan anchors ("click here" / "read more"). Todos los anchors son descriptivos.
- ✅ Sin self-links.

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "How to Rank in AI Overviews: The Practical Playbook for 2026 — BASEO" (~68 chars con sufijo de marca) | ❌ | Quitar "— BASEO": el título base son **60 chars exactos** y el keyword primario va al inicio (dentro de los primeros 30). El sufijo de marca lo lleva a ~68 (se trunca en SERP) y añade brand en un post MOFU. Usar: `How to Rank in AI Overviews: The Practical Playbook for 2026` |
| Description | "AI Overviews now show on ~48% of searches and cut top-page clicks up to 58%. Here's what triggers them and how to get your page cited in 2026." (~140 chars) | ✅ | Dentro de rango (140–160, extremo bajo). Tiene stat + payoff ("get your page cited"), lenguaje de inversor, sin agency-speak. Si se quiere apurar el rango, alargar unas palabras, pero no es necesario. |

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ❌ / verificar | No aparece tabla de contenidos en el HTML recuperado; el artículo supera 1,500 palabras, así que debería llevar TOC con los H2. Puede que el tema (Astro) la renderice y el fetch no la capturara — **verificar en la página en vivo**; si no está, añadirla. |
| H2 cadence | ✅ | 8 H2s de contenido repartidos de forma pareja (~un H2 cada 250–400 palabras). Sin huecos >800 ni H2s pegados. |
| Images | ✅ 4 reales | Todas subidas a cms.thebaseo.com, con captions descriptivas (no "screenshot of…"). Supera el mínimo del brief (3). Ej.: "The 'Direct'-mislabeled report… citations and leads, not impressions". |
| Lists | ✅ 2 | Lista con viñetas en "Myths and Mistakes" (4 ítems) + estructura numerada de los 8 pasos (H3). Cumple mínimo del brief (2). |
| Tables | ✅ 1 | Tabla "Selection factor / What it means for your site" (5 filas), colocada bajo "How Google Chooses…". Cumple mínimo (1–2). |
| Closing section | ✅ | "## Final thoughts", ~110 palabras. Dentro de 100–200. Cierra con el CTA de audit. |

---

### 4. CTA

**Current CTA(s)**:
- Mid/late: "start with the free audit, no call required. It'll show which of your pages can be cited and where the gaps are." + "[real results here]" → case-studies.
- Cierre: "[Get your free site audit →]" → `https://www.thebaseo.com/home-cash-buyers-seo/#hero`
- Bloque de conversión al pie: "See what's holding your site back — free, in 4 days" → `#hero`

**Position(s)**: mid-post + cierre + bloque final. Correcto para MOFU.
**URL validity**: ✅ todas verificadas — `/home-cash-buyers-seo/#hero` y `/home-cash-buyers-seo/case-studies/` son canónicas ✅ en `baseo-context`.
**Verdict**: ✅ Aligned. Risk-reversal, sin llamada obligatoria, sin garantía, sin táctica de presión.

⚠️ **Inconsistencia de plazo del audit**: el cuerpo dice "delivered in about 2 business days" y el pie dice "free, in 4 days" / "Audit delivered in 4 business days". El estándar de marca en `baseo-context` es ~2 días hábiles. Unificar. Fix (inglés, para el bloque del pie): `See what's holding your site back — free, in 2 business days`.

**Suggested CTA(s)**: los actuales sirven tal cual; solo unificar el plazo a "2 business days".

**Rationale**: MOFU + B5/B4 pide toque mid-post ligado al workflow mostrado y un cierre con el audit gratuito; el post lo cumple y usa solo URLs verificadas.

---

### Top fixes (priority order)

1. **Meta title**: quitar el sufijo "— BASEO" para bajar de ~68 a 60 chars y no meter marca en un MOFU.
2. **Plazo del audit**: unificar a "2 business days" (el pie dice "4 days", contradice el cuerpo y el estándar de marca).
3. **Enlazado interno**: subir de ~6 a 7–9. Añadir enlace a `top-real-estate-keywords` en la sección de medición y variar el segundo anchor de pre-foreclosure.
4. **TOC**: verificar en vivo que exista tabla de contenidos; si no, añadirla (artículo >1,500 palabras).

### One-line summary

Listo para publicar en estructura, imágenes y CTA; corregir el meta title (sacar "— BASEO"), unificar el plazo del audit a 2 días, y sumar 1–2 enlaces internos para llegar al target del brief.
