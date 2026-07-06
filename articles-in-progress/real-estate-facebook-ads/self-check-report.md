# Self-check report

## Verdict

**Status**: ✅ Ready for review
**Summary**: 0 flags críticos · 1 flag informativo. Cobertura de keyword en H2 corregida.

El draft llegó limpio. No hubo que reescribir clichés, traducir agency-speak, quitar em-dashes del cuerpo, ni eliminar divulgación de precios/paquetes. Tras la revisión del editor se reescribieron tres H2 conceptuales para que carguen una variación de la keyword primaria (ver abajo), subiendo la cobertura de ~55% a ~82%.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| (ninguno) | — | — |

## Flags (require human attention)

### Critical (must fix before review)

- Ninguno.

### Style/structure (should fix before review)

- ✅ **Cobertura de keyword en H2 — CORREGIDA (~82%)**: se reescribieron tres H2 conceptuales para incluir una variación de la keyword: "The Special Ad Category: What Changed and Why It Matters" → **"The Special Ad Category That Changed Real Estate Facebook Ads"**; "The 3-Layer Campaign Structure That Generates Leads" → **"The 3-Layer Facebook Ad Structure That Generates Leads"**; "Ad Creative: Where the Real Targeting Happens" → **"Facebook Ad Creative: Where the Real Targeting Happens"**. Ahora 9 de 11 H2 (excl. FAQ) cargan la keyword o una variación cercana.

### Informational

- ⚠️ **3 placeholders de imagen por generar antes de publicar**: hero (foto de operador con notificación de lead), diagrama del embudo de 3 capas, y dashboard de leads orgánicos (3→28, CPL bajando a ~$161). Cada `[SCREENSHOT: ...]` tiene su bloque `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` correspondiente, listo para copiar/pegar.
- ⚠️ **Em-dashes (U+2014)**: la única aparición de "—" está dentro de un bloque `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` (etiquetas del diagrama: "Layer 1 — Cold reach"), que por regla NO se toca y no llega al cuerpo publicado. El texto editorial del artículo tiene 0 em-dashes.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (prosa, sin prompts) | ~2,780 | 2,400–2,900 | ✅ |
| H2 keyword coverage | 9/11 (~82%) | ≥ 60% | ✅ |
| BASEO mentions | 3 | Tangential 1–3 | ✅ |
| Internal links (thebaseo.com) | 7 | 7–12 | ✅ |
| External Tier 1/2 citations | 6 dominios (Meta ×4, SuperAds, Sotros) + Tier 3 iHomefinder | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Images / lists / tables | I:3 L:4 T:2 | ≥3 / ≥2 / ≥1 | ✅ |
| `[SCREENSHOT]` placeholders | 3 (cada uno con prompt) | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | present (paragraph) | present | ✅ |
| TOC | N/A | > 1,500 → opcional; no incluido | ⚠️ opcional |
| Closing section | "The bottom line", ~120 words | 100–200 | ✅ |
| CTA at end + URL valid | present, /home-cash-buyers-seo/#hero | audit CTA, verified URL | ✅ |

## Verificaciones específicas de este artículo (Tangential / out-of-scope)

- **Fabricación de servicio**: ✅ ninguna. Facebook/Meta ads y social media management están fuera del catálogo de BASEO. En ninguna parte se dice ni se implica que BASEO gestione anuncios de Facebook, instale tu Pixel o haga retargeting. Las 3 menciones son contextuales y encuadran a BASEO como el motor orgánico/AEO (city pages, tracking, AI search, auditoría).
- **Fidelidad de claims first-party**: ✅ "3 → 28" (no 42) y "$161 por lead orgánico, bajando", verbatim de la Approved claims library.
- **Audiencia**: ✅ el lector es siempre el inversionista cash buyer. Las frases dirigidas al vendedor aparecen solo como ejemplos de copy publicitario, marcadas como "tu anuncio debería decir".
- **Precisión de política Meta**: ✅ Special Ad Category, radio mínimo de 15 millas, sin ZIP, sin exclusiones, y regla de atributos personales, todas verificadas contra fuentes de Meta (Business Help / Newsroom / Transparency Center).
- **Stats descartados**: ✅ se omitió el "900% en 5 minutos" (no verificado) y el rango de CPL orgánico $15–$30 (no fresco); se usaron cifras con fuente (78% primer respondedor, >5 follow-ups).

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (each should have a matching image prompt)

- `[SCREENSHOT: hero — operador cash buyer revisando notificación de lead de Facebook junto a una casa suburbana]` — section: top of article — image prompt present: ✅ (Category 4 hero)
- `[SCREENSHOT: diagrama del embudo de 3 capas — cold prospecting → warm engagement → retargeting]` — section: H2 "The 3-Layer Campaign Structure That Generates Leads" — image prompt present: ✅ (Category 5 diagram)
- `[SCREENSHOT: dashboard de leads — orgánicos 3→28 en 9 meses, CPL bajando a ~$161]` — section: H2 "Ready to Scale Your Real Estate Lead Gen?" — image prompt present: ✅ (Category 3 dashboard)
