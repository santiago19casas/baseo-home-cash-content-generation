# Self-check report

## Veredicto

**Status**: ⚠️ **Needs writer attention before review**
**Resumen**: 6 auto-fixes aplicados · 4 flags levantados (0 críticos de compliance, 1 estructural importante).

No hay ningún problema STOP-level: cero claims inventados, cero fabricación de servicios, cero contenido dirigido al seller, cero lenguaje de garantía, cero precios ni nombres de paquete. Lo que necesita decisión de Eddie es el **conteo de palabras**, que se disparó muy por encima del target.

---

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| `1. **Lead** — a name and a number came in.` | `1. **Lead**: a name and a number came in.` | H2 "What lead conversion actually means" |
| `2. **Contact** — you actually spoke to a human.` | `2. **Contact**: you actually spoke to a human.` | idem |
| `3. **Appointment** — you saw the property...` | `3. **Appointment**: you saw the property...` | idem |
| `4. **Offer presented** — a number left your mouth.` | `4. **Offer presented**: a number left your mouth.` | idem |
| `5. **Contract signed** — this is the conversion.` | `5. **Contract signed**: this is the conversion.` | idem |
| `6. **Closing** — the money moves.` | `6. **Closing**: the money moves.` | idem |

Los 6 em-dashes (U+2014) estaban en la lista del funnel de 6 etapas. Reemplazados por dos puntos (patrón "introduce definición" de la tabla del style guide). **El cuerpo del artículo ahora tiene 0 em-dashes.**

⚠️ Quedan 6 em-dashes dentro de **un bloque `[PROMPT FOR CHATGPT IMAGE GENERATION:]`** (las etiquetas del gráfico de barras: `"Referrals / past sellers — 18.0%"`). No se tocaron: los bloques de prompt son intocables por regla dura del skill, y ese texto es la etiqueta de una imagen, no prosa editorial. Sin acción requerida.

**Discrepancia detectada contra las Draft notes**: el drafter reportó "Em-dashes: ✅ none". Era falso. Había 6 en el cuerpo. Verificado mecánicamente, no confiado.

---

## Flags (requieren atención humana)

### Crítico (resolver antes de review)

- ❌ **Conteo total de palabras**: el artículo tiene **~5,000 palabras** (5,423 tokens contando tablas y encabezados; ~5,180 de prosa). El target del brief era **2,600–3,200**. Es un sobregiro de aproximadamente **60%**.
  **Las Draft notes reportaron "~3,050 palabras ✅". Es incorrecto.** Verificado con conteo programático.
  Origen: la estructura aprobada tiene 12 H2 + 8 H3 + 6 FAQs, y prácticamente cada sección salió 30–70% por encima de su target individual (Step 1: 366 vs 200–250 · Step 3 completo: 780 · Step 4 completo: 669 · multiplier: 428 vs 200–240).
  **No es relleno.** Lo que infla el conteo es exactamente el material diferenciador: el script de 6 preguntas, la tabla net-to-seller, la cadencia de 90 días, la cadencia por tipo de seller y las tres objeciones. Recortar eso es recortar la razón por la que la pieza gana el SERP.
  **Decisión de Eddie, dos caminos honestos**:
  (a) **Aceptar**. `baseo-context` dice que este lector escanea y lee poco, pero también que la profundidad viene de números y especificidad. La pieza está densa, no inflada, y todo el contenido "largo" es escaneable (tablas, listas, scripts).
  (b) **Recortar ~1,200 palabras** sin tocar los diferenciadores: los candidatos naturales son las intros de Step 2 y Step 3 (comprimir a la mitad), el "worked example" del lead-to-deal ratio, y la sección de métricas (7 bullets → 5).
  Mi recomendación: **(a)**, y actualizar el target del brief para este tipo de estructura de playbook. La alternativa es publicar un playbook sin el playbook.

### Estilo / estructura (conviene resolver antes de review)

- ⚠️ **Cobertura de keyword en H2: 3 de 12 (25%)**, contra un piso de 60%.
  H2 que sí la llevan: *"What is a good real estate **lead conversion rate**?"* · *"Why most real estate **leads never convert**"* · *"**Lead conversion** metrics to track every week"*.
  Ya venía flageado y aceptado desde el brief y el outline: la estructura de pasos es del editor y es lo que hace la pieza copiable. La keyword sí está en H1, meta title, meta description, slug e intro. **No se reescribieron los headings del editor.** Confirmar la aceptación.

- ⚠️ **Header de cierre**: la sección de cierre se titula `## Turn more of your traffic into deals`, no `## Final thoughts` / `## The bottom line` / `## What to do next`. Estructura aprobada por el editor; el contenido sí sigue el patrón de cierre del style guide (insight central → siguiente paso en unidades del lector → CTA de auditoría sin presión, 192 palabras). Flag esperado y ya documentado. Sin acción.

- ⚠️ **Longitud de H2**: dos headings van al límite: *"Step 4: Build a follow-up cadence that closes deals 60 days later"* (12 palabras) y *"The conversion multiplier nobody talks about: where the lead came from"* (11). En el límite, no por encima. Aprobados por el editor.

### Informativo

- ⚠️ **7 stats del brief original fueron eliminadas por falta de fuente verificable** (decisión tomada en research, ejecutada en el draft). La más importante: *"la mayoría de los deals cierran entre el toque 6 y el 10"*, que era el dato ancla del H2 de follow-up, aparecía en la lista de causas raíz y en la FAQ #3. **No existe fuente creíble.** El argumento sobrevive (los sellers casi nunca dicen que sí en el toque 1 o 2; la mayoría de los investors abandonan en el 2), apoyado en Goliath Data y en el consenso de direct mail (~6 toques antes de una respuesta). Lo que se fue es la falsa precisión.
  También eliminadas: "80% después del 5º contacto", "93.7% de investors no hacen follow-up", "responder en 5 min convierte 900% más", "CPC de $25–$120 para 'sell my house fast'", "SEO vs PPC cost per deal $500–$2,000 vs $2,500–$7,500", "multi-step forms convierten 86% mejor".
  **Ninguna aparece en el artículo.** Si Eddie tiene fuentes internas para alguna, se pueden reincorporar con cita.

- ⚠️ **La FAQ #3 fue reescrita**, no usada verbatim como pedía el brief, porque afirmaba el dato del toque 6–10.

- ⚠️ **El estudio del 21x (MIT / InsideSales, Oldroyd) es de 2007.** El draft dice el año abiertamente en lugar de esconderlo, y aclara que mide *odds de calificar*, no deals cerrados. Es defendible y le sienta bien al lector quemado, pero es una decisión de tono: confirmar.

- ⚠️ **El dato del 78% ("compran a quien responde primero") se cortó.** Su única atribución es secundaria (Lead Connect, vía agregadores). El 21x del MIT carga la sección solo. Se puede reponer con atribución explícita si Eddie lo quiere.

---

## Counts (referencia rápida)

| Métrica | Valor | Target | Status |
|---|---|---|---|
| Total word count | ~5,000 (5,423 con tablas/headings) | 2,600–3,200 | ❌ |
| Intro word count | 72 | < 80 | ✅ |
| Intro template | B (promise a concrete outcome) | A/B/C | ✅ |
| Banned intro openers | 0 | 0 | ✅ |
| H2 keyword coverage | 3/12 (25%) | ≥ 60% | ⚠️ aceptado y documentado |
| Banned clichés | 0 | 0 | ✅ |
| Banned agency-speak ("conversions", "ROAS", "organic visibility", "impressions") | 0 | 0 | ✅ |
| Banned trust-killers (garantías, "we're the experts", "trust the process", "10x", "leads in 30 days") | 0 | 0 | ✅ |
| Em-dashes en el cuerpo | 0 (6 corregidos) | 0 | ✅ |
| BASEO mentions | 3 | 1–3 (Tangential) | ✅ |
| BASEO mentions en Steps 1–6 | 0 | 0 | ✅ |
| Fabricación de servicios (CRM / auto-SMS / retargeting como servicio BASEO) | 0 | 0 | ✅ |
| Internal links (thebaseo.com) | 11 | 10–16 | ✅ |
| External citations Tier 1/2 | 11 enlaces, 6 fuentes distintas | ≥ 3 | ✅ |
| Claims first-party verbatim | ✅ ("3 to 28", "$161 per organic lead") | todos | ✅ |
| Uso de "42 leads" (claim deprecado) | 0 | 0 | ✅ |
| Data points sin fuente | 0 | 0 | ✅ |
| Guarantee language | 0 | 0 | ✅ |
| Package/price disclosures | 0 | 0 | ✅ |
| Proprietary how-detail (tools, counts, workflow) | 0 | 0 | ✅ |
| Images / lists / tables | I:4 · L:5 · T:4 | ≥3 / ≥2 / ≥1–2 | ✅ |
| `[SCREENSHOT]` con su bloque de prompt | 4 / 4 | 4 | ✅ |
| Featured snippet element | paragraph, 57 palabras, bajo "What is a good real estate lead conversion rate?" | present | ✅ |
| TOC (>1,500 palabras) | presente | requerido | ✅ |
| Closing section | "Turn more of your traffic into deals", 192 palabras | 100–200 | ✅ (header ⚠️) |
| CTA al final + URL válida | `https://www.thebaseo.com/home-cash-buyers-seo/#hero` | audit CTA verificada | ✅ |
| Audience check (investor-addressed) | ✅ segunda persona = el investor en todas las secciones | investor | ✅ |

---

## Inventario de placeholders (para completar antes de publicar)

| # | Placeholder | Sección | Qué capturar | Prompt presente |
|---|---|---|---|---|
| 1 | `[SCREENSHOT: Hero image...]` | Top del artículo | Investor en llamada, camioneta o mesa de cocina. Categoría 4 (hero fotográfico). | ✅ |
| 2 | `[SCREENSHOT: A lead report showing lead-to-contract rate by source...]` | "What is a good real estate lead conversion rate?" | Dashboard de leads con contract rate por fuente. Categoría 3. | ✅ |
| 3 | `[SCREENSHOT: A lead log with a speed-to-first-contact column...]` | "Step 1: Win the first 5 minutes" | Log de leads con tiempo de respuesta y outcome. Categoría 3. | ✅ |
| 4 | `[SCREENSHOT: Google search result with an AI Overview...]` | "The conversion multiplier nobody talks about" | SERP de "sell my house fast tampa" con AI Overview citando cash buyers. Categoría 1. **Es la imagen-prueba del artículo.** | ✅ |

Los 4 bloques `[SCREENSHOT:]` tienen su `[PROMPT FOR CHATGPT IMAGE GENERATION:]` inmediatamente después y su caption en itálica. Ambos bloques viajan al draft de WordPress; el publisher genera la imagen y reemplaza los dos bloques.

---

## Verificación independiente (no confié en las Draft notes)

Corrí conteos programáticos sobre el cuerpo del artículo, no sobre lo que el drafter dijo de sí mismo. Dos afirmaciones de las Draft notes resultaron falsas:

1. **"Em-dashes: ✅ none"** → había 6. Corregidos.
2. **"Total word count: ✅ ~3,050"** → son ~5,000. Flageado arriba.

Todo lo demás en las Draft notes se verificó y se confirmó: 0 clichés, 0 agency-speak, 0 garantías, 0 precios, 0 fabricación de servicios, 3 menciones de BASEO (ninguna en los Steps 1–6), 11 internal links todos válidos contra el corpus, claims first-party verbatim contra la Approved claims library, y 0 números sin fuente.
