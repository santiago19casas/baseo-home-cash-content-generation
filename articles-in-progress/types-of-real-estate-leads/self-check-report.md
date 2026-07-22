# Self-check report — Types of Real Estate Leads

## Veredicto

**Status**: ✅ Listo para revisión (Ready for review)
**Resumen**: 2 auto-fixes aplicados · 2 flags informativos (ninguno crítico).

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| "Hero image — a real estate investor…" | "Hero image: a real estate investor…" | Bloque `[SCREENSHOT: ...]` del hero (guion largo → dos puntos) |
| "Diagram — a two-axis chart…" | "Diagram: a two-axis chart…" | Bloque `[SCREENSHOT: ...]` del diagrama (guion largo → dos puntos) |

Nota: los guiones largos (—) estaban dentro de descripciones `[SCREENSHOT: ...]`, no en la prosa del artículo. Se corrigieron igual para mantener la regla de cero guiones largos en todo el archivo. El cuerpo del artículo ya no tiene ningún guion largo; los guiones cortos (–) en rangos numéricos ($100–$300, 15–25%) se conservan (permitidos).

## Flags (requieren atención humana)

### Crítico (arreglar antes de publicar)

Ninguno.

### Estilo / estructura (recomendable antes de revisión)

Ninguno.

### Informativo

- ⚠️ **Claim "inbound ~3x ROI vs outbound"**: se suavizó a direccional ("varias veces mejor / inbound's return is several times outbound's") porque la fuente exacta (Apex Lead Source / CIO Bulletin) no se pudo confirmar en la investigación. El punto se ancla en la brecha de conversión sí verificada (inbound ~10–15% vs outbound frío ~1–3%, biscred). Si Eddie tiene esa fuente, se puede endurecer la cifra a "3x".
- ⚠️ **Velocidad de respuesta (speed-to-lead)**: la sección de Temperatura hace el punto de forma cualitativa. El dato "responder en 5 minutos = 900% más conversión" está RETRACTADO en baseo-context y NO se usó. Si aparece una fuente viva, se puede añadir una cifra.
- ℹ️ **3 placeholders `[SCREENSHOT: ...]`** con su bloque `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` correspondiente: hero, SERP de "sell my house fast charlotte", y diagrama costo-vs-conversión. El publicador genera cada imagen desde el prompt y reemplaza ambos bloques en WordPress.

## Counts (referencia rápida)

| Métrica | Valor | Objetivo | Status |
|---|---|---|---|
| Total word count (prosa del artículo) | ~2,900 | 2,600–3,200 | ✅ |
| H2 keyword coverage | 9/12 body H2s (75%) | ≥ 60% | ✅ |
| BASEO mentions (marca, en prosa) | 2 | 1–3 (Tangencial) | ✅ |
| Internal links (thebaseo.com) | 12 (incl. CTA) | 8–12 | ✅ |
| External Tier 1/2 citations | 9 fuentes | ≥ 3 | ✅ |
| Claims: first-party verbatim / external sourced | n/a first-party · todas las externas con fuente | all | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 (solo rangos de mercado) | 0 | ✅ |
| Images / lists / tables | I:3 L:2 T:2 | mín. 3 / 2 / 2 | ✅ |
| `[SCREENSHOT]` placeholders | 3 (cada uno con su prompt) | humano completa | ⚠️ info |
| Proprietary how-detail | 0 | ninguno en el blog | ✅ |
| Featured snippet element | tabla (presente) | presente | ✅ |
| TOC (>1,500 palabras) | presente | por regla | ✅ |
| Closing section | "Final thoughts" (~130 palabras) | 100–200 | ✅ |
| CTA al final + URL válida | presente, audit hero URL verificada | audit CTA | ✅ |
| Em-dashes (—) en cuerpo | 0 | 0 | ✅ |
| Audiencia (dirigida al inversor) | ✅ nunca al vendedor motivado | inversor | ✅ |

## Chequeos clave detallados

- **Fabricación de servicios**: ✅ ninguna. Cold calling y direct mail se describen como canales de leads, nunca como algo que BASEO ofrezca. AEO, city pages y seller-situation content se mencionan a nivel WHAT/WHY (qué y por qué), sin herramientas, conteos ni workflow.
- **Fidelidad de claims first-party**: ✅ no se usó ningún número propio de BASEO (pieza Tangencial). Sin riesgo de 28-vs-42.
- **Audiencia**: ✅ toda la pieza habla al inversor / cash buyer. Ninguna sección se dirige a un vendedor motivado en segunda persona.
- **Snippet objetivo**: ✅ tabla de 8 filas (fuente | costo por lead | conversión | ideal para) bajo el H2 "Types of Real Estate Leads Ranked by Cost & Conversion".

## Placeholders inventory (para completar antes de publicar)

### Screenshot placeholders (cada uno con su prompt de imagen)

- `[SCREENSHOT: Hero — inversor revisando notificación de lead junto a su camioneta]` — sección: intro/hero — prompt presente: ✅ (Categoría 4)
- `[SCREENSHOT: Diagram — costo vs conversión por fuente de leads]` — sección: H2 "Ranked by Cost & Conversion" — prompt presente: ✅ (Categoría 5)
- `[SCREENSHOT: Google SERP "sell my house fast charlotte" con AI Overview + Map Pack]` — sección: H2 "Get More High-Intent Leads…" — prompt presente: ✅ (Categoría 1)
