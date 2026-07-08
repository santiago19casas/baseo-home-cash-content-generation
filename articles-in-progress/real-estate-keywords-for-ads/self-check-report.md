# Self-check report

## Verdict

**Status**: ✅ Ready for review
**Summary**: 0 auto-fixes aplicados · 0 flags críticos · 3 notas informativas para el editor.

El draft llegó limpio. No hubo que reescribir clichés, traducir agency-speak, quitar em-dashes ni borrar precios. Todos los checks deterministas pasan. Quedan solo notas informativas (no bloquean review).

## Auto-fixes applied

Ninguno. El draft no contenía clichés prohibidos, agency-speak, verbos de marketing en H2, disclosures de precio/paquete ni em-dashes. No se modificó el cuerpo del artículo.

## Flags (require human attention)

### Critical (must fix before review)

Ninguno.

### Style/structure (should fix before review)

Ninguno.

### Informational

- ⚠️ **Cobertura de keyword en H2 (nivel intención, no frase exacta)**: la primary keyword aparece literal en el H1, en el H2 contenedor ("150+ real estate keywords for ads, grouped by intent") y en variaciones fuertes en los H3 (buyer/seller/investor/hyperlocal keywords). Los H2 temáticos (Match types, Negative keywords, Ad groups, Benchmarks, Free tools, Mistakes, CTA, FAQ) NO repiten la frase exacta a propósito: meterla ahí sería keyword-stuffing. La estructura de headings viene fija del input del editor. Aceptado como ⚠️, no ❌.
- ⚠️ **Dos cifras de CPC reconciliadas**: el artículo presenta $2–$6 (promedio mezclado de keywords de real estate ads), $25–$120 (término seller de máxima intención "sell my house fast") y $2.50–$5.00 (términos investor/cash) como un espectro en la sección de Benchmarks. No hay contradicción; está explicado. Verificar que el editor esté conforme con presentar las tres.
- ⚠️ **Atribución de dos stats a "market data / ATTOM"**: "sell my house fast" $25–$120/click y assignment fee $10K–$13K provienen de los external stat candidates ya pre-aprobados en `baseo-context`, no de una URL fetchada en esta corrida. Si el editor quiere un link vivo por número, agregarlo antes de publicar. No es fabricación (son candidatos aprobados), por eso es informativo, no crítico.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (prosa, sin bloques de prompt) | ~2,750 | 2,400–3,200 | ✅ |
| H2 keyword coverage | intención cubierta (H1 + H2 contenedor + H3 variantes) | ≥ 60% intención | ✅ (⚠️ frase exacta) |
| BASEO mentions | 2 principales + 1 suave | 2–3 (Tangential) | ✅ |
| Internal links (thebaseo.com blog) | 5 + CTA audit (x2) | 6–10 | ✅ |
| External Tier 1/2 citations | 7 (Google Ads Help x2, Expert PPC, ROA, Promodo, Sierra, Ylopo, GrowMyAds) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Images / lists / tables | I:3 L:9 T:2 | ≥3 / ≥1 / ≥1 | ✅ |
| `[SCREENSHOT]` placeholders | 3 (cada uno con su bloque de prompt) | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | present (list — grupos `<ul>` bajo el H2 contenedor) | present | ✅ |
| TOC | present (>1,500 words) | per rule | ✅ |
| Closing section | "The bottom line" ~130 words | 100–200 | ✅ |
| CTA at end + URL valid | present, #hero audit URL verificada | audit CTA, verified URL | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (each should have a matching image prompt)

- `[SCREENSHOT: Google SERP for "sell my house fast Austin" con ads pagados sobre resultados orgánicos]` — section: hero (arriba del artículo) — what to capture: SERP con 2 anuncios "Sponsored" encima de los orgánicos — image prompt present: ✅ (Category 1 — Google SERP)
- `[SCREENSHOT: diagrama de estructura de ad group "Cash Buyers – Austin" → 1 ad → 1 landing page]` — section: H2 "How to group these keywords into ad groups" — image prompt present: ✅ (Category 5 — diagram)
- `[SCREENSHOT: diagrama paid vs organic cost per lead]` — section: H2 "Turn keywords into leads without paying per click" — image prompt present: ✅ (Category 5 — diagram)

El publisher genera las 3 imágenes desde los bloques `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` y reemplaza ambos bloques (SCREENSHOT + PROMPT) por la imagen real en el editor de WordPress.
