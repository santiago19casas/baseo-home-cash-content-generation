# Self-check report

## Verdict

**Status**: ✅ Ready for review
**Summary**: 0 auto-fixes aplicados · 0 flags STOP-level · 2 notas informativas.

**Revisión 2 (post-expansión):** a pedido de Eddie se hicieron dos cambios y se resolvieron los dos flags de estilo de la revisión 1:
1. **Expansión a target** — el artículo pasó de ~2,000 a **~3,250 palabras** (dentro de 2,800–3,400). Se agregaron ejemplos concretos investor-flavored a los 5 pasos, Capture/Score, Nurturing, Day-to-Day, Personalize y Mistakes, sin tocar compliance. Se añadió TOC (bulleted H2 anchor list) por superar las 1,500 palabras.
2. **Títulos re-apuntados de "agents" a "investors"** — "Why Investors Who Use a CRM Earn More", FAQ "Do real estate investors really need a CRM?", FAQ "What's the best CRM for real estate investors?". El dato de ingresos sigue citando "agents" porque así lo mide el estudio (LLCBuddy), pero el framing del lector es investor.

El draft sigue limpio: sin clichés, sin agency-speak, sin em-dashes, sin guarantees, sin disclosure de paquetes/precios, sin fabricación de servicio. Quedan solo 2 notas informativas (abajo).

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| (ninguno) | — | El draft no contenía frases prohibidas, agency-speak, H2 con verbos de marketing, disclosures de precio ni em-dashes. |

## Flags (require human attention)

### Critical (must fix before review)

- (ninguno STOP-level). No hay claim inventado, no hay servicio fuera de scope atribuido a BASEO, no hay contenido dirigido al seller, no hay guarantee, el snippet element existe y el CTA está presente con URL verificada.

### Style/structure (should fix before review)

- ✅ **Conteo de palabras** — RESUELTO en revisión 2. Ahora ~3,250 palabras, dentro de 2,800–3,400.

- ⚠️ **Cobertura de keyword en H2 (~5/11 ≈ 45%)** sigue por debajo del 60% objetivo. Causa: los títulos H2 son de workflow ("How to Nurture Leads…", "How to Manage Your Pipeline…", "How to Personalize…") y no llevan "CRM". El re-apunte agents→investors no cambia esto. Si Eddie quiere subir cobertura, se pueden ajustar 2–3 títulos (ej. "How to Manage Your Real Estate CRM Pipeline Day to Day") sin cambiar el sentido. Bajo riesgo: la keyword está cubierta en H1, 5 H2, subtítulos y cuerpo.

### Informational

- ✅ **Tensión de audiencia (agents vs investors)** — RESUELTO en revisión 2. Títulos re-apuntados a "investors". El único "agents" que queda es dentro del dato citado (60%/65% de *agents* por ingreso), que se mantiene así porque es lo que mide la fuente LLCBuddy.

- ⚠️ **Dos stats del brief se cayeron por falta de fuente**: "93.7% de investors no hacen follow-up" y "multi-step forms convierten 86% mejor" no se encontraron con fuente creíble. El de follow-up se reemplazó por el par verificado (80% de las ventas cierran tras el 5º contacto; 48% nunca hace follow-up — ProfitOutreach). El de forms se omitió.

- ⚠️ **`[SCREENSHOT]` placeholders (3)**: cada uno tiene su bloque `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]`. El publisher debe generar las 3 imágenes y reemplazar ambos bloques en WordPress.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count | ~3,250 | 2,800–3,400 | ✅ |
| H2 keyword coverage | ~5/11 (45%) | ≥ 60% | ⚠️ (H2 de workflow sin "CRM") |
| BASEO mentions | 2 | 1–3 (Tangential) | ✅ |
| Internal links (thebaseo.com) | 4 (3 URLs) | 4–8 | ✅ |
| External Tier 1/2 citations | 4 fuentes (LLCBuddy, AgentZap, ProfitOutreach, Seer) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | todos con fuente | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ (rango CRM $25–$500 es dato de mercado, no precio BASEO) |
| Images / lists / tables | I:3 L:2 T:1 | ≥3 / ≥2 / ≥1 | ✅ |
| `[SCREENSHOT]` placeholders | 3 | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | present (list, bajo "How to Set Up… in 5 Steps") | present | ✅ |
| TOC | present (bulleted H2 anchor list, tras intro) | requerido >1,500 palabras | ✅ |
| Closing section | "Final thoughts", ~130 palabras | 100–200 | ✅ |
| CTA at end + URL valid | present, https://www.thebaseo.com/home-cash-buyers-seo/#hero | audit CTA, verified URL | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (each should have a matching image prompt)

- `[SCREENSHOT: Hero — investor at desk reviewing a lead notification]` — section: top (hero) — image prompt present: ✅
- `[SCREENSHOT: Horizontal 7-stage pipeline diagram]` — section: H2 "How to Set Up Your Real Estate CRM in 5 Steps" — image prompt present: ✅
- `[SCREENSHOT: CRM lead/pipeline dashboard, lead-focused metrics]` — section: H3 "Step 5: Define the KPIs You'll Track" — image prompt present: ✅
