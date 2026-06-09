# Setup quickstart — Primera prueba del sistema BASEO

Guía rápida para llegar de cero a tu primera prueba end-to-end. ~30-45 min de setup inicial + tiempo del test.

Vertical: **Cash Home Buyers**. Blog destino: **thebaseo.net/blog/**. Lector objetivo: el **investor** (prospecto de la agencia), nunca el seller.

---

## Antes de empezar

Necesitas:

- Cuenta de Cowork activa (con plan Claude Max recomendado, mínimo Pro)
- (Opcional) Cuenta de Ahrefs — el sistema actual NO la requiere (usa WebSearch). Solo necesaria si en el futuro reintegramos Ahrefs para datos de SERP enriquecidos.
- Acceso al sitemap / blog de thebaseo.net (para generar el corpus CSV)
- 30-45 min de setup + 30-60 min para el primer test

---

## Setup mínimo (para correr el primer test)

### Paso 1 — Crear la carpeta de trabajo (5 min)

Si clonaste el repo siguiendo el `ONBOARDING.md`, ya tienes la carpeta. Si no, créala y móntala en Cowork. Sugerencia:

```
~/Desktop/baseo-home-cash-content-generation/
```

Adentro, asegúrate de tener estas sub-carpetas (las de artículos puedes crearlas vacías; la pipeline crea `articles-in-progress/` automáticamente si no existe):

```
~/Desktop/baseo-home-cash-content-generation/
├── skills/
├── articles-in-progress/
└── articles-published/
```

### Paso 2 — Confirmar los archivos del sistema (5 min)

En `skills/` deben estar los 12 archivos:

**Referencia (3 archivos)**:
- `baseo-context.md`
- `baseo-style-guide.md`
- `baseo-services-reference.md`

**Review (2 skills)**:
- `baseo-content-review.md`
- `baseo-onpage-audit.md`

**Creación (6 skills)**:
- `baseo-brief-enrich.md`
- `baseo-research.md`
- `baseo-outline.md`
- `baseo-draft.md`
- `baseo-self-check.md`
- `baseo-create-article.md`

**Producción (1 skill)**:
- `baseo-finalize.md`

**Documentación** (en la raíz del repo):
- `MANUAL-sistema-baseo.md` (referencia completa del equipo)

### Paso 3 — Crear el corpus CSV (15-30 min)

Esto es lo más laborioso del setup. Tienes dos opciones según cuántos artículos publicados tengas.

#### Opción A — Manual (si tienes ≤30 artículos publicados)

1. Abre `baseo-corpus-template.csv` en Excel o Google Sheets.
2. Para cada artículo publicado en thebaseo.net/blog/, rellena una fila con los datos.
3. Guarda como `baseo-corpus.csv` en la raíz del repo (junto a la carpeta `skills/`, NO adentro).

**Tiempo estimado**: ~30 segundos por artículo. 30 artículos = ~15 min.

#### Opción B — Script automatizado (si tienes >30 artículos)

Pídele a Claude que escriba un Python script que:
1. Lea el sitemap de thebaseo.net
2. Por cada URL del blog, fetch la página
3. Extraiga title, meta description, H1
4. Te deje la columna `primary_keyword` con un default que tú revisas manualmente

Para tu primer test, **Opción A es suficiente** — basta con cargar tus 5-10 artículos más importantes para validar que el internal linking funciona.

#### Estructura del CSV

```csv
url,title,meta_description,primary_keyword
```

| Columna | Qué va | Cómo se obtiene |
|---|---|---|
| `url` | URL completa del artículo | Copia del sitemap/blog |
| `title` | Title tag | Inspect element del HTML |
| `meta_description` | Meta description | Inspect element |
| `primary_keyword` | Keyword principal | Lo definiste cuando escribiste el artículo |

4 columnas — minimalista pero suficiente. Las skills (`baseo-research`, `baseo-onpage-audit`) usan estos campos para sugerir internal links a artículos relevantes del corpus. Las skills toleran columnas extra sin romperse, así que puedes agregar `funnel_stage` o `persona` más adelante.

### Paso 4 — Montar la carpeta en Cowork (5 min)

En Cowork:
1. Abre las settings de tu workspace
2. Mount folder → selecciona `~/Desktop/baseo-home-cash-content-generation/`
3. Verifica: en un chat nuevo escribe "lista los archivos en la working folder" y debería responder con los 12 skills + el CSV.

### Paso 5 — Verificar WebSearch (1 min)

WebSearch viene built-in en Claude/Cowork, no requiere configuración. Para confirmar:

1. En un chat de prueba, escribe: `Search the web for "cash home buyer SEO 2026"`
2. Claude debería devolver resultados con URLs y snippets en pocos segundos.

---

## Cómo correr el primer test

### Paso 6 — Elegir el artículo de prueba (5 min)

**Recomendación**: elige un topic Active dirigido a B1 o B2 (los que convierten más rápido) y no demasiado complejo. Buenos candidatos para test:

- "What your SEO agency's report should show you (and what it's hiding)"
  - Persona: B1 (The Burned Investor)
  - Funnel: MOFU
  - Servicios primados: Lead-Focused Reporting + Diagnostic Audit

- "PPC vs organic: the real cost per deal of every REI marketing channel in 2026"
  - Persona: B2 (The PPC-Dependent Operator)
  - Funnel: MOFU
  - Ángulo: deal-math comparison (organic gana por mérito)

**Evita para el primer test**:
- Topics dirigidos a sellers — la skill va a STOP en brief-enrich (gate de audiencia)
- Topics que prometan rankings/leads garantizados — el sistema los bloquea
- Topics super complejos con clusters de 10+ keywords — el outline va a estar denso, harder to verify

### Paso 7 — Producir el heading structure (15-30 min, paso manual upstream)

Con el topic + cluster elegidos:

1. Busca el primary keyword en Google
2. Abre los top 10 resultados
3. Extrae el heading structure de cada uno (H2s y H3s)
4. Identifica patrones comunes y gaps
5. Construye TU heading structure (tabla con Heading | Level | Guideline)

Este paso lo haces a mano o con tu flujo de AI actual. NO es parte de las skills construidas.

### Paso 8 — Abrir chat nuevo y correr la pipeline

En Cowork:

1. **Abre un chat NUEVO** (importante para token efficiency)
2. **Verifica que está montada la working folder** y que los skills están disponibles
3. Pega este prompt:

```
Necesito que corras el pipeline completo de creación de un artículo BASEO.

Carga primero los siguientes reference files de la working folder:
- skills/baseo-context.md
- skills/baseo-style-guide.md
- skills/baseo-services-reference.md
- baseo-corpus.csv

Después corre baseo-create-article (skills/baseo-create-article.md) con estos inputs:

Topic: [tu topic]
Primary keyword: [tu primary keyword]
Cluster: [keyword1, keyword2, keyword3, keyword4]

Heading structure:
[pega la tabla aquí]

Angle context: [opcional — déjalo vacío para el primer test]
Language: English [o Spanish si aplica]
```

### Paso 9 — Observar y verificar

Claude va a:
1. Crear `articles-in-progress/[primary-keyword-slug]/`
2. Correr brief-enrich → guarda `brief.md`
3. Correr research (3–6 WebSearch / web_fetch calls) → guarda `research-dossier.md`
4. Correr outline → guarda `outline.md`
5. Correr draft → guarda `draft.md`
6. Correr self-check → guarda `polished-article.md` + `self-check-report.md`

Al final te muestra: pipeline status table, verdict del self-check, top 3 flags, y links a los archivos generados.

**Tiempo esperado**: 8-15 minutos según largo del artículo.

### Paso 10 — Evaluar el resultado

Abre `polished-article.md` y revisa:

- ¿La voz se siente BASEO? (operator-to-operator, deal math, cero agency-speak)
- ¿El artículo le habla a un investor, no a un seller?
- ¿Los claims de resultados salen de la Approved claims library? ¿Los stats externos tienen source URL real?
- ¿Cero garantías de rankings/leads/plazos?
- ¿El CTA es el free Diagnostic Audit y apunta a una URL real (`https://thebaseo.net/#contact`)?
- ¿Los placeholders `[PROCESS: ...]` están en sitios lógicos para verificación humana?

Abre `self-check-report.md` y revisa los flags. Si dice "Ready for review", puedes mandarlo al reviewer. Si dice "Needs writer attention", resuelve los top 3 flags primero.

### Paso 11 — Probar la fase de review

Abre OTRO chat nuevo dedicado a la review:

```
Carga primero los reference files:
- skills/baseo-context.md
- skills/baseo-style-guide.md
- baseo-corpus.csv

Después corre baseo-content-review (skills/baseo-content-review.md)
sobre el artículo en articles-in-progress/[slug]/polished-article.md.

Luego corre baseo-onpage-audit (skills/baseo-onpage-audit.md) sobre
el mismo artículo.
```

Lee ambos reports. ¿El verdict del content-review (PASS / PASS WITH EDITS / REVISE / REFRAME / KILL) coincide con tu juicio editorial? ¿Los flags de on-page-audit son accionables?

### Paso 12 — Probar finalize (si pasó review)

En el mismo chat (o uno nuevo):

```
Corre baseo-finalize sobre polished-article.md aprobado.
```

Output: `articles-in-progress/[slug]/[slug].docx`

Súbelo a Drive, abre como Google Doc, captura los visuales reales, verifica los `[PROCESS: ...]` placeholders contra cómo BASEO entrega el servicio (con Eddie), y termina ahí.

---

## Qué buscar en el primer test (evaluación honesta)

| Aspecto | ¿Pasó? | Notas |
|---|---|---|
| Pipeline corrió sin STOP | ✅ / ❌ | Si STOP, ¿qué stage y por qué? |
| brief.md identifica la persona correcta (B1–B5) | ✅ / ❌ | ¿Es la persona que tú habrías elegido? |
| Gate de audiencia bloqueó contenido a sellers | ✅ / ❌ | Si el topic era para investor, no debió disparar |
| research-dossier.md tiene 3+ fuentes Tier 1/2 | ✅ / ❌ | Cuenta fuentes |
| Claims salen de la Approved library / stats con source | ✅ / ❌ | Nada inventado |
| Cero garantías y cero precios en el draft | ✅ / ❌ | El compliance debe estar limpio |
| draft.md aplica el voice correctamente | ✅ / ❌ | Lee 2-3 secciones críticamente |
| CTA = free audit con URL real | ✅ / ❌ | `https://thebaseo.net/#contact` |
| self-check verdict coincide con tu evaluación | ✅ / ❌ | ¿Lo mandarías a review? |
| content-review verdict coincide con tu juicio | ✅ / ❌ | ¿Pasarías este artículo o lo devolverías? |
| .docx se ve bien en Drive | ✅ / ❌ | Placeholders highlighted, CTA prominente |

## Si algo falla en el primer test

| Problema | Acción |
|---|---|
| brief-enrich STOP por audiencia | El topic apuntaba a un seller. Reformúlalo para el investor |
| brief-enrich STOP por pain sin servicio | El pain no mapea a un servicio activo. Revisa el pain → service map en `baseo-context.md` |
| research devolvió < 3 fuentes Tier 1/2 | Topic muy nicho. Supplementa fuentes, o re-corre con un primary keyword más amplio |
| outline preflight ⚠️ por H2 keyword coverage | Reescribe los H2s del heading structure y re-corre desde brief-enrich |
| draft truncado a mitad de artículo | Token limit. Re-corre solo baseo-draft en chat fresh |
| content-review devuelve KILL inesperado | Lee el hard cap triggered (¿garantía? ¿precio? ¿claim no aprobado? ¿audiencia seller?). Identifica y corrige |

## Después del primer test

Si todo salió razonable:

1. **Repite con 1 artículo Tangential** para validar ese path también
2. **Documenta lo que aprendiste** — qué flags eran falsos positivos, qué clichés agregar, qué patrones del voice no captura bien
3. **Itera el sistema** — actualiza `baseo-context.md` o `baseo-style-guide.md` basado en lo que viste
4. **Onboarding del equipo** — cuando el sistema esté calibrado, comparte `MANUAL-sistema-baseo.md` con escritores y reviewer

---

## Recursos

- **Manual completo**: `MANUAL-sistema-baseo.md` (referencia detallada)
- **CSV template**: `baseo-corpus-template.csv` (llena, renombra a `baseo-corpus.csv`)
- **Las 12 skills**: en la carpeta `skills/` de tu working folder
- **Guía de git**: `ONBOARDING.md`
