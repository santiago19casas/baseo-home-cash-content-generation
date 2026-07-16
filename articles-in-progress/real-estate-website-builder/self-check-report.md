# Self-check report — Real Estate Website Builder

## Veredicto

**Estado**: ✅ Listo para revisión editorial
**Resumen**: 12 auto-fixes aplicados · 3 flags informativos (ninguno bloqueante).

El único problema auto-corregible fueron 12 em-dashes (—) que el drafter dejó en las dos listas de entrada (el "Quick verdict" y los criterios de evaluación). Se reemplazaron por dos puntos (contexto: introducen una definición), que es la corrección segura de la tabla del style guide. El resto del artículo pasó limpio: sin clichés prohibidos, sin agency-speak, sin garantías, sin precios ni paquetes de BASEO, sin em-dashes restantes, y sin contenido dirigido al vendedor motivado.

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| `Placester — best all-in-one...` | `Placester: best all-in-one...` | Quick verdict (list) |
| `AgentFire — best brand-first...` | `AgentFire: best brand-first...` | Quick verdict (list) |
| `Real Geeks — best for lead...` | `Real Geeks: best for lead...` | Quick verdict (list) |
| `Agent Image — best custom...` | `Agent Image: best custom...` | Quick verdict (list) |
| `Luxury Presence — best high-end...` | `Luxury Presence: best high-end...` | Quick verdict (list) |
| `Wix — best budget...` | `Wix: best budget...` | Quick verdict (list) |
| `Squarespace — best design polish...` | `Squarespace: best design polish...` | Quick verdict (list) |
| `Pricing — the true monthly total...` | `Pricing: the true monthly total...` | How we evaluated (list) |
| `Design quality and flexibility — how good...` | `Design quality and flexibility: how good...` | How we evaluated (list) |
| `Ease of use — how genuinely...` | `Ease of use: how genuinely...` | How we evaluated (list) |
| `Lead gen and CRM — forms...` | `Lead gen and CRM: forms...` | How we evaluated (list) |
| `SEO and AEO control — access...` | `SEO and AEO control: access...` | How we evaluated (list) |

## Flags (requieren criterio humano)

### Crítico (arreglar antes de publicar)
- Ninguno.

### Estilo/estructura (conviene revisar antes de publicar)
- ⚠️ **Conteo de palabras**: ~4,300 palabras de lectura tras añadir el detalle de precios verificados (16 jul 2026). Por encima del target 3,200–3,900; se dejó así por instrucción de Eddie ("dejalo asi"). Para el próximo artículo: respetar 3,900 como techo duro.

### Informativo
- ✅ **Precios verificados (16 jul 2026)** y colocados en fichas + tabla + sección de costo:
  - Placester: Essential $59/mo; +IDX $25/mo por MLS ($84/mo con IDX); Plus $79; Premier $129 ($154 con IDX); Team $199; concierge +$50/mo (Placester).
  - AgentFire: Spark $129/mo sin setup obligatorio; Express Setup $199; paquetes de diseño $700–$3,500 (AgentFire).
  - Real Geeks: Establish $299/mo (hasta 2 usuarios, +$250 onboarding); Grow $599; Expand $999; Conquer $1,599 (Real Geeks).
  - Agent Image: setup $2,000–$7,500+; hosting/soporte ~$99–$199/mo; IDX $50–$150/mo aparte (Agent Image).
  - Luxury Presence: ~$300–$1,500/mo + setup $3,500–$5,000, cotización a medida (AgentAdvice).
  - Wix: Light $17/mo anual ($24 mensual); Core $29; Business $39; Elite $159 (Wix).
  - Squarespace: Basic $16/mo anual; Core $23; Plus $39; Advanced $99 (Squarespace).
- ✅ **`%currentyear%` reemplazado por 2026** en el H1 (instrucción de Eddie).
- ✅ **Em-dashes: 0** en el artículo final (verificado por grep U+2014).
- ⚠️ **Amplitud de ICP**: artículo dirigido a agentes inmobiliarios, más amplio que el núcleo estricto de cash home buyers de `baseo-context`. Coherente con el corpus ya publicado de BASEO para realtors/agentes; CTA reencuadrado a "real estate businesses" (Deal Flow Bridge). Sin bloqueo de compliance.
- ⚠️ **Imágenes**: hay 2 placeholders `[SCREENSHOT]` con su prompt (hero + SERP de barrio). El outline también contemplaba un diagrama "sitio de 6 páginas vs 40 páginas de barrio"; opcional como tercera imagen si el editor quiere superar el mínimo.

## Counts (referencia rápida)

| Métrica | Valor | Target | Estado |
|---|---|---|---|
| Total word count (lectura) | ~4,300 | 3,200–3,900 | ⚠️ (exceso, aceptado por Eddie) |
| H2 keyword coverage | 9/11 con keyword o variante cercana (82%) | ≥ 60% | ✅ |
| BASEO mentions | 3 (contextuales) | Tangential 1–3 | ✅ |
| Internal links (thebaseo.com) | 7 (6 a recursos del blog + 1 CTA) | 6–10 | ✅ |
| External Tier 1/2 citations | 4 (HousingWire, Website Planet, NAR/get.realtor, Wix) | ≥ 3 | ✅ |
| First-party claims verbatim / external sourced | n/a first-party; externas sourced | todas | ✅ |
| Guarantee language | 0 (CTA declara "no rankings promised, no timelines") | 0 | ✅ |
| Package/price disclosures (BASEO) | 0 | 0 | ✅ |
| Images / lists / tables | I:2 L:5 T:1 | ≥ 2 / ≥ 1 / ≥ 1 | ✅ |
| `[SCREENSHOT]` placeholders | 2 (cada uno con su bloque PROMPT) | humano genera | ⚠️ info |
| Proprietary how-detail (BASEO) | 0 | 0 | ✅ |
| Featured snippet element | list (Quick verdict) + table (comparison) | presente | ✅ |
| Em-dashes (—) | 0 (12 corregidos) | 0 | ✅ |
| FAQPage schema | presente (JSON-LD, 6 Q&A) | requerido | ✅ |
| Closing/CTA al final | presente ("Get a real estate site that actually ranks" + audit CTA) | audit CTA, URL verificada | ✅ |
| CTA URL válida | https://www.thebaseo.com/contact/ | verificada en `baseo-context` | ✅ |

## Placeholders inventory (completar antes de publicar)

### Screenshot placeholders (cada uno con su prompt de imagen)
- `[SCREENSHOT: hero photo — agente revisando su sitio nuevo en laptop]` — sección: intro/hero — prompt presente: ✅ (Category 4, hero)
- `[SCREENSHOT: Google SERP de barrio con AI Overview + local pack]` — sección: H3 "Programmatic pages and AEO" / "Why templated sites plateau" — prompt presente: ✅ (Category 1, SERP)
