# Self-check report — How to Get Motivated Seller Leads

> Reporte operativo en español (política de idioma `baseo-context`). Las citas textuales del artículo y el copy sugerido para insertar quedan en inglés.

## Verdict

**Status**: ✅ Ready for review (0 flags críticos de compliance)
**Summary**: 2 auto-fixes aplicados · 0 flags críticos · 5 notas informativas (una requiere confirmación editorial).

El artículo pasa todos los checks deterministas: sin garantías, sin precios/paquetes BASEO, claims first-party verbatim de la Approved claims library, sin fabricación de servicios, sin em-dashes en el cuerpo, snippet + FAQ presentes, CTA de auditoría con URL verificada. La única decisión que necesita firma editorial no es un fallo de compliance: es el **reencuadre de anti-persona** (agente → investor) que Eddie ya aprobó.

## Auto-fixes applied

| Original | Replacement | Location |
|---|---|---|
| `No fluff, no "trust the process." Just what works…` | `No fluff, no filler. Just what works…` | Intro — eliminado el trust-killer literal "trust the process" (§ Banned trust-killers) |
| `header "Organic Lead Report — Cash Buyer"` | `header "Organic Lead Report: Cash Buyer"` | Bloque PROMPT del dashboard — em-dash → dos puntos para que la imagen generada no renderice un em-dash |

*Nota: los `[SCREENSHOT: ...]` y sus `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` se conservan intactos (van al draft de WordPress; el publisher genera la imagen y reemplaza ambos bloques).*

## Flags (require human attention)

### Critical (must fix before review)

- Ninguno. ✅

### Style / structure (should fix before review)

- Ninguno bloqueante. La cobertura de keyword en H2 (67%), longitud de H2, ritmo de párrafo, densidad de enlaces y mínimos visuales cumplen.

### Informational

- ⚠️ **Anti-persona reframe (requiere confirmación editorial).** El input original apuntaba a *real estate agents* (anti-persona en `baseo-context`). Se reencuadró todo el pilar hacia el cash buyer / investor (keyword primaria, H1, y varias secciones), según la decisión de Eddie. Sustituciones de sección: "Host/Borrow Open Houses" → **Driving for Dollars and Local Networking**; "Lead-Gen Platforms/Portals (Zillow Premier Agent)" → **Motivated-Seller Lead Lists and Portals**; "Pay-at-Closing / agent networks (UpNest, Agent Pronto)" → **Wholesale and JV Referral Partnerships**; stats de agente (~38% NAR agent-referral, ~73% agents-have-website / ~51% buyers-use-internet) → stats relevantes al investor. **Confirmar que el calendario editorial quería un pilar investor y no captura del keyword de agente.**
- ⚠️ **Word count** ~4,050 palabras de prosa (el script cuenta ~4,650 incluyendo TOC, captions y celdas de tabla). En el rango del brief (3,600–4,600), pegado al techo. Aceptable para un pilar de este tamaño; recortar 5–10% si se quiere más aire.
- ⚠️ **4 placeholders de imagen** (`[SCREENSHOT: ...]`) — cada uno con su bloque `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` listo para pegar. El publisher debe generar las 4 imágenes antes de publicar. Inventario abajo.
- ⚠️ **FAQ schema**: el bloque FAQ (7 preguntas, respuestas de 40–55 palabras) necesita FAQPage JSON-LD; lo agrega el publisher (Astro lo maneja en render, según `baseo-wp-upload`).
- ⚠️ **Discrepancia de claim**: el corpus dice "3 → 42"; el artículo estandariza en **3 → 28** (política de claims). Confirmar con Eddie si prefiere 42.

## Counts (quick reference)

| Metric | Value | Target | Status |
|---|---|---|---|
| Total word count (prosa) | ~4,050 (script ~4,650 con TOC/tablas) | 3,600–4,600 | ✅ |
| H2 keyword coverage | 8/12 (67%) | ≥ 60% | ✅ |
| BASEO mentions | 5–6 promocionales (+4 "BASEO client data") | 4–8 (MOFU) | ✅ |
| Internal links (thebaseo.com) | 2 | 2–4 (corpus de 1 fila) | ✅ |
| External Tier 1/2/3 citations | 8 fuentes / 11 enlaces | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | ✅ / ✅ | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Em-dashes (cuerpo) | 0 | 0 | ✅ |
| Images / lists / tables | I:4 · L:5 · T:2 | ≥3 / ≥3 / ≥2 | ✅ |
| `[SCREENSHOT]` placeholders | 4 (cada uno con PROMPT) | human fills | ⚠️ info |
| Proprietary how-detail | 0 | none on blog | ✅ |
| Featured snippet element | paragraph + table + FAQ | present | ✅ |
| TOC (>1,500 words) | present | required | ✅ |
| Closing section | "Final thoughts" · 130 words | 100–200 | ✅ |
| CTA at end + URL valid | present · `/home-cash-buyers-seo/#hero` | audit CTA, verified | ✅ |
| Audience (investor-addressed) | sí | investor | ✅ |
| Service fabrication (out-of-scope) | 0 (SOI/D4D/CRM/mail = educación) | 0 | ✅ |

## Placeholders inventory (for human completion before publish)

### Screenshot placeholders (cada uno con su image prompt)

- `[SCREENSHOT: hero photográfico — investor al teléfono junto a su troca frente a una casa modesta]` — sección: Intro — image prompt present: ✅ (Category 4, hero)
- `[SCREENSHOT: diagrama de los 3 buckets — Free / Paid / Referral con tags de speed, cost, quality]` — sección: H2 "3 Lead Buckets" — image prompt present: ✅ (Category 5, diagram)
- `[SCREENSHOT: SERP de Google para "sell my house fast tampa" con cash-buyer en #1, map pack y AI Overview]` — sección: H3 "Local SEO and a Content-Driven Website" — image prompt present: ✅ (Category 1, SERP)
- `[SCREENSHOT: dashboard de leads — motivated-seller leads subiendo 3→28 en 9 meses, CPL bajando a $161]` — sección: H3 "Local SEO and a Content-Driven Website" — image prompt present: ✅ (Category 3, dashboard)

### Otras acciones del publisher

- Generar las 4 imágenes desde los bloques PROMPT y reemplazar ambos bloques en el editor de WP.
- Agregar FAQPage JSON-LD al bloque FAQ.
- Fijar alt text + nombres de archivo SEO al insertar cada imagen (caption ya provisto bajo cada placeholder).
