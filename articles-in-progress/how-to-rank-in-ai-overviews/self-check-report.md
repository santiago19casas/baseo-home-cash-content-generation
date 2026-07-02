# Self-check report — How to Rank in AI Overviews

## Veredicto

**Status**: ✅ Listo para review (Ready for review)
**Resumen**: 3 auto-fixes aplicados · 0 flags críticos · 3 flags informativos.

El draft entró prácticamente limpio (el drafter ya había hecho su pasada interna). No hay problemas STOP-level: no hay claims inventados, no hay fabricación de servicios, no hay contenido dirigido al vendedor, no hay lenguaje de garantía, el elemento de featured snippet está presente y hay CTA al final.

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| Em-dash en el label del dashboard: "AEO & Lead Report — Tampa Market" | "AEO & Lead Report: Tampa Market" (dos puntos) | Bloque `[PROMPT FOR CHATGPT IMAGE GENERATION]` bajo "How to Measure…" |
| 2 em-dashes del copy de FAQ provisto ("technical health, helpful content, and E-E-A-T —", "top-20 pages —") | Convertidos a comas | FAQ #1 y FAQ #2 (ya aplicado por el drafter; confirmado) |
| Apéndice "Draft notes" (contenía 2 em-dashes internos) | Removido del artículo pulido (no es parte del artículo) | Fin del draft |

Nota: los bloques `[SCREENSHOT: ...]` y `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` se mantienen intactos en el artículo pulido, como exige el pipeline (el publisher genera la imagen desde el prompt y reemplaza ambos bloques en WordPress).

## Flags (requieren atención humana)

### Críticos (must fix before review)
Ninguno.

### Estilo/estructura (should fix before review)
Ninguno bloqueante. Observación menor: la cobertura de keyword en H2 es ~56% literal (5 de 9 H2 contienen "AI Overview(s)" o la variante "cited"). Los headings vienen dados por editorial y no se reescriben en este pipeline. La cobertura *topical* supera el 60% (los H2 "Ranking vs. Getting Cited" y "How to Measure…" son variantes de intención), y el H1 + el H2 de los 8 pasos llevan el keyword exacto. Se acepta como ⚠️, no ❌.

### Informativos
- ⚠️ **Imágenes**: 4 placeholders `[SCREENSHOT]`, cada uno con su bloque de prompt para ChatGPT. El publisher debe generarlas y poner alt text antes de publicar.
- ⚠️ **Schema**: añadir FAQPage + Article schema en render (Astro). El paso 6 y la sección de mitos ya aclaran, con la doc oficial de Google, que el schema ayuda pero NO es requisito ni garantía para AIO — mantener ese matiz si se edita.
- ⚠️ **Metadatos**: confirmar antes de publicar. Meta title: "How to Rank in AI Overviews (2026): The Real Steps" (50 chars). Meta description: "AI Overviews now show on ~48% of searches and cut top-page clicks up to 58%. Here's what triggers them and how to get your page cited in 2026." (150 chars). Slug: `rank-in-ai-overviews`.
- ⚠️ **Nota de scope (heredada del brief)**: la estructura dada era de audiencia genérica; la pieza fue enhebrada para el ICP de cash home buyers (queries de vendedor, city pages, seller-situation pages, frame "el vendedor abre ChatGPT"). Si editorial quiere una versión verdaderamente genérica, es otra marca/sitio.

## Counts (quick reference)

| Métrica | Valor | Target | Status |
|---|---|---|---|
| Total word count (artículo, con FAQ) | ~2,180 | 2,000–2,600 | ✅ |
| H2 keyword coverage | ~56% literal / >60% topical | ≥ 60% | ⚠️ (headings dados) |
| BASEO mentions | ~6 | 4–8 (MOFU) | ✅ |
| Internal links (thebaseo.com) | 7 | 7–12 | ✅ |
| External Tier 1/2 citations | 8 fuentes únicas (Google x2, Pew, Ahrefs, Seer, AirOps, SEL/Authoritas, The Stacc) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Images / lists / tables | I:4 L:2 T:1 | ≥3 / ≥2 / ≥1 | ✅ |
| `[SCREENSHOT]` placeholders (c/prompt) | 4 / 4 | human llena | ⚠️ info |
| Proprietary how-detail | 0 | ninguno | ✅ |
| Featured snippet element | presente (list + paragraph) | presente | ✅ |
| TOC (>1,500 palabras) | ausente | recomendado | ⚠️ opcional |
| Closing section | "Final thoughts" ~120 palabras | 100–200 | ✅ |
| CTA al final + URL válida | presente, `#hero` verificada | audit CTA, URL verificada | ✅ |
| Em-dashes en cuerpo | 0 | 0 | ✅ |

## Verificación de claims (fidelidad)

- **First-party**: "Florida client's pages started getting cited by AI Overviews and Perplexity by month 7" — coincide con `baseo-services-reference` (mes 7) / Approved library. Sin uso de "42" (se usó el estándar del sistema). ✅
- **External**: las 10 estadísticas externas trazan a URL verificadas en el research-dossier (WebSearch, jul 2026). Ninguna sin fuente. ✅

## Placeholders inventory (para completar antes de publicar)

### Screenshot placeholders (cada uno con su image prompt)
- `[SCREENSHOT: hero]` — sección: top del artículo — foto de operador con el teléfono frente a casa suburbana — image prompt presente: ✅
- `[SCREENSHOT: SERP con AI Overview]` — sección: "What Are AI Overviews…" — Google SERP "sell my house fast tampa" con AIO — image prompt presente: ✅
- `[SCREENSHOT: SERP side-by-side]` — sección: "What Triggers an AI Overview…" — query informacional con AIO vs transaccional sin AIO — image prompt presente: ✅
- `[SCREENSHOT: dashboard de leads]` — sección: "How to Measure…" — citas por ciudad + leads con teléfono + CPL bajando — image prompt presente: ✅

## Nota sobre TOC
El artículo ronda las ~2,180 palabras (>1,500), así que el style-guide sugiere un TOC de anclas H2 tras la intro. Es opcional en el frontend Astro (que suele generar TOC automático). Se deja como ⚠️ informativo, no bloqueante.
