# Self-check report

## Verdict

**Status**: ✅ Ready for review
**Summary**: 1 auto-fix aplicado · 0 flags críticos · 4 flags informativos.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| "Organic Seller Leads — Monthly Report" (em-dash) | "Organic Seller Leads: Monthly Report" | Prompt block de la imagen 3, H2 "A CRM Won't Fix an Empty Pipeline" |

## Flags (require human attention)

### Critical (must fix before review)

- Ninguno.

### Style/structure (should fix before review)

- Ninguno.

### Informational

- ⚠️ **Intro de ~95 palabras**: la guía de estilo pide <80, pero el input del editor pedía explícitamente 80–120. Se respetó el input. Si se quiere cumplir la guía, recortar la segunda oración del párrafo 2.
- ✅ **Precios corroborados en segunda ronda (fetch directo a páginas de vendors, 2026-07-16)**:
  - **Carrot CRM (InvestorFuse)**: página actual muestra Free $0 / Essential $69 / Scale $179 / Team $349, sin setup fees. La cifra "$69" del brief de Eddie era correcta; los $147–$377 eran pricing viejo de InvestorFuse. Artículo actualizado.
  - **FreedomSoft**: Start $197/mes (~$147 con billing anual), tiers hasta $497. Artículo actualizado.
  - **REI BlackBook**: Solo $149 / Team $299 / Executive $799 (incluye add-ons de AI/ads/listas que cuestan $199–$299 c/u en tiers bajos). Confirmado y precisado en el artículo.
  - **DealMachine**: Starter $119/mes ($99 anual), Pro $179 ($149), Pro Plus $279 ($232). Coincide con lo publicado ("~$99–$232 anual, $119–$279 mensual"). ✅
  - **REsimpli**: $149/$299/$599 + trial de 30 días, corroborado vía G2/TrustRadius/título de la página oficial. ✅
  - **GoHighLevel** $97–$297 y **Pipedrive** desde $14/usuario/mes anual: confirmados. ✅
  - Tabla resumen y tabla de tiers de pricing ajustadas a las cifras verificadas.
- ⚠️ **`## Final thoughts` agregado**: la estructura del input terminaba en FAQs; se agregó el cierre requerido por la guía de estilo (145 palabras, CTA de auditoría). El editor puede cortarlo.
- ⚠️ **Estimaciones sin fuente dura, explícitamente hedgeadas**: Left Main ($300–$1,000+), Podio + add-ons ($25–$50), tools externas de GoHighLevel ($300–$500) y setup fees ($500–$2,500) vienen del guideline del editor y se publican con lenguaje de estimación ("expect", "roughly", "some platforms"). Si review lo prefiere, se pueden sourcear o recortar.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (cuerpo, sin prompt blocks) | ~3,250 | 2,800–3,400 | ✅ |
| H2 keyword coverage | 6/9 (67%) | ≥ 60% | ✅ |
| H3 long-tail coverage | 10/16 con variaciones del cluster/PAA | ≥ 60% combinado | ✅ |
| BASEO mentions (nombradas en cuerpo) | 2 (+1 atribución "BASEO client data") | Tangential 1–3 | ✅ |
| Internal links (thebaseo.com) | 11 (10 destinos únicos) | 10–15 | ✅ |
| External Tier 1/2 citations | 7 (páginas de pricing de vendors) | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | all | ✅ |
| Check 28-vs-42 | sin usos de "42" | 0 | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures (BASEO) | 0 | 0 | ✅ |
| Em-dashes | 0 (1 corregido) | 0 | ✅ |
| Banned clichés / agency-speak / trust-killers | 0 | <3 | ✅ |
| Images / lists / tables | I:3 L:4 T:2 | ≥3 / ≥2 / ≥2 | ✅ |
| `[SCREENSHOT]` placeholders | 3, cada uno con su prompt block | human fills | ⚠️ info |
| Proprietary how-detail | 0 (BASEO solo a nivel WHAT: "SEO que compone + PPC que produce ya") | none | ✅ |
| Featured snippet element | tabla presente bajo "The 10 Best CRMs for Real Estate Investors" | table | ✅ |
| TOC | presente (>1,500 palabras) | requerido | ✅ |
| Closing section | "Final thoughts", ~145 palabras | 100–200 | ✅ |
| CTA at end + URL valid | presente, `/home-cash-buyers-seo/#hero` (verificada) | audit CTA | ✅ |
| Audiencia | investor-addressed en todo el cuerpo | sin pasajes a sellers | ✅ |
| FAQ answers | verbatim del editor (6/6, 40–55 palabras) | verbatim | ✅ |
| %currentyear% | reemplazado por 2026 (H1 y cuerpo) | sin placeholders | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (cada uno con su prompt block ✅)

- `[SCREENSHOT: Hero image...]` — sección: top del artículo — capturar/generar: foto hero del inversionista revisando leads (Cat 4) — image prompt present: ✅
- `[SCREENSHOT: Diagram showing the two layers of AI...]` — sección: H2 "ChatGPT for Real Estate Investors" — diagrama de dos capas de AI (Cat 5) — image prompt present: ✅
- `[SCREENSHOT: Lead report showing organic leads climbing...]` — sección: H2 "A CRM Won't Fix an Empty Pipeline" — dashboard de leads 3→28 y CPL bajando a $161 (Cat 3) — image prompt present: ✅

### Nota adicional para el publisher

- Implementar la sección FAQs con schema FAQPage (Astro lo renderiza en build; la nota está en el cuerpo como "Publisher note" y debe retirarse antes de publicar si no aplica).
- Meta title propuesto: "CRM for Real Estate Investors: 10 Best Tools (2026)" (52 chars). Meta description: "The 10 best CRMs for real estate investors in 2026: real pricing, verdicts by investor type, and where ChatGPT fits (and where it can't). Compare here." (152 chars). Slug: `crm-for-real-estate-investors`.
