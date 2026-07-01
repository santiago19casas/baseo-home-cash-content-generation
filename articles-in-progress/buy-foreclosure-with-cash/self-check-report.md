# Self-check report

## Verdict

**Status**: ✅ Ready for review
**Summary**: 1 auto-fix aplicado · 0 flags críticos · 4 notas informativas.

El draft pasa la revisión de compliance determinística. La única corrección segura fue reemplazar una palabra ("Leverage") que dispara el escáner de verbos de marketing, aunque aquí se usaba como sustantivo financiero legítimo. No hay lenguaje de garantía, ni divulgación de precios/paquetes, ni em-dashes, ni claims de primera parte inventados, ni contenido dirigido al vendedor motivado.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| "Cash wins on speed and it's the only way into most auctions. Leverage wins on deal count." | "Cash wins on speed and it's the only way into most auctions. Financing wins on deal count." | H2 "Cash vs. Financing: Which Is Right for You?" |

Nota: "leverage" estaba como sustantivo financiero (uso permitido por el style guide), pero se cambió a "Financing" para (a) limpiar el escáner del Check 1b y (b) mantener consistencia con el vocabulario del resto del artículo. No cambia el significado.

## Flags (require human attention)

### Critical (must fix before review)

Ninguno.

### Style/structure (should fix before review)

Ninguno.

### Informational

- ⚠️ **Reframe off-domain (decisión de editor ya tomada)**: el tema es financiamiento de compra de foreclosures, fuera del dominio de marketing SEO/AEO/PPC de BASEO. Corriendo el pipeline en estricto, `baseo-brief-enrich` habría hecho STOP en Branch 5 / audience gate. Eddie eligió explícitamente **"Proceed, reframe for investors"**, así que se trató como brief **Tangencial**, escrito al operador cash-buyer (foreclosures como canal de adquisición), con BASEO solo contextual y CTA suave al audit. Si el destino real era una página de sitio de cliente (dirigida al vendedor), el enfoque y el CTA cambiarían. Confirmar antes de publicar en el blog de BASEO.
- ⚠️ **CTA no es la última línea**: la estructura de headings de Eddie coloca el bloque de FAQ **después** de la sección de CTA. El CTA al audit está presente y cerca del final, pero el bloque FAQ lo sigue. Es la estructura pedida; se conserva tal cual.
- ⚠️ **Dos H2 sin la keyword literal**: "The Short Answer: No, Not Always" y "Common Mistakes to Avoid" no llevan la keyword literal. Ambos están on-topic y el primero aloja el featured snippet. La estructura de headings viene fija de Eddie; no se reescribió. Cobertura global de keyword en H2 se mantiene ≥60%.
- ⚠️ **Caveat owner-occupant (preservado a propósito)**: el draft afirma que FHA y 203(k) son programas de residencia principal (no para flips/rentas puras). Es correcto y es una señal de expertise; NO tocar. Verificar que ediciones posteriores no lo borren.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (readable prose) | 2,391 | 1,900–2,500 | ✅ |
| H2 keyword coverage | 6/8 H2 de contenido (75%) | ≥ 60% | ✅ |
| BASEO mentions | 2 (1 marca explícita "at BASEO" + 1 link contextual al pilar) | Tangencial 1–3 | ✅ |
| Internal links (thebaseo.com) | 2 (pilar en Cash vs. Financing + audit URL en CTA) | 2–3 | ✅ |
| External Tier 1/2 citations | 5 fuentes distintas (Policygenius, Rocket Mortgage ×2, Auction.com, Philadelphia Sheriff, Brevard Clerk) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | Sin claims de primera parte; todo external con fuente | all | ✅ |
| Guarantee language | 0 (los "30 days" son plazos fácticos de préstamo/subasta, no promesas) | 0 | ✅ |
| Package/price disclosures | 0 (cifras en dólares son datos de préstamo/mercado, no precios de BASEO) | 0 | ✅ |
| Em-dashes (—) | 0 (solo en-dashes en rangos: 24–72, 30–45) | 0 | ✅ |
| Images / lists / tables | I:2 L:1 T:1 | ≥ 2 / ≥ 1 / ≥ 1 (TOFU) | ✅ |
| `[SCREENSHOT]` placeholders | 2 (cada uno con su bloque de PROMPT) | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | present (paragraph, 51 words, bajo "The Short Answer") | present | ✅ |
| TOC | present (>1,500 words) | per rule | ✅ |
| Closing section | "The Bottom Line" (~85 words) + CTA section (~90) ≈ 175 combinados | 100–200 | ✅ |
| CTA at end + URL valid | present, https://www.thebaseo.com/home-cash-buyers-seo/#hero (verificada) | audit CTA, verified URL | ✅ |
| First-party claim "42" check | ninguna aparición de "42" | ninguna | ✅ |
| Audience (investor-addressed) | ✅ sin pasajes dirigidos al vendedor | investor | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (each should have a matching image prompt)

- `[SCREENSHOT: Hero — investor at a desk reviewing a foreclosure listing with loan paperwork and a cashier's check]` — section: top / "The Short Answer" — image prompt present: ✅ (Category 4, hero, 16:9)
- `[SCREENSHOT: Three-stage foreclosure diagram — Pre-foreclosure/Short sale → financeable · REO → financeable · Auction → cash/certified funds]` — section: "Why the Answer Depends on the Foreclosure Stage" — image prompt present: ✅ (Category 5, diagram, 16:9)

## Notas para el escritor

- El conteo real de palabras (2,391) quedó **dentro** del target; la estimación de "~1,650" en las Draft notes del drafter era baja y se corrige aquí (el self-check verifica de forma independiente).
- Antes de publicar: generar las 2 imágenes desde sus bloques de PROMPT y añadir FAQ schema al bloque de preguntas.
- Recordatorio de la decisión de Eddie: pieza Tangencial reframeada para inversionistas. Si se quería una pieza para sitio de cliente (dirigida a vendedores con CTA de "cash offer"), hay que rehacer audiencia y CTA.
