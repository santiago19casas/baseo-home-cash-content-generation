# Self-check report

## Verdict

**Status**: ⚠️ Needs writer attention before review
**Summary**: 2 auto-fixes aplicados · 4 flags menores (0 críticos, 0 STOP-level).

El artículo está sustancialmente listo. Ningún problema es de nivel STOP: no hay fabricación de servicios, ni contenido dirigido al seller, ni garantías, ni precios/paquetes. Los 4 flags son estructurales o de densidad y ninguno bloquea el review. El más relevante (falta de header de cierre) es una desviación intencional dictada por la estructura de headings fija del brief.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| `Motivated Seller Leads — Organic & AI Search` (em-dash dentro del texto del header del dashboard, se renderizará en la imagen) | `Motivated Seller Leads: Organic & AI Search` (dos puntos) | Bloque PROMPT de la imagen bajo H2 "Get More Motivated Seller Leads to Actually Call" |
| Línea `[SCREENSHOT: A clean reference table mapping each key question...]` sobrante encima de la tabla de dinero (la tabla ya es markdown real, no una imagen; el placeholder quedaba sin su bloque PROMPT) | Línea eliminada | H2 "Questions About the Money" |

Nota: el reemplazo de "before we dive in" → "before we get into it" (cliché prohibido) ya venía resuelto desde `baseo-draft`; no es un auto-fix de este paso.

## Flags (require human attention)

### Critical (must fix before review)

- Ninguno.

### Style/structure (should fix before review)

- ❌ **Closing section header (Check 22)**: no existe un `## Final thoughts` / `## The bottom line` / `## What to do next`. La estructura de headings obligatoria del brief termina en el bloque FAQ, así que el CTA del audit se colocó como línea final del H2 puente "Get More Motivated Seller Leads to Actually Call" (que funciona como cierre, 100–200 palabras ✅ y con CTA + URL válida ✅). **Desviación intencional**. Sugerencia: si el editor quiere el header canónico, añadir un `## The bottom line` de una línea antes del FAQ, sin tocar la estructura fija.
- ❌ **TOC (Check 21)**: el cuerpo supera las 1,500 palabras (~2,350) y no lleva índice de anclas H2. Sugerencia: el publisher/editor puede insertar la lista de anclas H2 arriba del primer H2 si la plantilla de Astro no la genera sola.
- ❌ **Internal link count (Check 13)**: 3 enlaces internos a thebaseo.com; el rango objetivo del brief es 4–8. Aceptable para una pieza Tangential (CTA suave, presupuesto BASEO ajustado), pero por debajo del mínimo. Sugerencia: añadir un enlace contextual más en el H2 puente, p. ej. anchor "SEO for your investor site" → `https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-do-seo-real-estate-website/` (candidato ya identificado en el dossier).
- ❌ **External Tier 1/2 citations (Check 15)**: 2 citas externas (Seer, Carrot); la referencia de self-check sugiere ≥3. El tema es cualitativo (guion de llamada), no data-heavy, así que 2 es razonable, pero queda por debajo del umbral. Sin fuente nueva verificada, no se añade (no se fabrican fuentes).

### Informational

- ⚠️ **Stat descartada correctamente**: la estadística "~80% de las ventas cierran después del 5.º contacto" se dejó FUERA del artículo porque su origen ("National Sales Executive Association") no es verificable de forma independiente. El punto se hace de forma cualitativa ("qualifying is rarely one and done"). Correcto.
- ⚠️ **Seer stat con caveat**: "15.9% vs 1.76%" se cita explícitamente como un case study de 2025 de un solo cliente, no como ley universal. Correcto.
- ⚠️ **Claim first-party**: "3 → 28 motivated seller leads a month in nine months, same market" usado verbatim del Approved claims library. No aparece "42". Correcto.
- ⚠️ **3 `[SCREENSHOT: ...]` placeholders** para completar antes de publicar (cada uno con su bloque PROMPT listo para pegar en ChatGPT). Inventario abajo.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (cuerpo, sin bloques PROMPT) | ~2,350 | 2,000–2,600 | ✅ |
| H2 keyword coverage | 7/10 (70%) | ≥ 60% | ✅ |
| BASEO mentions | 3 | Tangential 1–3 | ✅ |
| Internal links (thebaseo.com) | 3 | 4–8 | ⚠️ |
| External Tier 1/2 citations | 2 | ≥ 3 | ⚠️ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Images / lists / tables | I:3 L:2 T:1 | ≥3 / ≥2 / ≥1 | ✅ |
| `[SCREENSHOT]` placeholders | 3 | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | present (list) | present | ✅ |
| Em-dashes (cuerpo) | 0 | 0 | ✅ |
| TOC | missing | requerido (>1,500 palabras) | ⚠️ |
| Closing section | folded into bridge H2 (~130 words) | header dedicado, 100–200 | ⚠️ (desviación intencional) |
| CTA at end + URL valid | present · `#hero` audit URL | audit CTA, verified URL | ✅ |
| Audience (investor-addressed) | sí | investor | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (each has a matching image prompt)

- `[SCREENSHOT: Hero image...]` — section: top of article — what to capture: investor tomando una llamada de seller en un entorno real — image prompt present: ✅ (Category 4, hero)
- `[SCREENSHOT: A simple diagram showing the four qualifying axes...]` — section: H2 "Why the Right Questions Matter More Than the Right Script" — what to capture: diagrama de los 4 ejes (motivación/condición/dinero/timeline) — image prompt present: ✅ (Category 5, diagram)
- `[SCREENSHOT: A lead-reporting dashboard...]` — section: H2 "Get More Motivated Seller Leads to Actually Call" — what to capture: leads inbound subiendo + cost per lead bajando en 9 meses — image prompt present: ✅ (Category 3, dashboard)
