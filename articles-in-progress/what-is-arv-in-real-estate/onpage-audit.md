# BASEO On-Page Audit

**Post**: What Is ARV in Real Estate? The Cash Buyer's Guide to After Repair Value (`polished-article.md`)
**Word count**: ~2,136 (sin bloques de imagen)
**Funnel stage (surface judgment)**: TOFU
**Primary persona (surface judgment)**: B4

---

## 1. Internal linking

**Current internal links**: 5 (4 en cuerpo + 1 CTA) — densidad ~2.4/1,000 palabras. El target del style guide es 4–8/1,000 (≈8–16 para este largo); el brief fijó 5–10 totales. Está en el piso del brief y bajo del style guide → agregar 1–2 de las oportunidades de abajo.
**Corpus checked**: `baseo-corpus.csv` (con merge conflict de git sin resolver; filas legibles)

### Missed linking opportunities

1. In: "And what a lead is worth defines what you can afford to pay per lead, by channel."
   - Anchor: "what seller leads cost"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/seller-leads-for-real-estate-investors/
   - Why: el post del corpus cubre exactamente free vs paid y cost-per-deal de seller leads; es el companion natural del bridge.
2. In: "**Stale comps in a shifting market.** A comp from six months ago in a cooling market bakes in a value that's already gone."
   - Anchor: "find foreclosure listings" (contexto: dónde ver inventario distressed/solds)
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/where-to-find-foreclosure-listings/
   - Why: adyacencia de deal-sourcing; SOLO si entra natural — si se siente forzado, omitir (el outline ya lo había descartado por fit).

### Linking issues

- Ninguno: sin "click here", sin self-links, ninguna URL repetida 3+. Anchor "how to start wholesaling real estate" está en el tope del rango (6 palabras) — aceptable.

---

## 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "What Is ARV in Real Estate? Formula + 70% Rule" (47 chars) | ❌ bajo el rango 50–60 | "What Is ARV in Real Estate? The Cash Buyer's Formula" (53 chars — ya propuesto como alternativa en el brief) |
| Description | "What is ARV in real estate? The after repair value formula, the 70% rule, and a worked $300K example cash buyers can run on their next deal." (140 chars) | ✅ | — |

---

## 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ✅ | 8 H2s con anchors, tras el intro |
| H2 cadence | ✅ | Secciones de 126–420 palabras de prosa; sin gaps >800 ni H2s a <150 palabras |
| Images | 0 reales / 2 placeholders | Hero (Cat. 4) + waterfall diagram (Cat. 5), ambos con prompt block — generar antes de publicar |
| Lists | 2 ✅ | Pasos numerados (estructura H3) + bullets de mistakes |
| Tables | 2 ✅ | Worked example (anchor visual) + disambiguación ARV/market/appraised |
| Closing section | ✅ | "## Final thoughts", 127 palabras — "ARV isn't the number you hope the house is worth." |

---

## 4. CTA

**Current CTA(s)**: "If you want to see what your own site could produce, the audit is free, written, delivered in about 2 business days, and yours to keep. No call required. [Get your free site audit →](https://www.thebaseo.com/home-cash-buyers-seo/#hero)"
**Position(s)**: end (única — correcto para TOFU/Tangential)
**URL validity**: ✅ verificada en `baseo-context` § Canonical URLs
**Verdict**: ✅ Aligned

**Suggested CTA(s)**: sin cambios; el texto actual ya cumple stage + persona.

**Rationale**: TOFU Tangential pide exactamente esto: un solo CTA soft al final con el framing de riesgo invertido (free, written, no call, yours to keep).

---

## Top fixes (priority order)

1. Meta title → "What Is ARV in Real Estate? The Cash Buyer's Formula" (53 chars) — el actual queda corto del rango.
2. Agregar el link a seller-leads-for-real-estate-investors en el bridge (oportunidad #1) para subir densidad interna.
3. Opcional: link a where-to-find-foreclosure-listings en mistakes solo si entra natural.

## One-line summary

Publication-ready salvo el meta title corto y 1 link interno faltante; las 2 imágenes se generan desde sus prompts antes de publicar.
