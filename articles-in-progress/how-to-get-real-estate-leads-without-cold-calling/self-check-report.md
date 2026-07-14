# Self-check report

## Verdict

**Status**: ✅ Ready for review
**Summary**: 0 auto-fixes aplicados (el draft llegó limpio) · 0 flags críticos · 4 flags informativos.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| (ninguno — no se encontraron frases prohibidas, em-dashes ni disclosures que corregir) | | |

Nota: el em-dash del copy de snippet suministrado por el editor ya venía reemplazado por dos puntos desde el outline/draft, y los ajustes a FAQs 3 y 4 se hicieron upstream con fuentes verificadas.

## Flags (require human attention)

### Critical (must fix before review)

- Ninguno.

### Style/structure (should fix before review)

- ⚠️ **Cobertura de keyword en H2**: 3/7 H2s (43%) contienen el keyword o variación cercana, bajo el objetivo de 60%. Causa: la estructura de H2s del editor se respetó verbatim. La cobertura combinada H2+H3+FAQs sí supera el 60% (los 9 H3 numerados cuelgan del H2 con keyword exacto y las FAQs cargan las variantes long-tail). Decisión editorial, no error del drafter.
- ⚠️ **Párrafo largo en el cierre**: el primer párrafo del "expertise close" en Final thoughts tiene 5 oraciones (norma: máx. 4). Es el patrón consultivo sancionado por el style guide casi verbatim; dividirlo le quitaría ritmo. Quote: "Every piece of the SEO side is work, every month..." — sugerencia: dejar como está o partir tras "closing."

### Informational

- ⚠️ **Menciones BASEO**: 9 ocurrencias mecánicas de "BASEO" vs objetivo 4–8 (MOFU Active). Desglose: 5 menciones narrativas (estrategias 1, 2, 3, H2 de CTA, cierre) + 4 créditos de cita "(BASEO client data)". Las citas de datos no son pitch; el conteo narrativo está dentro de rango.
- ⚠️ **Word count**: ~2,970 palabras de cuerpo (incluye TOC y captions), tope del rango 2,300–3,000. Dentro de rango, sin margen para añadir secciones.
- ⚠️ **Intro de 128 palabras**: sobre la norma de <80 del style guide, pero dentro del spec del editor (120–160). Acknowledged desde el brief.
- ⚠️ **Excepción $4,500 verificada**: aparece 1 vez, dentro del claim aprobado del case study de Florida ("$54K combined profit against a $4,500 monthly invoice"). Contexto correcto, permitido.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (cuerpo) | ~2,970 | 2,300–3,000 | ✅ |
| H2 keyword coverage | 3/7 (43%) | ≥ 60% | ⚠️ (combinada >60%) |
| BASEO mentions | 9 (5 narrativas + 4 citas de datos) | 4–8 | ⚠️ info |
| Internal links (thebaseo.com) | 11 | 7–15 | ✅ |
| External Tier 1/2 citations | 8 de 12 enlaces externos son Tier 1/2 (NAR, Carrot ×3, Seer, AirOps, Goliath) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ 4 first-party verbatim de la librería / 12 stats externas con URL | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 (excepción $4,500 en contexto aprobado) | 0 | ✅ |
| Em-dashes | 0 | 0 | ✅ |
| Frases prohibidas / agency-speak | 0 | <3 | ✅ |
| Images / lists / tables | I:3 L:2 T:2 | ≥3 / ≥2 / ≥2 | ✅ |
| `[SCREENSHOT]` placeholders | 3, cada uno con su bloque de prompt | human fills | ⚠️ info |
| Proprietary how-detail | 0 (sin counts/mes, sin tools, sin workflow) | none | ✅ |
| Featured snippet element | present (paragraph, intro P2, keyword en primeras 100 palabras) | present | ✅ |
| TOC | present (>1,500 palabras) | per rule | ✅ |
| Closing section | "Final thoughts", 150 palabras | 100–200 | ✅ |
| CTA at end + URL valid | present, https://www.thebaseo.com/home-cash-buyers-seo/#hero (verificada) | audit CTA | ✅ |
| Audience check | investor-addressed en todo el cuerpo | investor | ✅ |
| Check 28-vs-42 | "42" no aparece | — | ✅ |
| Meta title / description / slug | 58 chars / 147 chars / 5 palabras | 50–60 / 140–160 / 3–6 | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (cada uno con su prompt)

- `[SCREENSHOT: Hero image...]` — sección: top del artículo — qué capturar: foto hero del inversionista recibiendo una llamada entrante junto a su truck — image prompt present: ✅ (Cat 4)
- `[SCREENSHOT: Google search results page for "sell my house fast tampa"...]` — sección: H3 estrategia 1 (SEO) — qué capturar: SERP con dominio cash-buyer inventado en #1 + Map Pack — image prompt present: ✅ (Cat 1)
- `[SCREENSHOT: A monthly lead report showing organic leads climbing from 3 to 28...]` — sección: H2 "Cold Calling vs. Inbound" — qué capturar: dashboard de leads 3→28 con CPL bajando a $161 — image prompt present: ✅ (Cat 3)
