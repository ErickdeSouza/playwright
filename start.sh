#!/bin/sh
echo "$AUTH_JSON" | base64 -d > /tmp/auth.json
exec npx @playwright/mcp@latest \
  --headless --browser chromium --no-sandbox \
  --host 0.0.0.0 --port 8931 --allowed-hosts "*" \
  --isolated --storage-state /tmp/auth.json
