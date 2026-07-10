# Self-check report

## Verdict

**Status**: ✅ Ready for review (Listo para revisión)
**Summary**: 0 auto-fixes aplicados · 0 flags críticos. El draft llegó limpio del drafter; no se necesitaron reescrituras automáticas.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| (ninguno) | — | El draft pasó los 26 checks sin correcciones automáticas. |

## Flags (require human attention)

### Critical (must fix before review)

- Ninguno. Sin claims inventados, sin fabricación de servicios, sin contenido dirigido al vendedor, sin lenguaje de garantía, sin disclosure de precio/paquete, snippet presente, CTA presente.

### Style/structure (should fix before review)

- Ninguno bloqueante.

### Informational

- ⚠️ **Guiones largos (—)**: se detectaron 2, pero AMBOS están dentro del bloque `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` del diagrama (instrucciones para generar la imagen, no prosa editorial). Por política, los bloques de imagen no se tocan. La prosa del artículo tiene 0 guiones largos. Sin acción.
- ⚠️ **H2 "Book your free strategy call"**: se mantuvo tal cual la heading structure entregada. El cuerpo lo reconcilia con el posicionamiento "no call required" enmarcando la auditoría escrita gratuita como el paso de entrada y la llamada como opcional. Editor: confirmar el encabezado o renombrarlo a "Get your free site audit."
- ⚠️ **Enlace "the full case study"**: apunta a `/home-cash-buyers-seo/resources/` (raíz de recursos) porque el corpus no tiene una URL de post de caso de estudio dedicada. La página `/home-cash-buyers-seo/case-studies/` está verificada en `baseo-context` y puede sustituirse si se prefiere.
- ⚠️ **Placeholders de imagen**: 4 `[SCREENSHOT: ...]`, cada uno con su `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]`. El publisher debe generar las 4 imágenes antes de publicar (ver inventario abajo).

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (prosa) | ~2,780 | 2,400–3,300 | ✅ |
| H2 keyword coverage | 6/9 (67%) | ≥ 60% | ✅ |
| BASEO mentions | protagonista (casi cada sección) | framing×funnel (BOFU) | ✅ |
| Internal links (thebaseo.com) | 9 contextuales + 4 CTA a #hero | 8–15 | ✅ |
| External Tier 1/2 citations | 4 (Google, Seer, LocaliQ, Softtrix) + Loganix | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Images / lists / tables | I:4 L:2 T:2 | ≥4 / ≥1 / ≥2 | ✅ |
| `[SCREENSHOT]` placeholders | 4 (todos con prompt) | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | present (table, "SEO vs PPC…") | present | ✅ |
| TOC | present (>1,500 words) | per rule | ✅ |
| Closing section | "Final thoughts" ~130 words | 100–200 | ✅ |
| CTA at end + URL valid | present, `#hero` verificado | audit CTA, verified URL | ✅ |

## Verificaciones específicas del ICP

- **Claim 3 → 28 (no 42)**: ✅ verificado — el draft usa 3 → 28 en todas partes; 0 ocurrencias de "42".
- **$4,500**: ✅ aparece solo en el contexto aprobado del caso Florida (before-state de la agencia anterior y "$54K de profit contra una factura de $4,500"). Nunca como lista de precios de BASEO.
- **Rangos de mercado ($1,500 / $2,000–$6,000)**: ✅ citados como rango de industria con fuente (Loganix), no como precio de BASEO.
- **Audiencia**: ✅ segunda persona = el inversionista; el vendedor motivado se menciona en tercera persona. Ninguna sección se dirige al homeowner.
- **Datos no verificados descartados**: ✅ el drafter usó Seer (15.9% vs 1.76%) y LocaliQ/Softtrix en lugar del anecdótico "26 de 45" de Carrot y las cifras precisas no verificadas ("$25–$120/click", "+36%").

## Data verification refresh (re-checked con datos 2026 más actuales)

Se re-verificaron las estadísticas externas con búsquedas frescas (julio 2026). Resultado: todas siguen vigentes; se afinaron dos con cifras 2026 más específicas.

| Dato | Estado tras re-verificación | Fuente |
|---|---|---|
| ChatGPT convierte 15.9% vs 1.76% organic (~9x); Perplexity 10.5% | ✅ Vigente (estudio Seer, datos 2026) | [Seer Interactive](https://www.seerinteractive.com/insights/case-study-6-learnings-about-how-traffic-from-chatgpt-converts) |
| CPC términos de vendedor ("sell my house fast", "we buy houses") | 🔄 Afinado: $5–$65/click, supera $75–$110 en metros competitivos (antes: "muy por encima de $3.22") | [LocaliQ](https://localiq.com/blog/real-estate-search-advertising-benchmarks/) · [Promodo 2026](https://www.promodo.com/blog/the-ultimate-ppc-guide-for-real-estate-investors) |
| CPL maduro SEO ~$5–$20 vs PPC $50–$150; ROI SEO real estate ~1,389% año 3 | ✅ Vigente | [Softtrix](https://www.softtrix.com/blog/ppc-vs-seo-cost-comparison/) |
| Google: 45% menos contenido de baja calidad; Scaled Content Abuse | ✅ Vigente (política 2024, estable) | [Google Search Central](https://developers.google.com/search/blog/2024/03/core-update-spam-policies) |
| Rango de retainer investor SEO | 🔄 Actualizado a datos 2026: $500–$1,500 básico, $1,500–$3,000 mid, $4,500–$10,000+ avanzado; promedio ~$1,800/mes | [RC Digital 2026](https://rcdigital.us/real-estate-investor-seo-cost/) |

**Nota sobre "$4,500" en la sección de costos**: aparece ahora únicamente como parte de un RANGO de mercado con fuente ("$4,500–$10,000+" para builds multi-mercado competitivos, dato de industria 2026). Esto es un rango de mercado permitido por `baseo-context` ("generic market ranges ARE allowed when sourced"), NO un precio de BASEO ni un nombre de paquete. Los otros usos de $4,500 (líneas del caso Florida) son el claim aprobado. ✅ Sin disclosure de precio/paquete de BASEO.

**Descartado como no verificable**: anecdótico Carrot "26 de 45 leads de ChatGPT" y las cifras precisas "+36% CPC 2023→2024" — reemplazados por los datos con fuente arriba.

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (cada uno con su image prompt)

- `[SCREENSHOT: hero — inversionista al teléfono junto a su pickup frente a una casa modesta]` — sección: top del artículo (antes del primer H2) — image prompt present: ✅ (Categoría 4, hero)
- `[SCREENSHOT: diagrama — arquitectura de contenido del sitio investor, pirámide de 3 niveles]` — sección: H2 "Our SEO services…" — image prompt present: ✅ (Categoría 5, diagrama)
- `[SCREENSHOT: dashboard de leads — leads 3→28 en 9 meses, CPL cayendo a $161]` — sección: H2 "What results can investors expect from SEO?" — image prompt present: ✅ (Categoría 3, dashboard)
- `[SCREENSHOT: SERP de Google para "we buy houses [city]" — cash buyer inventado en #1]` — sección: H2 "Why choose TheBaseo…" — image prompt present: ✅ (Categoría 1, SERP)
