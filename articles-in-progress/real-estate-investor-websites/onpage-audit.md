## BASEO On-Page Audit

**Post**: Best Real Estate Investor Websites for 2026 (`polished-article.md`)
**Word count**: ~2,150 (prose, excluye bloques de image-prompt)
**Funnel stage (surface judgment)**: MOFU
**Primary persona (surface judgment)**: B4 Scaling (secundario B1)

---

### 1. Internal linking

**Current internal links**: 11 (target para ~2,150 palabras: ~9–17 a razón de 4–8 por 1,000). ✅ dentro de rango.
**Corpus checked**: `baseo-corpus.csv` (33 filas). Todos los destinos existen en el corpus. ✅

#### Missed linking opportunities (opcionales, no obligatorios)

1. In: "They rank in Google for searches like 'sell my house fast [city],' then convert visitors with two-step lead-capture forms..." (FAQ #5)
   - Anchor: "how to convert leads in real estate"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-convert-leads-in-real-estate/
   - Why: solapamiento con "convert leads" / follow-up. (Opcional — el FAQ es verbatim; añadir el link no cambia el texto de la respuesta.)
2. In: "the platform's whole pitch is conversion data plus built-in SEO tooling" (Carrot H3)
   - Anchor: "seo for realtors" o "how to do seo" ya cubierto; no forzar. (Densidad ya suficiente.)

#### Linking issues

- Sin orphan anchors ("click here"/"read more"): ✅ todos descriptivos, 2–6 palabras.
- Sin over-linking (ninguna URL 3+ veces): ✅ (solo el CTA #hero aparece 2 veces, correcto para mid+end).
- Sin self-links. ✅
- Nota: `rank-in-ai-overviews` usa el slug correcto del corpus (no `how-to-rank-in-ai-overviews`). ✅

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "Best Real Estate Investor Websites: 8 Compared (2026)" (53 chars) | ✅ | keyword en los primeros 30, sin garantía, dentro de 50–60 |
| Description | "Compare the 8 best real estate investor websites for 2026 by price, lead capture, and SEO — from Carrot to custom-built sites that actually rank." (144 chars) | ⚠️ | Contiene un em-dash. Reemplazo sin em-dash: `Compare the 8 best real estate investor websites for 2026 on price, lead capture, and SEO, from Carrot to custom sites that actually rank.` (139 chars) |

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ❌ | >1,500 palabras: falta la lista de anclas H2 arriba del primer H2. Añadir TOC con 9 anclas. |
| H2 cadence | ⚠️ | ~9 H2 / 2,150 palabras (~240 palabras/H2, bien), pero el bloque "The 8 Best..." → "Comparison Table" abarca ~1,100 palabras entre esos dos H2. Los 8 H3 lo rompen visualmente, así que es aceptable; no requiere H2 extra. |
| Images | 3 placeholders (0 reales) | Hero (Cat 4), SERP "sell my house fast tampa" (Cat 1), diagrama templated-vs-custom (Cat 5). Cada `[SCREENSHOT]` con su `[PROMPT]`. Generar reales antes de publicar. |
| Lists | 2 ✅ | rubric de 6 factores + "if you're X, choose Y" |
| Tables | 1 ✅ | comparación de 8 filas (snippet target) |
| Closing section | ✅ (variante) | La estructura provista cierra con el H2 CTA "Get a Website Built to Rank, Not Just to Exist" (~95 palabras) seguido del FAQ. No hay "Final thoughts" separado por diseño del brief; el CTA cumple la función de cierre. |

---

### 4. CTA

**Current CTA(s)**:
- Mid: "Not sure whether your template is costing you rankings in your market? That is exactly what a free audit answers... [Get your free site audit →]"
- End: "The audit is free, written, delivered in about two business days, and yours to keep. No call required. [Get your free site audit →]"

**Position(s)**: mid + end (correcto para MOFU).
**URL validity**: ✅ ambos apuntan a `https://www.thebaseo.com/home-cash-buyers-seo/#hero`, entrada ✅-verified en `baseo-context` § Canonical URLs.
**Verdict**: ✅ Aligned — dos toques, framing de risk-reversal (free, written, no call, yours to keep), cero presión, cero garantía.

**Suggested CTA(s)**: sin cambios necesarios.

**Rationale**: MOFU B4/B1 pide mid + end apuntando a la auditoría gratuita; ya cumple.

---

### Top fixes (priority order)

1. **Añadir TOC** (lista de anclas de los 9 H2) arriba del primer H2 — único ❌ de estructura.
2. **Quitar el em-dash de la meta description** — usar el reemplazo de 139 chars de arriba.
3. **(Opcional) 1 internal link extra** al recurso "how to convert leads in real estate" en el FAQ #5.

### One-line summary

On-page listo para publicar salvo dos ajustes mecánicos: agregar el TOC y limpiar el em-dash de la meta description; enlazado, CTA y visuales (como placeholders) están en regla.
