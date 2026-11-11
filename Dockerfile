FROM mcr.microsoft.com/playwright:v1.54.0-noble
WORKDIR /app
RUN npm install @playwright/mcp@latest
RUN npx @playwright/mcp install-browser chrome-for-testing
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
ENTRYPOINT ["sh", "/app/start.sh"]
