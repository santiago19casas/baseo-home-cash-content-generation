# Self-check report

## Verdict

**Status**: ✅ Ready for review
**Summary**: 0 auto-fixes aplicados · 0 flags críticos · 3 flags informativos.

El draft llegó limpio del compliance pass del drafter: sin clichés prohibidos, sin agency-speak, sin em-dashes, sin disclosures de paquetes/precios, sin lenguaje de garantías (la única aparición de "guarantee" es la negación "It's a screening tool, not a guarantee", que es el framing correcto). No hubo nada que auto-corregir; `polished-article.md` es el cuerpo del artículo con los placeholders intactos.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| — ninguno — | | |

## Flags (require human attention)

### Critical (must fix before review)

- Ninguno.

### Style/structure (should fix before review)

- Ninguno.

### Informational

- ⚠️ **Conteo de menciones BASEO = 2** (la mención contextual del bridge + la atribución obligatoria "(BASEO client data)" en el mismo párrafo). El heading structure pedía exactamente 1 mención contextual; la atribución del claim es requerida por la política de claims, no es una mención promocional. Dentro del rango Tangential 1–3. Decisión editorial: si Eddie quiere una sola aparición literal de la marca, la atribución puede cambiarse a "(client data, Florida case study)".
- ⚠️ **"$250 lead" en el bridge**: es un contraste hipotético anclado al rango CPC verificado ($20–$100/click, Real Estate Bees), no un stat de mercado afirmado. Alternativa sugerida si review lo prefiere: "a lead that costs several $20–$100 clicks."
- ⚠️ **Stats pre-aprobados dropeados por falta de fuente** (regla "sourced or dropped"): rangos CPL SEO vs PPC ($15–$30 vs $50–$300) y cost-per-deal ($500–$2,000 vs $2,500–$7,500). El bridge se reconstruyó con $161/lead (first-party aprobado) + $20–$100 CPC (verificado). Si Eddie tiene la fuente original de los rangos, se puede reanudar desde outline.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (cuerpo, sin bloques de imagen) | ~2,136 | 1,800–2,200 | ✅ |
| Intro | 71 palabras, Template C | < 80 | ✅ |
| H2 keyword coverage | 8/8 (100%) con stem ARV; 1/8 frase completa | ≥ 60% | ✅ (criterio stem documentado en brief) |
| H3 long-tail coverage | 6 FAQs PAA + 3 pasos + 2 sub-70% | ≥ 60% | ✅ |
| BASEO mentions | 2 (1 contextual + 1 atribución de claim) | 1–3 (Tangential) | ✅ (ver flag) |
| Internal links (thebaseo.com) | 5 (4 en cuerpo + CTA) | 5–10 | ✅ |
| External Tier 1/2 citations | 3 (ATTOM, Real Estate Bees ×2) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | all | ✅ |
| Guarantee language | 0 (1 negación correcta) | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Em-dashes | 0 | 0 | ✅ |
| Images / lists / tables | I:2 L:2 T:2 | ≥2 / ≥1 / ≥1 | ✅ |
| `[SCREENSHOT]` placeholders | 2, ambos con bloque de prompt | human fills | ⚠️ info |
| Proprietary how-detail | 0 | 0 | ✅ |
| Featured snippet element | presente (paragraph, 49 palabras) bajo "What Is ARV in Real Estate?" | present | ✅ |
| TOC | presente (>1,500 palabras) | per rule | ✅ |
| Closing section | "Final thoughts", 125 palabras | 100–200 | ✅ |
| CTA at end + URL valid | presente → /home-cash-buyers-seo/#hero (verificada) | audit CTA | ✅ |
| Audience check | investor-addressed en todo el cuerpo y FAQs | sin seller-addressed | ✅ |
| Slug / meta | `what-is-arv-in-real-estate` · title 47 chars · description 140 chars | en rango | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (cada uno con su prompt de imagen)

- `[SCREENSHOT: Hero photo...]` — sección: bajo el H1 — qué capturar: foto hero estilo revista, inversionista corriendo números en una casa vacía — image prompt present: ✅ (Category 4)
- `[SCREENSHOT: Clean vector waterfall diagram...]` — sección: H2 "The 70% Rule" (tras la tabla) — qué capturar: diagrama waterfall $300K → $210K → $160K → $150K MAO — image prompt present: ✅ (Category 5)

### Otros pendientes del publisher

- Aplicar FAQPage schema a la sección de FAQs (Astro genera el JSON-LD al render).
- Alt text y nombre de archivo de las imágenes al insertarlas.
