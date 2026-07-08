# Self-check report — Keywords for Real Estate Investors

## Verdict

**Status**: ✅ Listo para review (Ready for review)
**Resumen**: 1 auto-fix aplicado · 0 flags críticos · 2 notas informativas.

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| "for conversions you can." | "for leads you can win." | H2 "Local + geo-modified keywords" (traducción de agency-speak: conversions → leads, tabla `baseo-context`) |

Nota: se conservó "higher conversion" (sustantivo que describe la propiedad técnica de los keywords hyperlocal: menor dificultad + mayor conversión), porque coincide con la fuente citada (Luxury Presence) y no es el uso prohibido de "conversions" como eufemismo de "leads".

## Flags (requieren atención humana)

### Críticos (arreglar antes de review)
- Ninguno.

### Estilo/estructura (deberían arreglarse antes de review)
- Ninguno.

### Informativos
- ⚠️ **Cifras direccionales (volúmenes/CPC)**: todos los volúmenes mensuales y el CPC ~$1.80 provienen de datos Ahrefs del input; no se pudieron re-verificar con búsqueda pública. En el artículo se atribuyen inline como "roughly / Ahrefs estimate". El publisher puede refrescarlos con datos Ahrefs en vivo antes de publicar. No es un defecto: es honestidad de fuente.
- ⚠️ **Em-dashes en bloque de prompt**: hay 4 guiones largo (—) pero TODOS están dentro del bloque `[PROMPT FOR CHATGPT IMAGE GENERATION:]` del diagrama (marcadores de trabajo para el publisher, no texto editorial). La prosa del artículo tiene 0 em-dashes. Por regla, los bloques de prompt no se tocan. Sin acción requerida.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (prosa) | ~2,950 | 2,600–3,400 | ✅ |
| H2 keyword coverage | 13/15 (87%) | ≥ 60% | ✅ |
| BASEO mentions (contextuales) | 3 + cierre CTA | Tangential 1–3 + close | ✅ |
| Internal links (thebaseo.com) | 7 | 6–10 | ✅ |
| External Tier 1/2 citations | 4 (Adwords Nerds, Motivated Leads, Luxury Presence, Semrush) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ (sin first-party; externos linkeados) | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Images / lists / tables | I:3 L:2+ T:2 | ≥3 / ≥1 / ≥1 | ✅ |
| `[SCREENSHOT]` placeholders | 3 (cada uno con su prompt) | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | present (list) bajo "Motivated seller keywords" | present | ✅ |
| TOC (>1,500 words) | present | per rule | ✅ |
| Closing section | "Turn this list into ranked pages" (~95 palabras, restate + next step + CTA) | 100–200 / cierre válido | ✅ |
| CTA at end + URL valid | present, `home-cash-buyers-seo/#hero` | audit CTA, verified URL | ✅ |

## Verificaciones de contenido (STOP-level)

- **Audience check** ✅: cada keyword con voz de vendedor ("sell my house fast", etc.) se enmarca como *término objetivo que el investor rankea*, nunca como copy dirigido al homeowner. Sin drift de segunda persona hacia el vendedor.
- **Service fabrication** ✅: solo se nombran servicios reales del catálogo (Seller-Situation Content, Programmatic City Pages, AEO, Diagnostic Audit). Cero servicios out-of-scope atribuidos a BASEO.
- **Proprietary how** ✅: city pages = "original por mercado" (sin conteos/tools); AEO = "estructura Q&A + tracking semanal de citas" (sin herramientas); situation pages = "una por situación" (sin template).
- **First-party claims** ✅: no se usó ninguna cifra del case study (Tangential mantenido soft). Sin uso de "42 leads".

## Placeholders inventory (para completar antes de publicar)

### Screenshot placeholders (cada uno con su image prompt ✅)
- `[SCREENSHOT: hero]` — sección: tope del artículo — capturar/generar: investor revisando lista de keywords en escritorio modesto — image prompt present: ✅
- `[SCREENSHOT: Google SERP "we buy houses phoenix"]` — sección: H2 "Motivated seller keywords" — AI Overview + Map Pack + orgánicos — image prompt present: ✅
- `[SCREENSHOT: keyword-map diagram]` — sección: H2 "How to prioritize" — money→city pages, situational→situation pages, education→blog — image prompt present: ✅
