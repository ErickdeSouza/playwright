FROM mcr.microsoft.com/playwright/mcp
COPY start.sh /start.sh
ENTRYPOINT ["sh", "/start.sh"]
