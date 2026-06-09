# Onboarding del equipo — BASEO Home Cash Content

Bienvenido al repo. Este documento te explica el setup inicial (una sola vez) y el flujo diario.

Este pipeline es el sistema editorial de **thebaseo.net** para la vertical de **Cash Home Buyers**. El lector objetivo es el **investor** (el prospecto de la agencia), NUNCA el motivated seller.

---

## Parte A — Setup inicial (haces esto UNA vez)

### 1. Aceptar la invitación a GitHub

- Revisa tu correo, busca un email de **GitHub** (asunto algo como "[GitHub] @santiago19casas has invited you...").
- Click en el botón **"Accept invitation"**.
- Si no tienes cuenta de GitHub todavía, créala primero en https://github.com/signup (gratis) y luego acepta la invitación.

### 2. Instalar Git en tu Mac

Abre la app **Terminal** (Cmd+Espacio → escribe "Terminal" → Enter) y ejecuta:

```bash
git --version
```

- Si te muestra una versión (ej. `git version 2.39.x`) → ya tienes git, salta al paso 3.
- Si te dice "command not found" o te abre una ventana ofreciendo instalar las "Command Line Tools" → acepta e instala. Tarda unos minutos.

### 3. Configurar Git con tu nombre y email

En Terminal, ejecuta (reemplaza con TUS datos):

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu-email@ejemplo.com"
```

**Importante:** usa el mismo email que tu cuenta de GitHub.

### 4. Crear tu Personal Access Token (PAT)

GitHub no acepta contraseña normal para subir cambios — necesitas un token.

1. Abre: https://github.com/settings/tokens?type=beta
2. Click en **"Generate new token"**.
3. Rellena así:
   - **Token name**: `mac-baseo-home-cash`
   - **Expiration**: 90 días
   - **Repository access**: "Only select repositories" → elige `baseo-home-cash-content-generation`
   - **Repository permissions** → busca **"Contents"** → cámbialo a **"Read and write"**
4. Click **"Generate token"** abajo.
5. GitHub te muestra el token UNA SOLA VEZ. **Cópialo y guárdalo en Notas** (lo necesitas en el siguiente paso). Se ve así: `github_pat_11ABC...`

### 5. Clonar el repo a tu Mac

Elige dónde quieres tener la carpeta del proyecto (ej. Escritorio). En Terminal:

```bash
cd ~/Desktop
git clone https://github.com/santiago19casas/baseo-home-cash-content-generation.git
```

Te va a pedir credenciales:
- **Username**: tu username de GitHub
- **Password**: pega el TOKEN (no tu contraseña). Al pegar no verás nada en pantalla, es normal. Solo pega y Enter.

Cuando termine, tendrás una carpeta nueva `baseo-home-cash-content-generation` en tu Escritorio con todo el proyecto adentro.

---

## Parte B — Flujo diario (haces esto cada vez que trabajas)

### Antes de empezar a trabajar — siempre haz `pull`

```bash
cd ~/Desktop/baseo-home-cash-content-generation
git pull
```

Esto trae los últimos cambios del equipo a tu Mac. **NUNCA empieces a editar sin hacer pull primero**, o vas a tener conflictos.

### Editar archivos

Edita los archivos que necesites con tu editor normal (VS Code, Cursor, lo que uses).

### Cuando termines — guardar y subir

```bash
git add .
git commit -m "Describe brevemente qué hiciste"
git push
```

Eso sube tus cambios a GitHub y queda disponible para el resto del equipo en su próximo `pull`.

**Ejemplos de buenos mensajes de commit:**
- `git commit -m "Añadir 3 URLs nuevas al corpus"`
- `git commit -m "Borrador artículo PPC vs organic cost per deal terminado"`
- `git commit -m "Corregir typo en manual"`

---

## Reglas del equipo

1. **NO toques la carpeta `skills/`.** Es responsabilidad de Eddie (el editor): mantiene `baseo-context.md` y `baseo-services-reference.md`, que definen personas, servicios, claims aprobados y reglas de compliance. Si necesitas algo de ahí, avísale.
2. **Antes de editar el corpus (`baseo-corpus.csv`), avisa por WhatsApp.** Si dos personas lo editan a la vez, se generan conflictos feos. Pide turno, edita rápido, haz push y avisa que ya está libre.
3. **Haz `pull` al empezar, `push` al terminar.** Siempre.
4. **Commits chiquitos y frecuentes son mejor que uno gigante al final del día.** Si haces 3 tareas distintas, son 3 commits.
5. **No subas archivos personales** (notas tuyas, screenshots, `.DS_Store`, etc.). El `.gitignore` ya excluye `.DS_Store`. Si dudas, pregunta antes de hacer `git add`.

---

## Reglas de contenido (lo que este sistema protege)

Aunque tu trabajo diario es git + edición, ten presente por qué existen las skills:

- **La audiencia es el investor, nunca el seller.** Cualquier artículo dirigido a un homeowner que quiere vender su casa está fuera de scope.
- **Solo servicios reales.** El sistema enforcea el catálogo activo (SEO/AEO + PPC management). No publiques que BASEO vende algo que no vende.
- **Claims solo desde la Approved claims library**, verbatim. Nada de inflar números o inventar clientes.
- **Cero garantías** de rankings/leads/plazos. Proof = resultados pasados; promesa = prohibido.
- **Sin precios ni nombres de paquetes** en editorial. El framing público es: "el pricing va en tu audit gratuito".
- **CTA universal = el free Diagnostic Audit** (`https://thebaseo.net/#contact`).

---

## ¿Algo se rompió o no entiendes?

Avisa a Eddie (o a Santiago) ANTES de seguir tocando comandos. Git es muy potente pero también muy fácil de embarrar si improvisas. Mejor parar y preguntar que arreglar un lío después.
