#!/usr/bin/env bash
# Sube el artículo pulido al WordPress de BASEO vía REST API.
# Convierte Markdown -> HTML y crea el post (draft por defecto).
#
# Requisitos: bash, curl, jq, python3 + módulo markdown (pip install markdown)
#
# Autenticación (WordPress Application Passwords):
#   1. WP Admin -> Users -> tu usuario -> Application Passwords -> crea una.
#   2. Exporta las credenciales antes de correr:
#        export WP_USER="tu_usuario"
#        export WP_APP_PASSWORD="xxxx xxxx xxxx xxxx xxxx xxxx"
#   3. (opcional) export STATUS=publish   # por defecto: draft
#
# Uso:
#   cd articles-in-progress/where-to-find-foreclosure-listings
#   ./upload-to-wordpress.sh
#
set -euo pipefail

# ============ CONFIG (edita o exporta como env vars) ============
WP_URL="${WP_URL:-https://cms.thebaseo.com}"
WP_USER="${WP_USER:?Falta: export WP_USER=tu_usuario}"
WP_APP_PASSWORD="${WP_APP_PASSWORD:?Falta: export WP_APP_PASSWORD='xxxx xxxx xxxx xxxx xxxx xxxx'}"
ARTICLE="${ARTICLE:-polished-article.md}"
STATUS="${STATUS:-draft}"                 # draft | publish
SLUG="${SLUG:-where-to-find-foreclosure-listings}"
META_TITLE="${META_TITLE:-Where to Find Foreclosure Listings in 2026 (Free & Paid)}"
META_DESC="${META_DESC:-The best places to find foreclosure listings in 2026, free and paid: HUD, HomePath, Zillow, Auction.com, and the county records most buyers skip.}"
POST_ID="${POST_ID:-}"                     # vacío = crear nuevo; con ID = actualizar
# ===============================================================

command -v curl >/dev/null || { echo "Instala curl"; exit 1; }
command -v jq   >/dev/null || { echo "Instala jq"; exit 1; }
command -v python3 >/dev/null || { echo "Instala python3"; exit 1; }
[ -f "$ARTICLE" ] || { echo "No encuentro $ARTICLE"; exit 1; }

# --- Guard: no publicar en vivo con placeholders sin resolver ---
if grep -q "{{CLIENT_OFFER_URL}}" "$ARTICLE"; then
  echo "AVISO: '$ARTICLE' todavia contiene {{CLIENT_OFFER_URL}} (CTA sin URL real)."
  if [ "$STATUS" = "publish" ]; then
    echo "ERROR: STATUS=publish con el placeholder del CTA presente. Reemplaza la URL o usa STATUS=draft." >&2
    exit 1
  fi
  echo "         Se subira como DRAFT. Reemplaza la URL del CTA antes de publicar."
fi
if grep -q "\[PROMPT FOR CHATGPT IMAGE GENERATION" "$ARTICLE"; then
  echo "AVISO: quedan bloques [SCREENSHOT]/[PROMPT...]. Genera e inserta las imagenes reales en el editor antes de publicar."
fi

# --- Titulo = primer H1; el cuerpo = todo lo demas, convertido a HTML ---
TITLE="$(grep -m1 '^# ' "$ARTICLE" | sed 's/^# //')"

BODY_HTML="$(python3 - "$ARTICLE" <<'PY'
import sys
try:
    import markdown
except ImportError:
    sys.stderr.write("Falta el modulo markdown: pip install markdown\n"); sys.exit(1)
raw = open(sys.argv[1], encoding="utf-8").read()
lines = raw.splitlines()
# Quita la primera linea H1 (se usa como titulo del post en WP)
body, dropped = [], False
for ln in lines:
    if not dropped and ln.startswith("# "):
        dropped = True
        continue
    body.append(ln)
html = markdown.markdown("\n".join(body), extensions=["extra", "sane_lists", "nl2br"])
sys.stdout.write(html)
PY
)"

# --- Payload JSON (jq escapa todo de forma segura) ---
# Nota SEO: title/excerpt de WP core != meta SEO de Yoast/RankMath.
# Si usas Yoast con los meta registrados en REST, descomenta el bloque meta.
PAYLOAD="$(jq -n \
  --arg title   "$TITLE" \
  --arg content "$BODY_HTML" \
  --arg slug    "$SLUG" \
  --arg excerpt "$META_DESC" \
  --arg status  "$STATUS" \
  '{
     title:   $title,
     content: $content,
     slug:    $slug,
     excerpt: $excerpt,
     status:  $status
     # , meta: { "_yoast_wpseo_title": "'"$META_TITLE"'", "_yoast_wpseo_metadesc": $excerpt }
   }')"

# --- Crear (POST /posts) o actualizar (POST /posts/<id>) ---
ENDPOINT="$WP_URL/wp-json/wp/v2/posts"
[ -n "$POST_ID" ] && ENDPOINT="$ENDPOINT/$POST_ID"

echo "-> $([ -n "$POST_ID" ] && echo actualizando post $POST_ID || echo creando post) (status=$STATUS) en $WP_URL"
curl -sS -X POST "$ENDPOINT" \
  --user "$WP_USER:$WP_APP_PASSWORD" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" \
  | jq '{id, status, slug, link}'

echo "Listo. Si quedo como draft, revisa en WP Admin, inserta imagenes y el CTA, y cambia a publish."
