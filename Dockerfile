FROM mcr.microsoft.com/playwright:focal

ENV PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD 1

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npx playwright install --with-deps

ENV PORT 7860

EXPOSE 7860

CMD ["node", "app.js"]
