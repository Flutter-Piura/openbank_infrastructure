#!/usr/bin/env sh
set -eu

api_url="${OPENBANK_API_URL:-http://127.0.0.1:3000}"
work_dir="$(mktemp -d)"
trap 'rm -rf "$work_dir"' EXIT

curl --fail --silent --show-error "$api_url/health" > "$work_dir/health.json"
curl --fail --silent --show-error \
  --header 'Content-Type: application/json' \
  --data '{"email":"demo@openbank.local","password":"OpenBankDemo!2026"}' \
  "$api_url/v1/auth/login" > "$work_dir/session.json"

node -e '
  const fs = require("node:fs");
  const health = JSON.parse(fs.readFileSync(process.argv[1], "utf8"));
  const session = JSON.parse(fs.readFileSync(process.argv[2], "utf8"));
  if (health.status !== "ok") throw new Error("health check failed");
  if (session.tokenType !== "Bearer" || !session.accessToken) {
    throw new Error("login smoke check failed");
  }
' "$work_dir/health.json" "$work_dir/session.json"

echo "OpenBank smoke test passed at $api_url"
