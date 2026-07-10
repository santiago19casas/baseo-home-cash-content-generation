# Self-check report — SEO for Realtors

## Verdict

**Status**: ✅ Listo para revisión (con banderas informativas)
**Resumen**: 0 auto-fixes necesarios (el draft llegó limpio) · 3 banderas informativas para que el editor confirme antes de publicar.

El artículo pasa todos los checks deterministas. Las banderas no bloquean: son decisiones editoriales ya aprobadas por Eddie (la jugada de arbitraje) más un ajuste de dato que ya se resolvió en el draft (el 88% de reviews).

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| (ninguno) | — | El draft ya venía sin clichés, sin agency-speak, sin em-dashes, sin disclosure de precios/paquetes |

## Flags (requieren atención humana)

### Crítico (arreglar antes de revisión)
- Ninguno.

### Estilo / estructura (conviene revisar antes de publicar)
- ⚠️ **Reviews — dato del heading descartado**: el heading pedía "~88% de consumidores confían en reviews como en recomendaciones personales". Ese dato está DESACTUALIZADO (BrightLocal actual ~42–50%; el 84–88% fue 2016–2017). Se reencuadró la sección con los factores de ranking local de Google (cantidad, recencia, respuesta) + BrightLocal cualitativo. Confirmar que el reencuadre es aceptable. Suggested copy ya insertado: *"Google's local ranking factors explicitly weigh reviews by quantity, recency, and how well you respond, and reviews remain one of the strongest local trust signals consumers act on."*

### Informativo
- ⚠️ **Arbitraje realtor (anti-persona) — APROBADO por Eddie**: el keyword de superficie "seo for realtors" apunta a agentes retail (anti-persona de BASEO). La sustancia, los ejemplos (mezclan "homes for sale [city]" y "we buy houses [city]"), la prueba (caso Florida 3→28) y el CTA (auditoría gratis) enrutan al ICP de BASEO. Consistente con el artículo publicado `seo-for-estate-agents`. Decisión de Eddie: *"dale angulo para que vaya para BASEO pero esas son las kws que necesito."* Sin acción requerida; se documenta.
- ⚠️ **Placeholders de imagen**: 4 bloques `[SCREENSHOT]`, cada uno con su `[PROMPT FOR CHATGPT IMAGE GENERATION]` pareado. El publisher genera e inserta las imágenes reales antes de publicar.
- ⚠️ **Schema**: agregar FAQPage JSON-LD (bloque marcado al final) y, opcional, RealEstateListing/Product schema en las listing pages, al publicar.

## Counts (referencia rápida)

| Métrica | Valor | Target | Status |
|---|---|---|---|
| Total word count (prosa) | ~3,000 | 3,000–3,800 | ✅ |
| H2 keyword coverage | 9/13 (69%) | ≥ 60% | ✅ |
| BASEO mentions | 6 | 4–8 (MOFU Active) | ✅ |
| Internal links (thebaseo.com) | 7 + CTA | 5–8 | ✅ |
| External Tier 1/2 citations | 7 (NAR, First Page Sage, Google×2, web.dev, Seer, BrightLocal, HubSpot, Backlinko) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | todas | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ ($4,500 solo dentro del claim aprobado del caso Florida) |
| Em-dashes (—) | 0 | 0 | ✅ |
| Images / lists / tables | I:4 L:5 T:3 | ≥ 4 / 2 / 2 | ✅ |
| `[SCREENSHOT]` placeholders | 4 (c/u con prompt) | los completa el humano | ⚠️ info |
| Proprietary how-detail | 0 | ninguno en el blog | ✅ |
| Featured snippet element | presente (párrafo bajo H2 #1 + tablas cost/time + FAQ) | presente | ✅ |
| TOC (>1,500 words) | ausente | recomendado | ⚠️ opcional (el publisher puede añadir un TOC de anclas) |
| Closing section | "Get Found by More Buyers and Sellers" + CTA | cierre + CTA auditoría | ✅ |
| CTA al final + URL válida | presente · https://www.thebaseo.com/home-cash-buyers-seo/#hero | auditoría, URL verificada | ✅ |

## Placeholders inventory (para completar antes de publicar)

### Screenshot placeholders (cada uno con su image prompt)
- `[SCREENSHOT: hero]` — sección: top — foto de agente/operador revisando un lead en el teléfono — image prompt present: ✅
- `[SCREENSHOT: lead report 3→28]` — sección: "Does SEO Actually Work" — dashboard de leads orgánicos subiendo y CPL bajando — image prompt present: ✅
- `[SCREENSHOT: Map Pack]` — sección: "Local SEO" — 3-pack local de Google para query real-estate — image prompt present: ✅
- `[SCREENSHOT: GBP panel]` — sección: "Optimize Your Google Business Profile" — perfil GBP completo — image prompt present: ✅

### Otros
- Bloque `[FAQ SCHEMA]` al final: convertir a FAQPage JSON-LD al publicar.
- TOC opcional (artículo > 1,500 words): el publisher puede añadir una lista de anclas H2 tras la intro.
