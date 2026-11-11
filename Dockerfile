FROM mcr.microsoft.com/playwright/mcp
ENTRYPOINT ["node", "cli.js", \
  "--headless", \
  "--browser", "chromium", \
  "--no-sandbox", \
  "--host", "0.0.0.0", \
  "--port", "8931", \
  "--allowed-hosts", "*", \
  "--user-data-dir", "/data/perfil"]
