# Manual del Sistema BASEO de Creación de Contenido

Guía completa para usar el pipeline editorial de BASEO (vertical: Cash Home Buyers). Cubre arquitectura, setup, las 12 skills, flujo end-to-end, troubleshooting, mantenimiento y cómo clonar el sistema a nuevas verticales.

Espejo directo del sistema Schemafy: misma arquitectura, mismo flujo, adaptado al negocio de agencia (servicios en vez de features de producto, claims de resultados en vez de catálogo de plugin, audit gratuito como CTA universal).

---

## 1. Resumen ejecutivo

### Qué es el sistema

Un pipeline editorial completo construido sobre 12 skills de Claude que automatiza la creación, revisión y producción de artículos para el blog de thebaseo.net. El lector objetivo es el **cash home buyer** (el prospecto de la agencia), NUNCA el motivated seller.

### Qué resuelve

- **Variabilidad entre escritores**: cada artículo sale con el mismo voice (operator-to-operator, deal math, cero agency-speak).
- **Revisión consistente**: criterios de aprobación determinísticos.
- **Fabricación de servicios**: las skills enforcean el catálogo de servicios activos (SEO/AEO + PPC management) y la lista de servicios fuera de scope (CRM, direct mail, web design...). Nadie publica que BASEO vende algo que no vende.
- **Integridad de claims**: los resultados de clientes solo pueden citarse verbatim desde la Approved claims library. Nada de inflar números ni inventar clientes composite. Stats externos requieren source URL verificada.
- **Garantías prohibidas**: el sistema bloquea cualquier promesa de rankings/leads/plazos. Proof = resultados pasados; promesa = prohibido. (Es la posición pública de la marca.)
- **Pricing disclosure**: nadie publica precios ni nombres de paquetes (Foundation/Growth/Domination) en editorial.
- **Audiencia equivocada**: gate automático contra contenido dirigido a sellers (eso es contenido de sitios de clientes, no del blog BASEO).
- **Delivery accuracy**: cuando el artículo describe cómo BASEO entrega un servicio, usa `baseo-services-reference.md` o inserta placeholders `[PROCESS: ...]` para verificación humana.

### Quiénes lo usan

| Rol | Responsabilidad | Skills que usa |
|---|---|---|
| **Editor (Eddie)** | Topic + keywords al escritor. Mantiene `baseo-context.md` y `baseo-services-reference.md`. | Ninguna directa; configura el sistema. |
| **Escritor** | Produce el heading structure. Corre la pipeline. Verifica placeholders. | `baseo-create-article` (orquestador) o las 5 sub-skills. |
| **Reviewer** | Revisa el draft post-self-check. Aprueba / devuelve. | `baseo-content-review`, `baseo-onpage-audit`. |
| **Publisher** | Visuales, verificación de `[PROCESS]` con Eddie, Drive, publica. | `baseo-finalize`. |

### El flujo en una imagen

```
Eddie da topic + KWs
   ↓
Escritor produce heading structure (paso manual upstream)
   ↓
Escritor corre baseo-create-article
   ↓
[brief-enrich → research → outline → draft → self-check]
   ↓
Escritor verifica top flags + placeholders
   ↓
Reviewer corre content-review + onpage-audit
   ↓
APROBADO → baseo-finalize
   ↓
.docx en Drive → visuales + verificación PROCESS → publicar
```

---

## 2. Arquitectura: las 12 skills + el corpus

**Phase 1 — Reference (no se invocan, las leen otras skills):**

| Skill | Función |
|---|---|
| `baseo-context.md` | Single source of truth: personas B1–B5, anti-personas (¡sellers!), catálogo de servicios + out-of-scope, Approved claims library, pricing disclosure policy, pain → service map, Tangential rules, funnel stages, banned clichés + agency-speak + trust-killers, URLs canónicas, ICP vocabulary |
| `baseo-style-guide.md` | Voz operator-to-operator, deal-math sentences, translation gap (investor language), intros, H2/H3 rules, service integration (mostrar el playbook), internal linking, visual cadence, closes |
| `baseo-services-reference.md` | Cheat sheet de delivery por servicio: deliverables documentados, timelines, qué puede afirmar el writer, qué requiere placeholder `[PROCESS: ...]`. Equivalente del ui-reference de Schemafy. |

**Phase 2 — Review:**

| Skill | Función |
|---|---|
| `baseo-content-review.md` | Evaluación editorial completa: ICP fit + service coverage + claim integrity + voice + clichés + actionability + CTA. Verdict (PASS / PASS WITH EDITS / REVISE / REFRAME / KILL) + score 1-5 + top 3 fixes |
| `baseo-onpage-audit.md` | Publication-readiness: internal links + metas + estructura + CTA URL validity |

**Phase 3 — Creation:**

| Skill | Función |
|---|---|
| `baseo-brief-enrich.md` | Cluster + headings → brief enriquecido con persona, funnel, pain→service, CTA (audit), snippet target, SEO metadata, density targets, framing Active/Tangential. Gate de audiencia (sellers → STOP) |
| `baseo-research.md` | Brief → dossier con SERP analysis, fuentes tier-clasificadas (Google/Carrot/ATTOM...), claims first-party desde la library + stats externos con source verificada, internal link candidates, capability hooks. WebSearch + web_fetch (3–6 calls) |
| `baseo-outline.md` | Brief + dossier → outline paragraph-level con data placement, link placement, snippet structure, word counts, compliance preflight |
| `baseo-draft.md` | Outline → prose. Aplica style guide. Usa services-reference para procesos reales o inserta `[PROCESS: ...]`. Inserta `[SCREENSHOT: ...]` |
| `baseo-self-check.md` | Draft → auto-fix de clichés/agency-speak/price disclosures/em-dashes + flags (claims, garantías, fabricación, audiencia). Verdict: Ready for review / Needs writer attention |
| `baseo-create-article.md` | **Orquestador**. Corre las 5 en secuencia, guarda outputs por artículo, honora STOPs, soporta resume |

**Phase 4 — Production:**

| Skill | Función |
|---|---|
| `baseo-finalize.md` | Polished article aprobado → `.docx` con metadata header, cajas amarillas (screenshots), cajas naranjas (PROCESS), CTA box. Spot-check final de compliance |

**El archivo que tu equipo mantiene además de las referencias:**

`baseo-corpus.csv` — sitemap del blog de thebaseo.net. Formato (4 columnas, tolera columnas extra):

```csv
url,title,meta_description,primary_keyword
https://thebaseo.net/blog/xxx,"Article Title","Meta description 140-160 chars",primary keyword
```

Actualización semanal. Sin esto, el internal linking no genera sugerencias.

---

## 3. Setup inicial

### Carpeta de trabajo

```
baseo-home-cash-content-generation/
├── skills/
│   ├── baseo-context.md
│   ├── baseo-style-guide.md
│   ├── baseo-services-reference.md
│   ├── baseo-content-review.md
│   ├── baseo-onpage-audit.md
│   ├── baseo-brief-enrich.md
│   ├── baseo-research.md
│   ├── baseo-outline.md
│   ├── baseo-draft.md
│   ├── baseo-self-check.md
│   ├── baseo-create-article.md
│   └── baseo-finalize.md
├── baseo-corpus.csv
├── MANUAL-sistema-baseo.md
├── articles-in-progress/
│   └── [primary-keyword-slug]/   ← creada automáticamente por el orquestador
│       ├── brief.md
│       ├── research-dossier.md
│       ├── outline.md
│       ├── draft.md
│       ├── polished-article.md
│       ├── self-check-report.md
│       └── [slug].docx           ← después de finalize
└── articles-published/           ← opcional, archivo histórico
```

### Pendientes de Eddie ANTES del primer artículo (importante)

1. **Verificar URLs canónicas** en `baseo-context.md` § Canonical URLs: confirmar la URL real del blog (¿`thebaseo.net/blog/`?) y la URL del CTA de audit. Las filas marcadas ⚠️ VERIFY bloquean linking hasta confirmarse.
2. **Resolver el 28 vs 42**: el sitio usa "3 → 28 leads" en el stats block y "3 to 42" en el case study heading. El sistema está estandarizado en **28** y flagea cualquier "42". Si prefieres 42, edita la Approved claims library en `baseo-context.md`.
3. **Crear `baseo-corpus.csv`** con los artículos ya publicados (aunque sean pocos — 5-10 filas bastan para validar el internal linking).
4. **Revisar `baseo-services-reference.md`**: los `[PROCESS: ...]` marcan lo que NO está documentado (tool stack, volúmenes mensuales, formatos de reporte). Cuanto más documentes, menos placeholders genera el drafter. En particular la sección 8 (PPC Management) tiene el process shape vacío — llénala antes de escribir contenido PPC-céntrico.

### No requiere Ahrefs

`baseo-research` usa WebSearch + web_fetch. El keyword research se asume hecho upstream en tu calendario editorial (ahí sí puedes usar tu Ahrefs MCP si quieres, pero fuera del pipeline).

### Skills "instaladas" en Cowork

Los `.md` de `skills/` se empaquetan como Cowork skills (frontmatter YAML `name` + `description`) para invocarlas por nombre. Es deployment, se hace una vez. Mientras tanto, adjuntar los archivos en el chat funciona igual.

---

## 4. El flujo end-to-end paso a paso

### Paso 0 — Setup del artículo (Eddie)

Topic + cluster de 2–5 keywords + opcionalmente angle context ("target B1", "lead with deal math", "AEO-attached").

### Paso 1 — Heading structure (Escritor, manual upstream)

Abrir top 10 del SERP del primary keyword, extraer headings, construir la tabla H1/H2/H3 + guideline por sección. Igual que en Schemafy, este paso vive fuera del pipeline.

### Paso 2 — Chat nuevo (Escritor)

Un artículo = un chat. Tener disponibles: las 3 referencias + `baseo-corpus.csv` + las 6 skills de creación (o instaladas como Cowork skills).

### Paso 3 — Invocar el orquestador

```
Corre baseo-create-article con estos inputs:

Topic: How to vet an SEO agency after you've been burned
Primary keyword: seo agency for real estate investors
Cluster: seo agency for real estate investors, seo for we buy houses,
         real estate investor seo company

Heading structure:
| Heading | Level | Guideline |
|---|---|---|
| ... | ... | ... |

Angle context: target B1, lean on the deliverables-guarantee mechanics
Language: English
```

El orquestador ejecuta los 5 stages, guarda los 6 archivos y responde con pipeline status + verdict + top 3 flags + links.

### Paso 4 — Resolver flags (Escritor)

Verdict "Needs writer attention" → abrir `self-check-report.md`, resolver los ❌ (típicos: stat sin source, claim no aprobado, link faltante, word count), editar `polished-article.md`, opcionalmente re-correr self-check.

### Paso 5 — Verificar placeholders (Escritor)

En el report, sección **Placeholders inventory**:
- `[SCREENSHOT: ...]` → visuales que el publisher debe capturar/construir (SERPs, curvas de tráfico, excerpts de reportes).
- `[PROCESS: ...]` → detalles de delivery que hay que verificar con Eddie antes de publicar.

### Paso 6–8 — Review (Reviewer)

Chat nuevo. Adjuntar context + style guide + corpus + las 2 skills de review + el artículo. Correr `baseo-content-review` y `baseo-onpage-audit`.

| Verdict | Acción |
|---|---|
| PASS (5/5) | A finalize. |
| PASS WITH EDITS (4/5) | Edits menores, a finalize. |
| REVISE (3/5) | Devolver con flags. Re-correr desde el stage que aplique. |
| REFRAME (2/5) | Mismo topic, ángulo distinto. Desde outline o brief. |
| KILL (1/5) | Matar el topic. Suele ser: audiencia seller, fabricación de servicio/claim, garantías, o price disclosure. |

### Paso 9 — Finalize (Publisher)

Chat nuevo: "Corre baseo-finalize sobre el polished-article.md aprobado" (adjuntar polished + brief + context). Output: `[slug].docx` con cajas amarillas/naranjas y CTA box. Finalize además hace spot-check de compliance (precios, garantías, CTA URL) y se detiene si algo se coló.

### Paso 10–11 — Drive y publicación (Publisher)

Subir a Drive → reemplazar cajas amarillas con visuales reales → verificar cajas naranjas con Eddie → polish → copiar al CMS → publicar. Mover la carpeta del artículo a `articles-published/`.

---

## 5. Diferencias clave vs el sistema Schemafy

Para quien ya conoce el sistema Schemafy, esto es lo que cambió:

| Schemafy | BASEO | Por qué |
|---|---|---|
| Feature catalog (plugin) | Service catalog + Out-of-scope services | El "producto" es la agencia; el riesgo es prometer servicios que no vendemos |
| Future features (roadmap) | Out-of-scope services | No hay roadmap de features; hay servicios que NO vendemos pero sí enseñamos (tangential) |
| Tier/price disclosure policy | Package/price disclosure policy + ban de garantías | Mismo mecanismo; se añade la prohibición de promesas de rankings/leads (trust-killer #1 con este ICP) |
| `schemafy-ui-reference.md` | `baseo-services-reference.md` | No hay UI; hay procesos de delivery. `[WORKFLOW:]` → `[PROCESS: ...]` |
| Personas P1–P5 (WordPress operators) | Personas B1–B5 (investors: Burned, PPC-Dependent, Invisible Veteran, Scaling, AEO First-Mover) | Del ICP de cash home buyers |
| — | **Approved claims library** | Nuevo: los resultados de clientes solo se citan verbatim desde una lista aprobada. El equivalente agency de "no inventar features" |
| — | **Audience gate (sellers)** | Nuevo: el error fatal específico de esta vertical es escribirle al motivated seller |
| CTA: install plugin / feature pages | CTA universal: el free audit | Es el risk-reversal de la marca; no existe "install free" |
| Voice: senior practitioner (Ahrefs) | Voice: operator-to-operator + translation gap (leads, no conversions; cost per deal, no ROAS) | El ICP detecta agency-speak como ofuscación |

Todo lo demás (orquestador, resume, STOPs, self-check determinístico, review con hard caps, finalize a docx, corpus CSV, carpeta por artículo) funciona idéntico.

---

## 6. Troubleshooting común

### "brief-enrich hizo STOP"
- ¿El cluster era seller-facing ("sell my house fast tampa")? → contenido de cliente, no del blog BASEO. Topic equivocado.
- ¿El angle framea a BASEO como provider de algo out-of-scope (CRM, mail, web design)? → reframe tangential o matar.
- ¿Pain fuera de dominio (rehab costs, contracts)? → no alimenta el funnel; matar.

### "research devolvió stats sin source"
Los stat candidates de la claims library son TEMAS pre-aprobados, no citas listas. Si WebSearch no encontró la fuente real, el stat se cae del artículo. Supplementa manualmente (ej. el report de Carrot) y re-corre desde outline.

### "self-check flagea un claim que yo sé que es verdad"
Si no está verbatim en la Approved claims library de `baseo-context.md`, el sistema lo flagea por diseño. Si el claim es real y quieres usarlo: agrégalo a la library (con su detalle y contexto) y re-corre. La library es la única puerta de entrada de resultados first-party.

### "el artículo suena a pitch de agencia"
- Revisa el persona dial del brief: ¿B1 estaba marcado? El drafter debe hacer el "B1 read-through".
- Identifica la frase específica y agrégala a Banned trust-killers o agency-speak en context. El sistema la detectará la próxima vez.

### "BASEO aparece muy poco / demasiado"
- ¿Active o Tangential? Tangential = 1–3 menciones por diseño.
- Active: TOFU 2–4, MOFU 4–8, BOFU protagonista. Si el outline no asignó menciones, el drafter no las inventa. Re-corre outline.

### "content-review devolvió KILL inesperado"
Lee Hard cap status: casi siempre es price disclosure accidental, una frase con forma de garantía, un claim no aprobado (¿usaste "42"?), o un pasaje dirigido a sellers.

### "una skill truncó por output tokens"
Re-correr esa skill sola en chat fresh. Drafts > 3,000 palabras: dividir en 2 sesiones.

### "quiero correr solo una skill"
Todas son invocables solas: "Corre baseo-self-check sobre este draft escrito a mano", "Corre baseo-content-review sobre este artículo viejo del blog", etc.

---

## 7. Mantenimiento

### Semanal
- `baseo-corpus.csv`: agregar los artículos publicados esa semana.

### Mensual
- Revisar discrepancias reviewer vs sistema → ajustar context/style-guide (clichés nuevos, patrones de voz).
- Revisar la Approved claims library: ¿hay resultados nuevos de clientes que agregar? ¿Números que actualizar (el $161/lead "dropping every month")?
- Revisar stats externos por recencia: los de AI search caducan rápido (< 1 año).

### Por cambio de delivery u oferta
- `baseo-services-reference.md`: cada cambio en cómo se entrega un servicio.
- `baseo-context.md`: servicio nuevo → catálogo; servicio descontinuado → moverlo a out-of-scope; cambio de pricing → tabla interna (recordatorio: nunca se publica).

### Al contratar escritores
- Onboarding: leer `baseo-context.md` + `baseo-style-guide.md` (~15 min) + el ICP completo si está disponible.
- Demo end-to-end con un artículo real.

---

## 8. Cómo clonar este sistema a una nueva vertical

Este sistema es la segunda instancia del patrón (Schemafy fue la primera). Para la vertical N+1:

1. **Copia la carpeta `skills/`** y renombra el prefijo (`baseo-` → `[vertical]-`), incluyendo las referencias cruzadas DENTRO de los archivos (buscar y reemplazar "baseo-" en todos).
2. **Reescribe las 3 referencias** (es el 90% del trabajo):
   - `[vertical]-context.md`: personas desde el ICP de esa vertical, catálogo de servicios/producto, claims library, banned phrases específicos del nicho (cada ICP tiene su propio "translation gap"), URLs canónicas, pain map, anti-personas.
   - `[vertical]-style-guide.md`: la voz del nicho. Las reglas estructurales (intros, H2s, rhythm, snippets, no em-dashes) se conservan; cambian los ejemplos, el "translation gap" y la regla de empatía.
   - `[vertical]-services-reference.md` (o ui-reference si es producto): qué se puede afirmar sobre delivery/producto.
3. **Ajusta los puntos vertical-específicos en las 9 skills de pipeline** (son pocos): el audience gate del brief-enrich, las señales de persona, los tiers de fuentes del research, los patterns de price/claim del self-check, el gut check del content-review, el CTA universal.
4. **Crea el corpus CSV** de esa vertical.
5. **Corre 1 artículo Active + 1 Tangential de prueba** y calibra.

Tiempo estimado por vertical una vez dominado el patrón: el grueso es escribir el context y conseguir/usar el ICP. Sin ICP escrito, hazlo primero — es el insumo que hace que todo lo demás funcione.

---

## 9. Resumen de invocación rápida

| Quiero... | Skill | Cómo invocar |
|---|---|---|
| Crear un artículo end-to-end | `baseo-create-article` | "Corre baseo-create-article con: topic [...], cluster [...], heading structure [...]" |
| Solo el outline desde un brief | `baseo-outline` | "Corre baseo-outline con este brief y dossier" |
| Re-correr solo el draft | `baseo-draft` | "Corre baseo-draft con este outline" |
| Self-check de un draft manual | `baseo-self-check` | "Corre baseo-self-check sobre este draft" |
| Review editorial | `baseo-content-review` | "Corre baseo-content-review sobre este artículo" |
| Auditar on-page | `baseo-onpage-audit` | "Corre baseo-onpage-audit sobre este artículo" |
| Convertir a .docx | `baseo-finalize` | "Corre baseo-finalize sobre este polished article" |

---

## 10. Próximos pasos sugeridos

1. **Completar los pendientes de Eddie** (sección 3): URLs canónicas, 28-vs-42, corpus, services-reference.
2. **Test end-to-end con 1 artículo Active** (sugerencia: "How to vet an SEO agency after you've been burned" — B1, MOFU, usa la claims library a fondo) **y 1 Tangential** (sugerencia: "Speed to lead: el 93.7% de los investors no hace follow-up" — educación pura, 1–3 menciones).
3. **Documentar fricción** y calibrar context/style-guide.
4. **Gold standards**: cuando haya 2-3 artículos publicados que representen el voice, referenciarlos en el style guide.
5. **Onboarding del equipo** cuando el sistema esté calibrado.

---

## Apéndice: arquitectura del sistema

```
┌──────────────────────────────────────────────────────────────┐
│  REFERENCIA (no invocables — las leen las skills)            │
│                                                              │
│  baseo-context.md            ── personas + servicios +      │
│                                 claims library + reglas     │
│  baseo-style-guide.md        ── voz + estructura            │
│  baseo-services-reference.md ── delivery cheat sheet        │
│  baseo-corpus.csv            ── sitemap del blog            │
└──────────────────────────────────────────────────────────────┘
         ↑ leídas por todas las skills de abajo

┌─ CREATION (writer invoca) ───────────────────────────────────┐
│   baseo-create-article ← ORQUESTADOR                         │
│        ├─ 1. brief-enrich   → brief.md                       │
│        ├─ 2. research       → research-dossier.md            │
│        ├─ 3. outline        → outline.md                     │
│        ├─ 4. draft          → draft.md                       │
│        └─ 5. self-check     → polished-article.md            │
│                              + self-check-report.md          │
└──────────────────────────────────────────────────────────────┘
         ↓ polished-article.md va al reviewer

┌─ REVIEW (reviewer invoca) ───────────────────────────────────┐
│   baseo-content-review  → verdict editorial                  │
│   baseo-onpage-audit    → publication-readiness              │
└──────────────────────────────────────────────────────────────┘
         ↓ si PASS / PASS WITH EDITS

┌─ PRODUCTION (publisher invoca) ──────────────────────────────┐
│   baseo-finalize        → [keyword-slug].docx                │
└──────────────────────────────────────────────────────────────┘
         ↓ Drive → visuales + verificación PROCESS → publicar
```

---

Fin del manual. Versión inicial — sistema BASEO Cash Home Buyers, espejo del sistema Schemafy.
