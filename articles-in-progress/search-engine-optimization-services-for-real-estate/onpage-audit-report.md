# BASEO On-Page Audit — Post 350

**Post**: Real Estate SEO Services Built for Deal Flow, Not Vanity Traffic
**Word count**: ~2,900
**Funnel stage (surface judgment)**: BOFU
**Primary persona (surface judgment)**: B1

---

### 1. Internal linking

**Current internal links**: 13 (10 a blog posts + 3 CTA) — target para ~2,900 palabras: 12–24 ✅ (en el extremo bajo, sano para una pieza BOFU)
**Corpus checked**: `baseo-corpus.csv` — ⚠️ el archivo contiene marcadores de merge conflict de git (`<<<<<<< HEAD` / `>>>>>>>`). Se pudo leer, pero hay que limpiarlo.

#### Missed linking opportunities

1. In: "If you're an agent or a listing team, retail SEO is a different product with different pages and a different buyer at the end of it."
   - Anchor: "SEO for realtors"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/seo-for-realtors/
   - Why: match directo de "retail SEO" para agentes; hoy el párrafo solo linkea el playbook de marketing para agentes.

2. In: "Ads stop producing the day you stop paying, and purchased leads are usually sold to your competitors too." (FAQ)
   - Anchor: "leads without cold calling"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/resources/real-estate-leads-without-cold-calling/
   - Why: overlap de canales de leads / cost per deal; el FAQ compara canales y ese post los rankea.

3. In: "BASEO works with cash home buyers. Wholesalers, flippers, buy-and-hold operators, HomeVestors franchisees."
   - Anchor: "SEO for cash home buyers"
   - Link to: https://www.thebaseo.com/home-cash-buyers-seo/
   - Why: el pilar de servicio solo recibe tráfico vía el anchor #hero del CTA; un link editorial al pilar refuerza la página comercial desde su artículo BOFU.

#### Linking issues

- Misma URL (`.../home-cash-buyers-seo/#hero`) 3 veces — justificado por diseño BOFU (multiple touches); no añadir una cuarta.
- Sin orphan anchors ("click here" etc.), sin self-links. Anchors descriptivos de 2–6 palabras en general ✅ ("how to do SEO for a real estate website" tiene 8, aceptable por long-tail).

---

### 2. Meta tags

| Element | Current value | Verdict | Fix |
|---|---|---|---|
| Title (ACF) | "Real Estate SEO Services That Bring Deals, Not Traffic" (54 chars) | ✅ | Keyword en los primeros 30, sin guarantees, sin stuffing |
| Description (ACF) | "Search engine optimization services for real estate, built around leads and cost per deal: city pages, seller-situation content, local SEO, AEO. Free audit." (156 chars) | ✅ | Promise + payoff + CTA implícito en lenguaje de inversor |

---

### 3. Article structure

| Element | Status | Detail |
|---|---|---|
| TOC | ⚠️ | Presente, 9 H2 con anchors. Pero los H2 renderizados por WP NO llevan atributo `id`: los anchors (`#how-much-do-real-estate-seo-services-cost`, etc.) solo funcionarán si Astro genera ids idénticos al slugificar los headings. Verificar en la página live. "Final thoughts" no está en el TOC (convencional, OK). |
| H2 cadence | ✅ | 10 H2, secciones de ~200–500 palabras; la sección de servicios larga está bien partida en 6 H3. |
| Images | 3 reales + featured ✅ | Map Pack (357), investor-driveway (354), lead-notification (353). ⚠️ 353 y 354 son casi la misma imagen; el caption de la sección AEO no corresponde a lo que muestra la imagen (ver content-review). |
| Lists | 4+ ✅ | Vetting checklist, engagement terms, results, TOC |
| Tables | 3 ✅ | PPC vs organic, pricing tiers, timeline por fases — las tres bien formadas, con headers |
| Closing section | ✅ | "## Final thoughts", ~115 palabras — "The investors winning organic search in your city aren't smarter than you." |

---

### 4. CTA

**Current CTA(s)**: "Get your free site audit →" — mid-post (cierre de la sección de costos), sección dedicada ("Get a Real Estate SEO Plan for Your Market"), y Final thoughts.
**Position(s)**: mid + sección propia + end
**URL validity**: ✅ las 3 apuntan a `https://www.thebaseo.com/home-cash-buyers-seo/#hero` (canónica verificada)
**Verdict**: ✅ Aligned — BOFU con múltiples touches, detalle comercial permitido ("what the work would cost in your situation"), framing de risk-reversal correcto ("No card. No contract. No call required.")

**Suggested CTA(s)**: ninguno necesario.

---

### Top fixes (priority order)

1. Verificar en el frontend (www.thebaseo.com) que los anchors del TOC funcionan — los headings no llevan `id` en el HTML de WP; si Astro no los genera igual, el TOC entero muere.
2. Añadir los 3 internal links sugeridos (seo-for-realtors, leads-without-cold-calling, pilar cash buyers).
3. Reemplazar la imagen de la sección AEO por un screenshot real de AI Overview y diferenciar 353/354.
4. Limpiar los marcadores de merge conflict de `baseo-corpus.csv` (afecta a todas las auditorías futuras).

### One-line summary

On-page sólido y publicado limpio: solo falta verificar los anchors del TOC en el frontend y sumar 3 links internos fáciles.
