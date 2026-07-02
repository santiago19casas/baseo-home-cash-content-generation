# Self-check report — Where to Find Foreclosure Listings in 2026

## Veredicto

**Estado**: ⚠️ Needs writer attention before review
**Resumen**: 13 auto-fixes aplicados (1 cliché + 12 em-dashes) · 3 flags levantados (ninguno crítico de contenido; los tres derivan del encuadre client-site autorizado en el brief).

El artículo cumple con voz, claims, snippet y compliance de marca. Los flags son consecuencia deliberada del tipo de pieza (contenido de compra de foreclosures para sitio de cliente, no el blog investor-SEO): CTA de oferta en efectivo con URL placeholder, ausencia de sección "Final thoughts", y cero menciones de BASEO en el cuerpo. Todo trazable al brief y a la estructura de encabezados provista (que es input autoritativo). Ningún problema STOP-level.

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| "charging you to 'unlock' a government foreclosure list" | "charging you to access a government foreclosure list" | H2 "Free Government Foreclosure Listings" |
| Em-dash separador de etiqueta ("** — ") en la lista de 8 fuentes | Dos puntos ("**: ") | H2 "Quick Answer…" (8 ítems) |
| Em-dash separador de etiqueta en la lista de 3 documentos | Dos puntos | H2 "…Pre-Foreclosure Listings…County Records" (3 ítems: NOD, lis pendens, Notice of Sale) |
| "Tampa — Updated Daily" (dentro del bloque de image prompt) | "Tampa, Updated Daily" | H3 "Zillow" (prompt de imagen) |

Nota 1: "unlock" figura en la lista de clichés prohibidos (Check 1). Aunque aquí era un uso de advertencia al lector y no marketing-speak, se sustituyó por "access" porque el significado se preserva sin pérdida.

Nota 2 (Check 4b): se detectaron 12 em-dashes (U+2014), prohibidos en el cuerpo editorial. 11 eran separadores de etiqueta en listas → reemplazados por dos puntos (patrón "definición/lista" de la tabla del style guide). 1 estaba dentro de una meta description ficticia en el bloque de image prompt → reemplazado por coma. Los guiones tipo en-dash (–) en rangos numéricos ("50–60 caracteres", "1600×900") se conservan por ser correctos. Sin clichés, agency-speak ni trust-killers adicionales.

## Flags (requieren atención humana)

### Critical (must fix before review)

Ninguno.

### Style/structure (should fix before review)

- ❌ **CTA URL validity (Check 25)**: la CTA final usa un placeholder. Cita: "[Request a free cash offer]({{CLIENT_OFFER_URL}})" — Ubicación: H2 "Ready to Sell a Property Fast Instead?" — Fix sugerido: el publisher debe insertar la URL real del formulario de oferta en efectivo del cliente final antes de publicar. No es una URL canónica de BASEO porque es contenido de sitio de cliente (encuadre confirmado en el brief).

- ❌ **Closing section header (Check 22)**: no existe sección "## Final thoughts" / "## The bottom line" / "## What to do next". La estructura de encabezados provista cierra con el H2 de CTA seguido del FAQ. Cita: "## Ready to Sell a Property Fast Instead?" cumple la función de cierre/next-step. — Fix sugerido: aceptar la desviación (la estructura provista es autoritativa) o, si se prefiere el estándar BASEO, añadir un "Final thoughts" breve antes del FAQ.

### Informational

- ⚠️ **BASEO mention count (Check 12)**: 0 menciones de BASEO en el cuerpo. Esperado para esta pieza (contenido de compra de foreclosures para sitio de cliente, Tangential con override de encuadre). No es un error; se documenta para el revisor.
- ⚠️ **Proprietary how-detail (Check 7c/19)**: 0. No se describe ningún servicio de BASEO, así que no hay riesgo de filtrar detalle operativo.
- ⚠️ **Precios de herramientas de pago**: "~$40/mes" (Foreclosure.com) y "~$50/mes" (RealtyTrac) son datos de mercado de terceros, NO precios de BASEO (Check 4 no aplica). Verificar vigencia antes de publicar; los precios se mueven.
- ⚠️ **`[SCREENSHOT]` sin generar (Check 18)**: 2 placeholders, cada uno con su bloque `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]`. El publisher genera y reemplaza ambos bloques antes de publicar.
- ⚠️ **H2 largos (Check 10)**: dos H2 provistos superan las 8 palabras ("Quick Answer: The Best Places to Find Foreclosure Listings", "How to Find Pre-Foreclosure Listings for Free (County Records)"). Vienen de la estructura fija de input; aceptados.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count | ~2,300 (cuerpo + FAQ) | 2,000–2,600 | ✅ |
| H2 keyword coverage | 8/12 (~67%) | ≥ 60% | ✅ |
| BASEO mentions | 0 | 0 (Tangential/client-site) | ✅ |
| Internal links (thebaseo.com) | 2 | 4–8 rango; 2 URLs únicas del corpus disponibles | ⚠️ (solo hay 2 candidatos relevantes en el corpus; se usaron ambos, sin stuffing) |
| External Tier 1/2 citations | 5 (HUD, HomePath, HomeSteps, resales.usda.gov, Auction.com) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ (0 first-party; externos sourced) | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures (BASEO) | 0 | 0 | ✅ |
| Images / lists / tables | I:2 L:3 T:1 | ≥2 / ≥1 / ≥1 | ✅ |
| `[SCREENSHOT]` placeholders | 2 (con prompt cada uno) | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | present (list) bajo "Quick Answer…" | present | ✅ |
| TOC | N/A (<1,500 no aplica; ~2,300 sí supera el umbral) | per rule | ⚠️ — >1,500 palabras y sin TOC; opcional para esta pieza informativa, no bloqueante |
| Closing section | H2 CTA + FAQ (sin "Final thoughts") | 100–200 | ⚠️ desviación aceptada |
| CTA at end + URL valid | present; URL placeholder | audit CTA / client CTA | ⚠️ placeholder client-side |
| Em-dashes | 0 (12 corregidos) | 0 | ✅ |
| Audience (investor/buyer-addressed) | ✅ cuerpo al comprador; pivot a vendedor solo en el H2 de CTA | investor-addressed | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (cada uno con su image prompt)

- `[SCREENSHOT: Hero image — investor reviewing foreclosure listings on a laptop...]` — sección: tope del artículo (hero) — qué capturar: foto de operador revisando listings — image prompt present: ✅
- `[SCREENSHOT: Google/Zillow foreclosure results for a real US metro...]` — sección: H3 "Zillow" — qué capturar: SERP de foreclosures con Map Pack — image prompt present: ✅

### Otros pendientes de publicación

- Reemplazar `{{CLIENT_OFFER_URL}}` con el formulario de oferta en efectivo del cliente final.
- Confirmar precios vigentes de Foreclosure.com y RealtyTrac.
- Opcional: enlazar zillow.com/foreclosures y las páginas de REO bancario (BofA Real Estate Center, Wells Fargo PAS/PEMCO, Chase) si el publisher lo desea.
