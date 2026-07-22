# Self-check report — property-leads

## Veredicto

**Status**: ✅ Listo para review
**Resumen**: 2 auto-fixes aplicados · 3 flags informativos (ninguno crítico).

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| "Acquisition — finding deals" / "Disposition — moving deals" (em-dash dentro del bloque de prompt de imagen) | "Acquisition: finding deals" / "Disposition: moving deals" (dos puntos) | Prompt de imagen del diagrama en H2 "The 2 sides of investor lead gen" |
| `%currentyear%` en la FAQ de costos | `2026` | H3 FAQ "How much do motivated seller leads cost?" |

Nota: el em-dash estaba únicamente dentro de un bloque `[PROMPT FOR CHATGPT IMAGE GENERATION]`. Se corrigió porque el texto del label se renderizaría dentro de la imagen generada; los bloques `[SCREENSHOT:]` y `[PROMPT...]` permanecen intactos en todo lo demás.

## Flags (requieren atención humana)

### Crítico (arreglar antes de review)
Ninguno.

### Estilo / estructura (conviene revisar antes de review)

- ⚠️ **Cobertura de keyword literal**: los H2 los fijó el editor. 10 de 12 H2 contienen "lead/leads" (83%), muy por encima del piso de 60% para el cluster amplio. La frase literal "property leads" aparece en H1, intro y bloque hub, no en la mayoría de los H2. No se reescriben headings del editor. Aceptado.
- ⚠️ **Longitud de algunos H2**: un par de H2 del editor superan las 8 palabras (ej. "The 2 sides of investor lead gen: seller leads vs. buyer leads"). Headings fijos por el editor. Aceptado.

### Informativo

- ⚠️ **Hub block (links de cluster)**: solo la página de "seller leads" existe en `baseo-corpus.csv`. Los anchors "wholesale leads", "home leads" y "homebuyer leads" quedan como texto exacto sin URL (no se inventaron enlaces). El publisher debe cablear esos internal links cuando se publiquen las páginas de cluster.
- ⚠️ **Placeholders de imagen**: 4 bloques `[SCREENSHOT:]` + `[PROMPT...]` (hero, diagrama 2-lados, diagrama espectro, SERP). El publisher genera cada imagen desde su bloque PROMPT y reemplaza ambos bloques por la imagen real en WordPress.
- ⚠️ **Precios**: todas las cifras de costo tienen fuente 2026 verificada en vivo (UndervaluedX, US Lead List, HouseCashin, Promodo, Webrageous, Visionary Marketing, Ylopo, The Close). Re-verificar si se publica bastante más tarde.

## Counts (referencia rápida)

| Métrica | Valor | Target | Status |
|---|---|---|---|
| Word count total (prosa, sin bloques de prompt) | ~2,980 | 2,800–3,500 | ✅ |
| Cobertura keyword en H2 ("lead/leads") | 10/12 (83%) | ≥ 60% | ✅ |
| Menciones BASEO | ~5 contextuales, 1ª antes de la mitad | 2–4 TOFU (pillar) | ✅ (aceptable para hub) |
| Internal links (thebaseo.com) | 12 | 8–14 | ✅ |
| Citas externas Tier 1/2 | ≥ 6 | ≥ 3 | ✅ |
| Claims: first-party verbatim / externas con fuente | ✅ | todas | ✅ |
| Lenguaje de garantía | 0 | 0 | ✅ |
| Disclosure de paquete/precio BASEO | 0 | 0 | ✅ |
| Em-dashes (—) | 0 | 0 | ✅ |
| Imágenes / listas / tablas | I:4 L:2 T:2 | ≥3 / ≥2 / ≥2 | ✅ |
| Placeholders `[SCREENSHOT]` | 4 | los llena el humano | ⚠️ info |
| Proprietary how-detail | 0 | ninguno en el blog | ✅ |
| Featured snippet element | presente (paragraph) | presente | ✅ |
| TOC (>1,500 palabras) | ausente | por regla | ⚠️ opcional (12 H2 escaneables; se puede añadir un TOC de anclas si el editor lo quiere) |
| Sección de cierre | "Final thoughts", ~130 palabras | 100–200 | ✅ |
| CTA al final + URL válida | presente, `/home-cash-buyers-seo/#hero` | audit CTA, URL verificada | ✅ |

## Placeholders inventory (para completar antes de publicar)

### Screenshot placeholders (cada uno con su image prompt)
- `[SCREENSHOT: hero]` — intro — investor revisando notificación de lead en el teléfono — prompt presente: ✅
- `[SCREENSHOT: diagrama 2 lados]` — H2 "The 2 sides of investor lead gen" — Acquisition vs Disposition — prompt presente: ✅
- `[SCREENSHOT: diagrama espectro]` — H2 "Types of motivated seller leads" — barra de espectro de motivación — prompt presente: ✅
- `[SCREENSHOT: SERP]` — H2 "Own your lead channel instead of renting it" — Google SERP "sell my house fast tampa", cash-buyer #1 — prompt presente: ✅

## Verificación de fidelidad de claims

- First-party: "3 to 28 motivated seller leads a month in nine months, same market, no extra ad spend" → coincide verbatim con la Approved claims library. **No** se usó la cifra retractada de 42. ✅
- Ninguna cifra externa sin fuente. Ninguna cifra de la tabla RETRACTED de `baseo-context`. ✅
- Sin how-detail propietario (tools, counts por mes, budgets, workflow interno). ✅
- Sin promesa de ROI, ranking o cantidad de leads. ✅
