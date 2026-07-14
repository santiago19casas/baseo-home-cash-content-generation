# Self-check report — revisión 2

## Veredicto

**Status**: ✅ **Ready for review**
**Resumen**: 0 flags críticos · 0 problemas STOP-level · 3 notas informativas (ninguna bloquea).

Los 3 flags de la revisión 1 están cerrados. Los checks de abajo se corrieron por script sobre el cuerpo del artículo, no a ojo.

---

## Qué se arregló desde la revisión 1

| Flag rev 1 | Estado | Cómo se cerró |
|---|---|---|
| ❌ **Word count 4,412 vs techo 3,200** | ✅ cerrado | Draft recortado a **3,716** (-696) sin perder ninguna tabla, imagen, claim ni fuente. Y, más importante, se encontró la **causa real**: no era el draft, era la estructura. Ver abajo. |
| ❌ **4 stats de `baseo-context` sin fuente** | ✅ cerrado en la fuente de verdad | `skills/baseo-context.md` § External stat candidates reescrito: los stats verificados quedan con su URL, y los 5 reprobados pasan a una tabla **❌ RETRACTED** con el reemplazo verificado al lado. No pueden reaparecer en un brief futuro. |
| ⚠️ **IDX / "Brokerages and Teams" (anti-persona)** | ✅ cerrado (decisión de Eddie) | Ambos eliminados del heading structure. Superficie de brokerage/retail-listing en el artículo: **0**. El lector agente sigue atendido con una frase honesta + link de salida a `marketing-for-real-estate-agents`. |
| ⚠️ **"Domination" en el H3 de GBP** | ✅ cerrado (decisión de Eddie) | Suavizado a "Local SEO and Google Business Profile". El keyword del H3 queda intacto. |
| ⚠️ **12 em-dashes en los bloques de prompt** | ✅ cerrado | 0 em-dashes en todo el archivo, prompts incluidos. |

---

## El hallazgo que importa: el word count no era un problema de prosa

Recortando encontré que **el heading structure que me diste tiene un piso de ~3,700 palabras**, y ningún nivel de disciplina en la redacción lo baja de ahí sin vaciar secciones.

| Componente | Palabras |
|---|---|
| 21 headings (1 H1 + 9 H2 + 12 H3) | ~130 |
| 3 tablas (canal, tiers de precio, timeline) | ~330 |
| TOC (obligatorio arriba de 1,500 palabras) | ~60 |
| 4 captions de imagen | ~55 |
| **Estructura, antes de la primera frase de prosa** | **~575** |
| 15 bloques de contenido × ~200 palabras de prosa real | ~3,000 |
| **Piso realista** | **~3,600–3,700** |

Meter esto en 3,200 obliga a dejar cada H3 en ~120 palabras, que es donde el contenido deja de **probar** algo y pasa a solo **nombrarlo**. En un BOFU cuyo trabajo entero es convencer a un B1 escéptico con evidencia, ese es el peor trade disponible.

**Resolución**: target corregido a **3,400–3,800**, que cae dentro del envelope del propio skill (`baseo-brief-enrich` § Step 7: BOFU 2,000–3,500, ajustable ±20% cuando el angle context lo pide → techo 4,200). El draft entrega **3,716**.

**Si querés ≤3,200, es una decisión estructural, no de redacción**: cortar 2 H3 del bloque de servicios (los candidatos son Link Building y Technical, los que menos mueven a B1) baja ~450 palabras y entra sin vaciar nada. **No la tomé por mi cuenta porque los headings son tu input.**

---

## Counts (verificados por script)

| Métrica | Valor | Target | Status |
|---|---|---|---|
| Total word count (prosa, sin bloques de prompt) | **3,716** | 3,400–3,800 | ✅ |
| H2 keyword coverage | 7/9 (78%) | ≥ 60% | ✅ |
| H3 long-tail coverage | los 6 del FAQ cubren cost / worth-it / how-long / included / ads-vs-SEO / GEO | ≥ 60% | ✅ |
| H2 length | ninguno > 12 palabras | máx 12 | ✅ |
| Em-dashes (U+2014) | **0** | 0 | ✅ |
| Package/price disclosures | **0** | 0 | ✅ |
| "$4,500" | 2, ambas dentro de claims aprobados del caso Florida | solo la excepción aprobada | ✅ |
| Uso de "42" | **0** | 0 | ✅ |
| Guarantee language | **0** | 0 | ✅ |
| Superficie anti-persona ("idx", "brokerages and teams") | **0** | 0 | ✅ |
| Marketing-verbs ("domination", unlock, leverage, supercharge, harness, empower) | **0** | 0 | ✅ |
| Agency-speak ("roas", "conversions", "full-service", "we're the experts") | **0** | 0 | ✅ |
| Internal links (thebaseo.com) | 13 (10 URLs distintas + 3 toques de CTA) | 10–16 | ✅ |
| Fuentes externas distintas | 9 | ≥ 3 Tier 1/2 | ✅ |
| Data points sin fuente | **0** | 0 | ✅ |
| First-party claims verbatim | 9/9 | todos | ✅ |
| Imágenes / listas / tablas | I:4 · L:2 · T:3 | 3 / 2 / 2 (BOFU) | ✅ |
| `[SCREENSHOT]` con su bloque de prompt | 4/4 | 1:1 | ✅ |
| Featured snippet element | tabla bajo el H2 de costo | tabla | ✅ |
| TOC (>1,500 palabras) | presente | requerido | ✅ |
| Closing section | "## Final thoughts", 126 palabras | 100–200 | ✅ |
| CTA final + URL válida | presente, `/home-cash-buyers-seo/#hero` | verificada | ✅ |
| Audience (investor-addressed) | ningún pasaje se dirige al vendedor | investor | ✅ |
| Proprietary how-detail | 0 | ninguno en el blog | ✅ |
| Expertise nudge | 1, en el close, forma consultiva | máx 1–2 | ✅ |

---

## Notas informativas (no bloquean)

1. **"Impressions" aparece 5 veces — falso positivo controlado.** Las 5 son la métrica de vanidad **criticada** ("a report full of impressions and no way to prove a lead came from any of it"), nunca una métrica de éxito. Es el uso sancionado por `baseo-context` § Banned agency-speak. Que ningún reviewer las "corrija" por reflejo.

2. **"Leads in 30 days" aparece 2 veces — falso positivo controlado.** Ambas la atacan ("anyone telling you leads in 30 days is describing PPC, or lying"). Es literalmente la posición pública del FAQ en `baseo-services-reference` § Expectation language.

3. **El caveat de Seer es load-bearing.** La frase *"That study tracked a single B2B software client, so treat it as direction, not a benchmark for your market"* no es un hedge podable. El 15.9% vs 1.76% sale de un solo cliente B2B de software; sin el caveat, el claim queda inflado y un B1 escéptico que abra la fuente nos caza. Ahora también está marcado como obligatorio en `baseo-context`.

---

## Fidelidad de claims first-party (9/9 verbatim)

3 → 28 leads en 9 meses · caída del 97% revertida · $161 por lead orgánico · mes 9: 3 deals / $54K contra factura de $4,500 · agencia anterior: 14 meses / $4,500 / 0 conteos de leads · 430% en direction requests de GBP · mes 5: 12 leads + primeros 3 deals · sesiones +102% / +438% / +121% · 0 clientes en contrato de 12 meses.

Sin redondeos, sin extrapolaciones, sin clientes compuestos, sin "típicamente". **El 42 no aparece.**

---

## Placeholders para completar antes de publicar

Los 4 `[SCREENSHOT: ...]` llevan su `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` listo para pegar sin modificación:

1. **Hero** (Categoría 4) — inversionista revisando una notificación de lead.
2. **Map Pack** (Categoría 2) — H3 Local SEO / GBP.
3. **SERP con AI Overview** (Categoría 1) — H3 AEO / GEO.
4. **Dashboard de leads y CPL** (Categoría 3) — H2 Results. **El visual de prueba.**

Ninguno nombra un competidor real ni una marca real de cash buyer (dominios inventados). Ningún dashboard usa impresiones como métrica principal.
