ARG VERSION
FROM mcr.microsoft.com/playwright:$VERSION

RUN npx playwright install msedge

