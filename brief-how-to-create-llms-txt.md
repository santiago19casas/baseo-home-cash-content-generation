# Content Brief — "How to Create llms.txt"

> SERP top 5 y People Also Ask reconstruidos con web search (no fueron pegados). Ángulo y tipo de página propuestos por defecto: guía práctica paso a paso (blog post) para el blog de Schemafy.

## 1. Resumen del brief

- **Working Title:** How to Create an llms.txt File (Step-by-Step Guide for %currentyear%)
- **Primary Keyword:** how to create llms.txt
- **Secundarias:** llms.txt file, llms.txt generator, what is llms.txt, llms.txt example, llms-full.txt, llms.txt format
- **Intención de búsqueda:** Informacional / how-to. El usuario quiere entender qué es el archivo y crear el suyo hoy. Intención secundaria transaccional ligera (busca herramienta/generador).
- **Audiencia y tono:** Marketers, SEOs, dueños de sitio y devs de documentación que quieren visibilidad en respuestas de IA. Tono práctico, con autoridad, sin jerga innecesaria; orientado a la acción.
- **Ángulo (una línea):** La guía más clara y completa para crear un llms.txt válido según la spec oficial —manual y con generador— y hacerlo realmente útil para que los LLMs citen tu sitio.

## 2. Metadatos SEO

- **Meta Title:** How to Create an llms.txt File (%currentyear% Guide) — 47 chars
- **Meta Description:** Learn how to create an llms.txt file step by step. Format, a copy-paste example, generators, and where to host it so AI tools cite your site. — 143 chars
- **URL Path:** `/how-to-create-llms-txt/`

## 3. Heading Structure (HTML)

```
<h1>How to Create an llms.txt File: A Step-by-Step Guide</h1>
  <h2>What Is an llms.txt File?</h2>
    <h3>llms.txt vs. robots.txt vs. sitemap.xml</h3>
    <h3>llms.txt vs. llms-full.txt</h3>
  <h2>Do You Actually Need an llms.txt File?</h2>
  <h2>The llms.txt Format (Official Specification)</h2>
  <h2>How to Create an llms.txt File Manually (Step by Step)</h2>
    <h3>Step 1: Add the H1 title</h3>
    <h3>Step 2: Write the blockquote summary</h3>
    <h3>Step 3: Add optional context</h3>
    <h3>Step 4: Build your H2 file lists with links</h3>
    <h3>Step 5: Add an "Optional" section</h3>
  <h2>llms.txt Example (Copy-Paste Template)</h2>
  <h2>How to Create llms.txt With a Generator</h2>
  <h2>Where to Put the llms.txt File</h2>
  <h2>How to Test and Validate Your llms.txt</h2>
  <h2>llms.txt Best Practices and Common Mistakes</h2>
  <h2>Beyond llms.txt: Structured Data for AI Visibility</h2>
  <h2>Frequently Asked Questions</h2>
    <h3>Is llms.txt a Google ranking factor?</h3>
    <h3>Do AI tools actually read llms.txt?</h3>
    <h3>What's the difference between llms.txt and llms-full.txt?</h3>
    <h3>Do I need a .md version of every page?</h3>
    <h3>Where do I put the llms.txt file?</h3>
```

## 4. Tabla de outline con guidelines

| H | Heading | Guidelines |
|---|---------|-----------|
| H1 | `<h1>How to Create an llms.txt File: A Step-by-Step Guide</h1>` | Intro de 2–3 párrafos. En las primeras 2 frases define qué es llms.txt (archivo markdown en la raíz del dominio que guía a los LLMs sobre qué contenido priorizar) y promete el resultado: crear uno válido hoy, manual o con generador. Menciona que el estándar fue propuesto por Jeremy Howard (Answer.AI) en sept. 2024. Keywords: create llms.txt, llms.txt file. No listar; prosa breve y directa. ~120 palabras. |
| H2 | `<h2>What Is an llms.txt File?</h2>` | Explica que es un archivo markdown alojado en `tudominio.com/llms.txt` que ofrece a los LLMs una visión curada y en texto limpio del sitio, porque los context windows no alcanzan para procesar HTML completo con nav, ads y JS. Aclara que sirve sobre todo en inferencia (cuando un usuario pide info), no en entrenamiento. Enlaza a la spec oficial (llmstxt.org). 100–140 palabras, tono explicativo. |
| H3 | `<h3>llms.txt vs. robots.txt vs. sitemap.xml</h3>` | Tabla o comparación en prosa. robots.txt = qué pueden rastrear los bots; sitemap.xml = lista de todas las páginas indexables para buscadores; llms.txt = resumen curado y LLM-friendly con solo el mejor contenido + enlaces .md. Aclara que llms.txt NO reemplaza sitemap ni robots: coexiste. Keywords: llms.txt vs robots.txt. ~120 palabras. |
| H3 | `<h3>llms.txt vs. llms-full.txt</h3>` | Explica la diferencia: `llms.txt` es el índice curado con enlaces; `llms-full.txt` concatena el contenido completo de esas páginas en un solo archivo listo para pegar en un LLM. Menciona variantes como llms-ctx.txt / llms-ctx-full.txt que genera FastHTML con `llms_txt2ctx`. Di cuándo usar cada uno. ~90 palabras. |
| H2 | `<h2>Do You Actually Need an llms.txt File?</h2>` | Sección de valor honesta (gap del SERP: pocos son equilibrados). Reconoce el debate: hoy NO es un factor de ranking de Google y un análisis de ~300k dominios sugiere impacto limitado en cómo la IA cita contenido. PERO: crawlers de OpenAI, Microsoft y otros ya rastrean llms.txt/llms-full.txt, y estudios (Developer Marketing Alliance) reportan mejor precisión factual y relevancia en respuestas de IA. Conclusión: bajo esfuerzo, upside asimétrico, especialmente para docs/SaaS. Cita SearchEngineJournal y Search Engine Land. 150–180 palabras, tono equilibrado, sin hype. |
| H2 | `<h2>The llms.txt Format (Official Specification)</h2>` | Detalla la spec exacta en orden: (1) BOM opcional; (2) UN H1 con el nombre del proyecto/sitio — única sección obligatoria; (3) blockquote con resumen corto; (4) cero o más bloques markdown (párrafos/listas, sin headings) con detalle; (5) cero o más secciones H2 con "file lists" = listas markdown de enlaces `[nombre](url)` seguidos opcionalmente de `:` y una nota. Explica el significado especial de la sección `## Optional` (URLs que se pueden omitir si se necesita menos contexto). Recalca: formato markdown a propósito, legible por humanos y parseable. Enlaza spec. Usa un bloque de código con el esqueleto. 160–200 palabras. |
| H2 | `<h2>How to Create an llms.txt File Manually (Step by Step)</h2>` | Frase puente. El grueso del how-to va en los H3 hijos. Deja claro que es la ruta con más control y calidad. ~40 palabras. |
| H3 | `<h3>Step 1: Add the H1 title</h3>` | Muestra `# Nombre del sitio/proyecto`. Es lo único obligatorio. Ejemplo real. ~50 palabras + code snippet. |
| H3 | `<h3>Step 2: Write the blockquote summary</h3>` | `> Resumen de una o dos frases` con la info clave para entender el resto del archivo. Da un ejemplo bueno vs. uno vago. ~70 palabras. |
| H3 | `<h3>Step 3: Add optional context</h3>` | Párrafos o listas (sin headings) con notas importantes: qué es el producto, qué evitar, aclaraciones. Ejemplo tipo "Important notes:". ~60 palabras. |
| H3 | `<h3>Step 4: Build your H2 file lists with links</h3>` | Corazón del archivo. Agrupa por secciones con H2 (`## Docs`, `## Examples`). Cada ítem: `- [Título](URL): descripción breve de qué responde esa página`. Recomienda enlazar a versiones `.md` limpias cuando existan. Prioriza páginas canónicas primero. ~110 palabras + snippet. |
| H3 | `<h3>Step 5: Add an "Optional" section</h3>` | Explica `## Optional` para contenido secundario que se puede saltar si el contexto es corto. ~50 palabras + snippet. |
| H2 | `<h2>llms.txt Example (Copy-Paste Template)</h2>` | Bloque de código completo y realista (adaptado del ejemplo FastHTML de la spec, pero genérico para que el lector lo copie): H1, blockquote, notas, `## Docs`, `## Examples`, `## Optional`. Debe ser plug-and-play. Debajo, 2–3 frases explicando cómo adaptarlo. Alta intención de copy → esta sección es imán de snippet y de tiempo en página. ~80 palabras de texto + snippet grande. |
| H2 | `<h2>How to Create llms.txt With a Generator</h2>` | Para quien quiere velocidad. Explica el flujo: pegar el dominio, la herramienta rastrea el sitio y genera llms.txt (y a veces llms-full.txt) siguiendo la spec; descargar/copiar; **revisar y ajustar** alrededor del contenido canónico (el output crudo casi siempre necesita curación). Menciona categorías de generadores: Firecrawl (llmstxt.firecrawl.dev / repo open source), Mintlify (para docs), plugins CMS (Yoast, AIOSEO para WordPress; VitePress; Docusaurus; Drupal). No afirmar precios; enlazar. 130–160 palabras. |
| H2 | `<h2>Where to Put the llms.txt File</h2>` | Debe ir en la raíz: `https://tudominio.com/llms.txt`, accesible públicamente (igual que robots.txt). Puede ir en un subpath si aplica. Notas por plataforma: subir a la carpeta root/public; en WordPress vía plugin o subida manual; verificar que devuelve 200 y content-type text/plain o markdown. ~90 palabras. |
| H2 | `<h2>How to Test and Validate Your llms.txt</h2>` | Cómo comprobar que funciona: (1) abre la URL en el navegador y confirma que carga; (2) valida la estructura markdown (H1 presente, enlaces correctos); (3) expande el archivo a contexto con `llms_txt2ctx` y pruébalo preguntando a varios LLMs sobre tu contenido para ver si responden bien —test recomendado por la propia spec. Menciona directorios (llmstxt.site, directory.llmstxt.cloud) para registrar/inspirarte. ~110 palabras. |
| H2 | `<h2>llms.txt Best Practices and Common Mistakes</h2>` | Lista de dos caras. Best practices: lenguaje conciso y claro; descripción informativa en cada enlace; priorizar páginas canónicas; nada de jerga sin explicar; mantenerlo actualizado. Errores comunes: volcar todo el sitemap sin curar, descripciones vacías, enlazar HTML sucio en vez de .md, saltarse el blockquote, no probar con un LLM real. Puede ir en dos sublistas cortas (aquí sí lista es apropiada). ~140 palabras. |
| H2 | `<h2>Beyond llms.txt: Structured Data for AI Visibility</h2>` | CTA / soft pitch de Schemafy. Puente natural: llms.txt le dice a la IA qué leer; el structured data (Schema.org / JSON-LD) le dice a la IA qué SIGNIFICA tu contenido. La spec oficial señala que llms.txt puede referenciar el structured data del sitio para ayudar a los LLMs a interpretarlo en contexto. Argumenta que combinar ambos maximiza citación en respuestas de IA (AEO). Presenta a Schemafy como la forma de automatizar y desplegar JSON-LD a escala sin código. Un solo CTA claro (probar Schemafy / generar tu schema). Sin exagerar; enfocado en el beneficio. 110–140 palabras. |
| H2 | `<h2>Frequently Asked Questions</h2>` | Intro de una frase. Cada FAQ en un `<h3>` con respuesta de 40–55 palabras optimizada para snippet (ver sección 5). |

## 5. FAQs (formato snippet)

**`<h3>Is llms.txt a Google ranking factor?</h3>`**
No. As of %currentyear%, Google does not use llms.txt as a ranking signal and has not confirmed support for it. Its value is different: it helps AI tools and LLM-powered assistants find and cite your best content, which matters for AI search visibility rather than traditional rankings.

**`<h3>Do AI tools actually read llms.txt?</h3>`**
Some do. Crawlers from OpenAI, Microsoft and others have been observed fetching llms.txt and llms-full.txt files, and it's mainly used at inference time when a user requests information. Adoption is still early and evidence is mixed, but the effort is low and the potential upside is meaningful.

**`<h3>What's the difference between llms.txt and llms-full.txt?</h3>`**
llms.txt is a curated index: a short summary plus links to your key pages with descriptions. llms-full.txt concatenates the full content of those pages into one file an LLM can ingest directly. Use llms.txt for structure and llms-full.txt when you want the complete text in one place.

**`<h3>Do I need a .md version of every page?</h3>`**
No, but it helps. The spec suggests offering clean markdown versions of important pages at the same URL with `.md` appended (or `index.html.md`). LLMs parse markdown far more reliably than HTML full of navigation, ads and JavaScript, so .md versions improve comprehension of your priority pages.

**`<h3>Where do I put the llms.txt file?</h3>`**
Place it at the root of your domain so it's reachable at `yourdomain.com/llms.txt`, just like robots.txt. It can optionally live in a subpath. Make sure it's publicly accessible and returns a 200 response as plain text or markdown.

## 6. Notas de diferenciación

- **Spec-exacta + práctica:** muchos posts explican qué es llms.txt pero no reproducen fielmente la especificación oficial en orden ni el significado de la sección `## Optional`. Esta pieza da los dos: teoría exacta y pasos accionables con snippets.
- **Sección "¿lo necesitas?" equilibrada:** el SERP se divide entre hype y escépticos; casi nadie da un veredicto honesto con datos de ambos lados (análisis de 300k dominios vs. crawling confirmado de OpenAI/Microsoft). Ese balance genera confianza y capta el intent de "is llms.txt worth it".
- **Template copy-paste real:** ofrecer un llms.txt completo listo para adaptar (no solo fragmentos) captura el snippet y el tiempo en página que la competencia pierde.
- **Ángulo diferencial (Schemafy):** conectar llms.txt con structured data / JSON-LD para AEO —apoyado por la propia spec, que menciona que llms.txt puede referenciar el structured data— es un puente que ningún competidor del top explota, y justifica el CTA de forma natural.
