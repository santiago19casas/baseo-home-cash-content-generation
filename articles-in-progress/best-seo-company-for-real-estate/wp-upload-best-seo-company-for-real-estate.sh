#!/usr/bin/env bash
set -euo pipefail

# Self-locate: this script lives in articles-in-progress/[slug]/, project root is two levels up.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PAYLOAD_FILE="$SCRIPT_DIR/wp-payload-best-seo-company-for-real-estate.json"

# 1. Validate .env exists at the project root
if [ ! -f "$PROJECT_ROOT/.env" ]; then
  echo "❌ No .env found at $PROJECT_ROOT/.env"
  echo "   Create it with WP_URL, WP_USER, WP_APP_PASSWORD (see the skill's .env setup)."
  exit 1
fi

# 2. Load credentials
set -a
# shellcheck disable=SC1091
source "$PROJECT_ROOT/.env"
set +a

# 3. Validate required vars
: "${WP_URL:?❌ WP_URL not set in .env}"
: "${WP_USER:?❌ WP_USER not set in .env}"
: "${WP_APP_PASSWORD:?❌ WP_APP_PASSWORD not set in .env}"

if [ ! -f "$PAYLOAD_FILE" ]; then
  echo "❌ Payload not found: $PAYLOAD_FILE"
  exit 1
fi

ENDPOINT="${WP_URL%/}/wp-json/wp/v2/posts"
echo "→ Creating draft at $ENDPOINT"

# 4. POST with Basic Auth, capture body + HTTP status separately
RESPONSE="$(curl -sS -w $'\n%{http_code}' -X POST "$ENDPOINT" \
  -u "${WP_USER}:${WP_APP_PASSWORD}" \
  -H "Content-Type: application/json" \
  --data-binary @"$PAYLOAD_FILE")" || {
    echo "❌ Network error reaching $ENDPOINT (check the URL and your connection)."
    exit 1
  }

HTTP_BODY="$(printf '%s' "$RESPONSE" | sed '$d')"
HTTP_CODE="$(printf '%s' "$RESPONSE" | tail -n1)"

# 5. Handle status
case "$HTTP_CODE" in
  201)
    POST_ID="$(printf '%s' "$HTTP_BODY" | python3 -c 'import sys,json;print(json.load(sys.stdin).get("id",""))' 2>/dev/null || true)"
    if [ -z "$POST_ID" ]; then
      POST_ID="$(printf '%s' "$HTTP_BODY" | sed -n 's/.*"id":\([0-9]*\).*/\1/p' | head -n1)"
    fi
    echo "✅ Draft created. Post ID: $POST_ID"
    echo "   Edit: ${WP_URL%/}/wp-admin/post.php?post=${POST_ID}&action=edit"
    echo "   Status: draft (publish manually in WP when ready)."
    ;;
  401)
    echo "❌ 401 Unauthorized. The WP_USER or WP_APP_PASSWORD is wrong."
    echo "   App Password format is 'ABCD 1234 EFGH 5678' and MUST be quoted in .env."
    exit 1
    ;;
  403)
    echo "❌ 403 Forbidden. The user lacks permission to create posts, or a security plugin/firewall is blocking the REST API."
    exit 1
    ;;
  404)
    echo "❌ 404 Not Found. The REST endpoint is wrong. Check WP_URL (expected ${WP_URL%/}/wp-json/wp/v2/posts)."
    exit 1
    ;;
  *)
    echo "❌ Upload failed (HTTP $HTTP_CODE)."
    echo "$HTTP_BODY"
    exit 1
    ;;
esac
