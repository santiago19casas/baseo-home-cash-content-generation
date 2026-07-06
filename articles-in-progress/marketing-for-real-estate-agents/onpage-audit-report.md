## BASEO On-Page Audit

**Post**: Marketing for Real Estate Agents: The Complete Playbook to Win More Listings
**Word count**: ~3,000
**Funnel stage (surface judgment)**: MOFU
**Primary persona (surface judgment)**: B4 Scaling (+ B3)

---

### 1. Internal linking

**Current internal links**: 6 (2 al audit `#hero` + 4 a recursos del corpus). **Target para ~3,000 palabras: 12–24** (4–8 por 1,000). ⚠️ **Por debajo del piso** (~2 por 1,000).
**Corpus checked**: `baseo-corpus.csv` (8 filas; 4 ya usadas: how-to-do-seo-real-estate-website, rank-in-ai-overviews, social-media-marketing, how-to-use-crm-for-real-estate).

#### Missed linking opportunities
1. En: "Local SEO is how you show up for those." / o en el Step 5 (ads) / FAQ "How do real estate agents get leads online?"
   - Anchor: "get motivated seller leads"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-get-motivated-seller-leads/
   - Why: solapa "lead generation channels", "motivated seller leads" — es el único candidato relevante del corpus aún sin usar.

> El corpus es chico (8 filas) y casi agotado; con este añadido quedarías en 7 links. Para llegar al rango ideal (12+) haría falta más contenido publicado o 1–2 enlaces externos de autoridad (NAR, Google Search Central), que hoy no se pudieron sumar por la caída de WebSearch.

#### Linking issues
- Sin orphan anchors ("click here"/"read more"): ✅ todos descriptivos.
- Sin over-linking (mismo URL 3+): ✅ (el audit `#hero` aparece 2 veces, correcto para MOFU mid+end).
- Sin self-links: ✅.

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title (ACF) | "Marketing for Real Estate Agents: The Deal-Math Playbook" (56 chars) | ✅ | keyword al inicio, sin guarantee, en rango |
| Description (ACF) | "Marketing for real estate agents, ranked by what makes the phone ring: brand, local SEO, social, ads, and the one channel that compounds instead of renting." (156 chars) | ✅ en rango (140–160) | Si la quieres más corta, opción de 123: "Marketing for real estate agents, ranked by what gets leads: brand, local SEO, social, ads, and the channel that compounds." |

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ✅ | lista de 11 H2 con anchors, arriba del primer H2 (>1,500 palabras) |
| H2 cadence | ✅ | un H2 cada ~250–450 palabras, pareja |
| Images | ⚠️ 0 reales / 4 placeholders | hero, map pack, listing media, timeline 90 días — **generar las 4 imágenes antes de publicar** (cada una con su bloque `[PROMPT FOR CHATGPT IMAGE GENERATION]`) |
| Lists | ✅ 4 | self-audit, weekly mix, past-client cadence, plan 90 días |
| Tables | ✅ 2 | Google vs Meta Ads; herramientas + budget |
| Closing section | ⚠️ | No hay `## Final thoughts` literal. El H2 "Ready to get found by more sellers?" cumple cierre + CTA (expertise close consultiva). Aceptable por la estructura provista (FAQ va al final); si quieres cumplir la convención al pie de la letra, renombra ese H2 o añade un cierre corto. |

---

### 4. CTA

**Current CTA(s)**:
- Mid (Step 2): "A free written audit shows you the three biggest issues in about two business days, no call required, and you keep it either way."
- End: "Get your free site audit →" con "BASEO works only with cash home buyers, so it already knows your competitors, your keywords, and your seller situations… No call required, and you keep it whether we ever speak or not."

**Position(s)**: mid + end ✅ (correcto para MOFU).
**URL validity**: ✅ ambas a `https://www.thebaseo.com/home-cash-buyers-seo/#hero` (entrada ✅ verificada en `baseo-context` § Canonical URLs).
**Verdict**: ✅ Alineado. Cero presión, sin guarantee, risk-reversal ("free, written, no call required, yours to keep").

**Suggested CTA(s)**: ninguno necesario. (Si el H1/eje se volviera más BOFU, podrías añadir el detalle comercial "pricing for your market is included in the audit".)

**Rationale**: MOFU con B4/B3 → mid tied-to-workflow + end consultivo es exactamente lo esperado.

---

### Top fixes (priority order)

1. **Generar las 4 imágenes** (placeholders) antes de publicar y reemplazar ambos bloques en el editor de WP.
2. **Subir la densidad de enlazado**: añadir el link a `how-to-get-motivated-seller-leads` (único candidato del corpus sin usar); considerar 1 enlace externo de autoridad cuando vuelva WebSearch.
3. **Cierre**: decidir si renombras el H2 de CTA a un cierre convencional o lo dejas (aceptable). Y recuerda quitar los "(verify before publish)" que detectó la content-review (afecta también al on-page al ser texto visible).

### One-line summary
On-page casi listo: metas ✅, estructura ✅, CTA ✅; faltan las 4 imágenes reales y subir el enlazado interno (+1 del corpus), más limpiar los marcadores editoriales del cuerpo.
