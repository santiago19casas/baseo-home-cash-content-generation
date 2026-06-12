# SETUP — Integración WordPress (BASEO)

Ficha técnica del setup de publicación. Vive en este proyecto; cualquier sesión que trabaje sobre esta carpeta la lee directo. No contiene credenciales.

Última verificación: subida probada end-to-end (drafts creados: smoke test + artículo real `seo-for-estate-agents`), ACF meta confirmado por REST.

---

## Dominios

| Pieza | Valor |
|---|---|
| Sitio en vivo (frontend) | `https://www.thebaseo.com` — Astro headless |
| Backend WordPress (REST) | `https://cms.thebaseo.com` — solo API, no renderiza |
| Endpoint de creación | `POST https://cms.thebaseo.com/wp-json/wp/v2/posts` |

Astro lee la REST API de `cms.thebaseo.com` y renderiza el sitio en `www.thebaseo.com`. WordPress es backend puro.

---

## Cómo se publica (skill `baseo-wp-upload`)

Flujo de **2 fases** (el sandbox de Cowork no tiene salida de red → 403 a hosts externos):

1. **Fase A (Cowork)**: la skill convierte el polished article a HTML, arma `wp-payload-[slug].json` + `wp-upload-[slug].sh`, y devuelve el comando de Terminal.
2. **Fase B (Mac del usuario)**: se pega el comando en Terminal; el script local hace el POST real con Basic Auth.

Nunca intentar el POST desde Cowork.

---

## Payload (qué se manda)

```json
{
  "title": "[H1 del artículo]",
  "slug": "[slug del brief]",
  "status": "draft",
  "content": "[HTML del cuerpo, sin el H1]",
  "excerpt": "[meta description — nativo, Astro lo ignora]",
  "acf": { "meta_title": "...", "meta_description": "..." }
}
```

- **Status siempre `draft`.** Publicar es manual en WP.
- El **meta SEO va en ACF** (`meta_title`, `meta_description`) bajo el `acf` key. Esto es lo que Astro lee en producción — el meta nativo de WP NO se usa. ✅ Confirmado que el `acf` write funciona vía REST (field group "SEO MetaData" en Posts, con "Show in REST" activo).
- El **schema (JSON-LD) lo genera Astro** en render time. La skill no manda schema.
- El H1 del markdown → campo `title` de WP (no va dentro de `content`).

---

## Credenciales (`.env` en la raíz del proyecto, gitignored)

```bash
WP_URL=https://cms.thebaseo.com
WP_USER=[usuario de WordPress]
WP_APP_PASSWORD="XXXX XXXX XXXX XXXX"
```

- App Password se genera en WP → Users → Profile → Application Passwords.
- **Tiene espacios → SIEMPRE entre comillas dobles** en el `.env` (si no, bash rompe la auth).
- El `.env` nunca se commitea, nunca aparece en chat ni en archivos de la skill. Solo el runner lo lee vía `source`.

---

## URLs canónicas (para CTAs y links internos)

Verificadas en `skills/baseo-context.md` § Canonical URLs:

| Propósito | URL |
|---|---|
| Root | `https://www.thebaseo.com` |
| Pilar cash buyers (service landing) | `https://www.thebaseo.com/home-cash-buyers-seo/` |
| CTA audit gratis (default) | `https://www.thebaseo.com/home-cash-buyers-seo/#hero` |
| Contacto | `https://www.thebaseo.com/contact/` |
| Blog root | `https://www.thebaseo.com/home-cash-buyers-seo/resources/` |
| Case studies | `https://www.thebaseo.com/home-cash-buyers-seo/case-studies/` |

---

## Si algo falla en el POST

| Error | Causa | Fix |
|---|---|---|
| `No .env found` | Falta o ubicación equivocada | Crear `.env` en la raíz del proyecto |
| `401` | Usuario/password mal, o App Password sin comillas | Revisar WP_USER; comillas dobles en WP_APP_PASSWORD |
| `403` | Sin permiso, o plugin de seguridad bloquea REST | Usar cuenta Author/Editor; whitelist REST |
| `404` | WP_URL/endpoint mal | Confirmar `https://cms.thebaseo.com` |
| Draft creado pero meta vacío en Astro | Nombres ACF distintos o `acf` no escribible | Verificar nombres = `meta_title`/`meta_description` y "Show in REST" |
