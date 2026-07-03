# Self-check report

## Veredicto

**Estado**: ⚠️ Requiere atención del redactor antes de review (solo decisiones estructurales por confirmar; nada crítico ni STOP)
**Resumen**: 1 auto-fix aplicado · 3 flags informativos/estructurales · 0 problemas STOP-level.

El artículo está limpio en lo que importa: sin em-dashes, sin frases prohibidas, sin agency-speak sin traducir, sin disclosure de paquetes/precios, sin garantías, claim first-party verbatim, y cada dato externo con fuente enlazada. Los 3 flags son decisiones que tomó el pipeline porque la estructura de encabezados la fijó el editor; el editor solo tiene que confirmarlas.

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| "a handful of clicks, almost no conversions, and no signal" | "a handful of clicks, almost no leads, and no signal" | H3 "How much should you budget per month?" (traducción de agency-speak: "conversions" → "leads" en contexto de leads) |

## Flags (requieren atención humana)

### Crítico (arreglar antes de review)

Ninguno.

### Estructura / estilo (conviene revisar antes de review)

- ⚠️ **Sección de cierre sin header literal `## Final thoughts`**: la estructura de encabezados es fija (la entregó el editor) y termina en las FAQ. El cierre real (insight + siguiente paso + CTA suave del audit) quedó integrado en el H2 "Get more leads without paying per click", que cumple la función de cierre según el style-guide. Decisión intencional. Confirmar que se acepta no añadir un H2 extra.
- ⚠️ **Enlaces internos por debajo del objetivo**: 3 enlaces internos (how-to-get-motivated-seller-leads, how-to-do-seo-real-estate-website, rank-in-ai-overviews) contra un target de 6–10. El corpus tiene pocas filas públicas relevantes y NO se inventaron URLs. La fila de CRM del corpus apunta a `cms.thebaseo.com` (backend de WordPress), no a una URL pública, por eso no se enlazó. Recomendación: resolver el conflicto de merge del `baseo-corpus.csv` y sumar enlaces cuando haya más posts publicados.
- ⚠️ **Intro de 100–150 palabras (excede el default <80 del style-guide)**: se siguió la instrucción explícita del editor en la guía del H1 (intro de 100–150 palabras). Documentado, no es defecto.

### Informativo

- ⚠️ **"impressions" aparece una vez** (H2 "Should you run Google Ads yourself or hire help?"): se usa correctamente, para RECHAZARla como métrica de éxito ("never clicks or impressions as a scorecard"). Alineado con el style-guide; no requiere cambio.
- ⚠️ **"10x" aparece una vez** (H3 "Cost per lead"): describe varianza real ("a 10x difference in cost per lead"), no es la promesa prohibida "10x your leads". OK.
- ⚠️ **"foundation" / "$50 to $70"** (H3 "Search Ads"): "foundation" es la palabra genérica (base), no el paquete BASEO; "$50–$70" es CPL de mercado, no precio de BASEO. Sin disclosure.
- ⚠️ **Adyacencia de anti-persona**: el keyword atrae a agentes retail (anti-persona). El framing de BASEO se ancló al operador cash-buyer B2 (keywords de vendedor, cash offer, pivote orgánico). El editor puede estrechar a inversionistas si lo prefiere.

## Counts (referencia rápida)

| Métrica | Valor | Objetivo | Estado |
|---|---|---|---|
| Word count del artículo | ~3,346 (prosa+tablas+listas; sin bloques de prompt de imagen) | 2,600–3,400 | ✅ |
| Cobertura de keyword en H2 | 6/10 H2s de cuerpo (60%) | ≥ 60% | ✅ |
| Menciones BASEO | 2 + CTA del audit | Tangential 1–3 | ✅ |
| Enlaces internos (thebaseo.com) | 3 + CTA | 6–10 | ⚠️ (limitado por corpus) |
| Citas externas Tier 1/2 | 6 fuentes (WordStream, Google Ads policy ×2, Google LSA, Axios/NAR, Avenue, Carrot, 360Connect) | ≥ 3 | ✅ |
| Claims: first-party verbatim / externos con fuente | ✅ / ✅ | todos | ✅ |
| Lenguaje de garantía | 0 | 0 | ✅ |
| Disclosure de paquetes/precios | 0 | 0 | ✅ |
| Imágenes / listas / tablas | I:3 L:5 T:2 | ≥3 / ≥2 / ≥2 | ✅ |
| Placeholders `[SCREENSHOT]` | 3 (cada uno con su prompt de imagen) | humano completa | ⚠️ info |
| Em-dashes (—) | 0 | 0 | ✅ |
| Detalle propietario (how) | 0 | 0 en blog | ✅ |
| Featured snippet | presente (párrafo, 49 palabras) bajo "Do Google Ads actually work for real estate?" | presente | ✅ |
| TOC (>1,500 palabras) | ausente | por regla | ⚠️ opcional (el editor no lo pidió; se puede añadir) |
| Sección de cierre | integrada en "Get more leads without paying per click" (~100 palabras) | 100–200 | ⚠️ sin header literal |
| CTA al final + URL válida | presente, `.../home-cash-buyers-seo/#hero` | audit CTA, URL verificada | ✅ |

## Inventario de placeholders (para completar antes de publicar)

### Placeholders de screenshot (cada uno con su prompt de imagen)
- `[SCREENSHOT: hero — operador revisando una notificación de lead en el celular frente a una casa]` — sección: top del artículo (hero) — prompt de imagen presente: ✅ (Categoría 4, foto)
- `[SCREENSHOT: SERP de "sell my house fast phoenix" con LSAs arriba, luego Search Ads, luego orgánico]` — sección: H2 "The 4 Google Ads campaign types for real estate" — prompt presente: ✅ (Categoría 1, SERP)
- `[SCREENSHOT: diagrama paid vs organic lead flow en el tiempo]` — sección: H2 "Get more leads without paying per click" — prompt presente: ✅ (Categoría 5, diagrama)

### Notas de verificación de datos (para el editor)
- Todos los números externos verificados vía WebSearch contra el publisher original (WordStream, Google Ads Help, Google LSA, Axios/NAR, Avenue, Carrot, 360Connect).
- CPC $3.22 y CPL ~$100–$116: benchmarks WordStream 2026.
- CPC de vendedor $5–$65 y CPL de comprador $200–$250: presentados como rangos/math combinada (no fuente única), tal como pidió el brief.
- Claim first-party: solo "3 → 28 en 9 meses" (verbatim de la Approved claims library). No se usó 42.
