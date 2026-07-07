## BASEO On-Page Audit

**Post**: Marketing for Real Estate Agents: The Complete Playbook to Win More Listings (polished-article.md)
**Word count**: ~2,900 (cuerpo, sin contar los bloques `[PROMPT FOR CHATGPT IMAGE GENERATION]`)
**Funnel stage (surface judgment)**: MOFU
**Primary persona (surface judgment)**: B4 (con B3 secundario)

---

### 1. Internal linking

**Current internal links**: 6 totales → 3 a blog (corpus) + 1 roto a CRM + 2 al audit (CTA). Target para ~2,900 palabras: ~12–23 (regla 4–8/1.000 palabras); el brief pide 7–12. **Está por debajo del piso.**
**Corpus checked**: `baseo-corpus.csv` (10 URLs) + la URL que pasaste (`how-to-start-wholesaling-real-estate/`), que es una página publicada válida y aún no está en el corpus. Dato útil: esa página de wholesaling ya enlaza de vuelta a este artículo ("Keep reading"), así que el enlace recíproco tiene sentido.

Enlaces actuales al blog (verificados contra corpus):
- ✅ `how-to-do-seo-real-estate-website/` — anchor "SEO for a real estate website"
- ✅ `rank-in-ai-overviews/` — anchor "cited in AI Overviews"
- ✅ `social-media-marketing-real-estate-investors/` — anchor "social media for real estate"

#### Missed linking opportunities

1. En: *"someone typing 'sell my house fast [city]' is already looking, and you pay to sit at the top of that moment."* (Step 5, Google Ads)
   - Anchor: "Google Ads for real estate"
   - Link to: `https://www.thebaseo.com/home-cash-buyers-seo/resources/google-ads-for-real-estate/`
   - Why: términos compartidos — Google Ads, cost per click, seller keywords, CPL. Encaje muy alto.

2. En: *"Operators generate online leads through local SEO, a tracked lead-capture website, social media, paid ads, and email nurture."* (FAQ "How do real estate agents get leads online?") o en la intro de Step 5.
   - Anchor: "get motivated seller leads"
   - Link to: `https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-get-motivated-seller-leads/`
   - Why: el artículo del corpus es exactamente "los canales que traen deals, rankeados por costo y velocidad" — es el complemento directo de este playbook.

3. En: *"a situation you specialize in (probate, foreclosure, inherited, tired landlords)"* o *"more people fighting for each one"* (Step 1 / intro), donde el lector wholesaler/flipper aparece.
   - Anchor: "start wholesaling real estate"
   - Link to: `https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-start-wholesaling-real-estate/`
   - Why: la audiencia es el operador cash-buyer (muchos wholesalers); enlace recíproco de una página ya publicada. Encaje moderado-alto.

4. (Opcional) En Step 2, sección de seller-situation pages: *"probate, foreclosure, divorce, inherited property, problem tenants."*
   - Anchor: "pre-foreclosure" o "foreclosure listings"
   - Link to: `where-to-find-foreclosure-listings/` o `what-pre-foreclosure-means-for-buyers/` (corpus). Encaje moderado; usar solo uno si hace falta densidad.

#### Linking issues

- ❌ **Enlace roto / dominio incorrecto (CRM).** El artículo enlaza a `https://cms.thebaseo.com/how-to-use-crm-for-real-estate/` — ese es el backend de WordPress (`cms.`), no la URL pública. Anchor actual: *"how to use a CRM for real estate."* Corregir a la canónica del corpus:
  `https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-use-crm-for-real-estate/`
- Sin orphan anchors ("click here"/"read more"), sin over-linking (misma URL 3+), sin self-links. ✅

---

### 2. Meta tags

El archivo `polished-article.md` no incluye bloque de meta title/description. Se evalúa la propuesta del `brief.md` y se contrasta con el título en vivo de la página publicada.

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title (propuesto en brief) | "Marketing for Real Estate Agents: The Deal-Math Playbook" (56 chars) | ✅ | Keyword al inicio, 56 chars, sin guarantee. Úsalo tal cual. |
| Title (EN VIVO en la página publicada) | "Marketing for Real Estate Agents: The Operator's Playbook to Win More Deals" (~74 chars) | ❌ | Excede 60 chars y se truncará en SERP. Reemplazar por el título del brief: `Marketing for Real Estate Agents: The Deal-Math Playbook` |
| Meta description (propuesta en brief) | "Marketing for real estate agents, ranked by what makes the phone ring: brand, local SEO, social, ads, and the one channel that compounds instead of renting." (156 chars) | ✅ | 156 chars, keyword al inicio, lenguaje de operador, CTA implícito. Úsalo tal cual. |

Nota: confirmar que el meta title publicado se cambie al de ≤60 chars; hoy el live está largo.

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ✅ | Presente con 11 anclas a los H2 (artículo >1.500 palabras lo requiere). |
| H2 cadence | ✅ | ~12 H2 en ~2.900 palabras → uno cada ~240 palabras, razonablemente parejo. Algunos "Step" quedan cortos y seguidos, pero sin gaps >800 palabras ni H2 a <150 palabras entre sí. |
| Images | ⚠️ 4 placeholders / 0 reales | `[SCREENSHOT: ...]` + prompt en: hero, map pack "cash home buyers tampa", composite property/3D, timeline 90 días. Cumple el mínimo de ≥2 en conteo, pero **son placeholders**: hay que insertar las imágenes reales antes de publicar. |
| Lists | ✅ 5+ | Self-audit (Step 1), mezcla semanal social (Step 3), plan 90 días numerado, cadence de past-client (Step 7), FAQ. Supera el mínimo. |
| Tables | ✅ 2 | Google Ads vs Meta Ads (Step 5) y herramientas + budget (Step Tools). Cumple. |
| Closing section | ⚠️ | Cierre bajo `## Ready to get found by more sellers?` (~95 palabras) + CTA. Variante aceptable de close consultivo, pero (a) el encabezado no usa la convención `## Final thoughts / The bottom line / What to do next`, (b) queda ~95 palabras (piso 100) y (c) va seguido del FAQ, así que no es literalmente la última sección. Menor: subir a 100–200 palabras o renombrar si se busca la convención estándar. |

---

### 4. CTA

**Current CTA(s)**: Mid — *"Not sure which of these is missing on your site? A free written audit shows you the three biggest issues in about two business days, no call required, and you keep it either way."* (Step 2). End — *"Get your free site audit →"* precedido de *"You send the domain, you get the three biggest issues, your competitor's keyword gap, and the deal math for your market, in writing, in about two business days. No call required."*
**Position(s)**: mid + end (múltiple).
**URL validity**: ✅ todas verificadas — ambas apuntan a `https://www.thebaseo.com/home-cash-buyers-seo/#hero` (URL de audit canónica por defecto).
**Verdict**: ✅ Aligned — cadencia mid+end correcta para MOFU, framing risk-reversal ("free, written, no call required, yours to keep"), sin presión ni guarantees.

**Suggested CTA(s)**: sin cambios necesarios. Mantener texto y URL actuales.

**Rationale**: MOFU/B4 espera CTA a mitad (tras la sección de foundation) y al final, ambas al audit gratis; el artículo lo cumple.

---

### Top fixes (priority order)

1. **Arreglar el enlace roto del CRM**: `https://cms.thebaseo.com/how-to-use-crm-for-real-estate/` → `https://www.thebaseo.com/home-cash-buyers-seo/resources/how-to-use-crm-for-real-estate/` (Step 4).
2. **Subir densidad de enlaces internos** de 6 a ~9–11 añadiendo: Google Ads for real estate (Step 5), how to get motivated seller leads (Step 5/FAQ) y start wholesaling real estate (Step 1). Con esto entra en el rango del brief (7–12).
3. **Reemplazar los 4 placeholders `[SCREENSHOT]` por imágenes reales** antes de publicar (hero, map pack, property/3D, timeline).
4. **Acortar el meta title en vivo** a la versión de 56 chars del brief ("Marketing for Real Estate Agents: The Deal-Math Playbook"); el título publicado actual (~74 chars) se trunca en SERP.

### One-line summary

Estructura, metas propuestas y CTA están listos; para publicar, corrige el enlace roto del CRM, sube los enlaces internos a 7–12 (Google Ads, motivated seller leads, wholesaling), mete las imágenes reales y acorta el meta title en vivo.
