## BASEO On-Page Audit

**Post**: How to Use a CRM for Real Estate: A Step-by-Step Guide (`how-to-use-crm-for-real-estate`, versión en vivo)
**Word count**: ~2,900 palabras (17 min read)
**Funnel stage (surface judgment)**: TOFU
**Primary persona (surface judgment)**: B4 (con anclaje B2)

Corpus usado: `baseo-corpus.csv` (10 URLs publicadas).

---

### 1. Internal linking

**Enlaces internos actuales**: 3 (a blog posts de BASEO). Objetivo por densidad del skill (4–8 por 1,000 palabras): ~12–23; se marca por debajo de 3 por 1,000. **Densidad real ≈ 1 por 1,000 → sub-enlazado.** Nota: el `brief.md` fijó un objetivo de 4–8 enlaces internos *totales* para esta pieza; incluso contra ese objetivo más laxo, 3 queda corto. Además hay 4 enlaces externos de cita (LLCBuddy, AgentZap, ProfitOutreach, Seer Interactive) y 1–2 al CTA, que están bien pero no cuentan como internos de blog.

Enlaces internos presentes (todos válidos y en corpus):
- "get motivated seller leads" → `.../how-to-get-motivated-seller-leads/` ✅
- "social media fits as a lead source" → `.../social-media-marketing-real-estate-investors/` ✅
- "SEO for a real estate website" → `.../how-to-do-seo-real-estate-website/` ✅

**Corpus checked**: `/baseo-corpus.csv`

#### Missed linking opportunities

1. En: *"a growing share of them ask ChatGPT and Google's AI Overviews how to sell a house fast for cash."* (sección "Get Your CRM Found by AI and Search")
   - Anchor: **"rank in AI Overviews"** (o "get cited in AI answers")
   - Link to: `https://www.thebaseo.com/home-cash-buyers-seo/resources/rank-in-ai-overviews/`
   - Por qué: solapamiento fuerte — la sección habla de AI Overviews / ChatGPT y el artículo destino es exactamente sobre cómo aparecer citado ahí. Es el internal link más obvio que falta.

2. En: *"Connect your website and IDX, your social profiles, your paid ads, the portals like Zillow and Realtor.com..."* (Step 2)
   - Anchor: **"paid ads"** o **"running Google Ads"**
   - Link to: `https://www.thebaseo.com/home-cash-buyers-seo/resources/google-ads-for-real-estate/`
   - Por qué: términos compartidos (paid ads, cost-per-lead, portales); refuerza el ángulo de fuentes de lead y el deal-math de KPIs.

3. (Opcional) En: *"a personal intro with one real question about their goal or timeline"* (secuencia de nurturing)
   - Anchor: **"questions to ask motivated sellers"**
   - Link to: `https://www.thebaseo.com/home-cash-buyers-seo/resources/questions-to-ask-motivated-sellers/`
   - Por qué: solapamiento moderado (primer contacto / calificación del vendedor); útil pero secundario frente a #1 y #2.

Añadir #1 y #2 sube la pieza de 3 a 5 enlaces internos, dentro del objetivo del brief.

#### Linking issues

- Anchors descriptivos y de 2–6 palabras. Sin "click here" / "read more" / "learn more". Sin over-linking (ninguna URL repetida 3+ veces). Sin self-links. ✅ Ninguna corrección de calidad.

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title | "How to Use a CRM for Real Estate: A Step-by-Step Guide — BASEO" (62 chars) | ⚠️ | Ver abajo |
| Description | "How to use a CRM for real estate: import contacts, connect lead sources, build your pipeline, automate follow-ups, and turn more leads into closed deals." (153 chars) | ✅ | — |

- **Title**: 62 chars, por encima del rango 50–60, y añade el sufijo de marca "— BASEO" (el skill desaconseja el stuffing de marca en TOFU/MOFU). La keyword primaria "How to Use a CRM for Real Estate" sí está en los primeros 30 chars. El sufijo "— BASEO" parece auto-agregado por plantilla del sitio; aun así empuja el largo por encima de 60. Fix insertable (inglés, 46 chars, alineado al brief):
  > **How to Use a CRM for Real Estate: Step-by-Step**
- **Description**: 153 chars, dentro de 140–160; promesa + payoff + CTA implícito en lenguaje de inversionista (leads, deals). ✅ Sin cambios.

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ✅ | Bloque "In this guide:" con anchors a los 10 H2 (>1,500 palabras, requerido y presente). |
| H2 cadence | ✅ | ~9 H2 temáticos en ~2,900 palabras ≈ uno cada ~320 palabras, distribución pareja. Sin gaps >800 ni H2 pegados. |
| Images | ✅ 3 reales | Hero (notificación de lead), diagrama de pipeline de 7 etapas, dashboard de KPIs. Todas con caption que agrega contexto. ≥2 cumplido. |
| Lists | ✅ 3 | Lista numerada de 5 pasos (snippet), bullets de "Common Mistakes", secuencia de nurturing de 3 pasos. ≥1 cumplido. |
| Tables | ✅ 1 | Tabla de 7 etapas de pipeline (etapa / qué significa / acción CRM), bien formada. ≥1 cumplido. |
| Closing section | ✅ | `## Final thoughts`, ~130 palabras (dentro de 100–200). Primera frase: *"A CRM doesn't create deals."* |

Estructura completa; nada que corregir. Las 3 imágenes son reales (URLs de `cms.thebaseo.com`), no placeholders, así que no hay bloqueo de "faltan visuales antes de publicar".

---

### 4. CTA

**CTA actual (del artículo)**: *"If you want to know that before you build the machine to catch them, that's what the audit is for. Free, in writing, no call required, yours to keep."* + botón *"Get your free site audit →"*
**Position(s)**: final — en la sección soft-CTA "Get Your CRM Found by AI and Search" y reforzado en "Final thoughts". Ninguno en los primeros 200 words.
**URL validity**: ✅ verificada — `https://www.thebaseo.com/home-cash-buyers-seo/#hero` (default canónico del audit).
**Verdict**: ✅ Alineado — un solo toque suave, framing cero-presión, TOFU-apropiado, sin garantías ni precios.

**Suggested CTA(s)**: ninguno necesario; el actual cumple.

**Nota (chrome del sitio, fuera del cuerpo del artículo)**: el header global usa "Get Free Audit" → `https://www.thebaseo.com/contact/`, mientras el CTA del artículo y el footer apuntan a `.../#hero`. Ambas son URLs canónicas verificadas, pero conviene unificar el destino del audit a nivel plantilla para consistencia. No afecta el veredicto de esta pieza.

---

### Top fixes (priority order)

1. **Agregar 2 enlaces internos** (sub-enlazado): "rank in AI Overviews" → `.../rank-in-ai-overviews/` en la sección de AI, y "paid ads" → `.../google-ads-for-real-estate/` en el Step 2. Sube de 3 a 5 internos.
2. **Acortar el meta title** a ≤60 chars y sin stuffing de marca en TOFU: **"How to Use a CRM for Real Estate: Step-by-Step"** (46 chars).
3. **(Menor / plantilla)** Unificar el destino del CTA de audit del header (`/contact/`) con el del artículo/footer (`/#hero`).

### One-line summary

Publication-ready en estructura, metas (salvo el largo del title) y CTA; el único arreglo real de on-page es subir de 3 a 5 enlaces internos añadiendo el link a AI Overviews y el de Google Ads.

---

**Sources:**
- [How to Use a CRM for Real Estate (artículo en vivo)](https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-use-crm-for-real-estate/)
- [How to Rank in AI Overviews](https://www.thebaseo.com/home-cash-buyers-seo/resources/rank-in-ai-overviews/)
- [Google Ads for Real Estate](https://www.thebaseo.com/home-cash-buyers-seo/resources/google-ads-for-real-estate/)
