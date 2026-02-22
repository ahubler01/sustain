# Simple static site for Render
FROM node:20-alpine

WORKDIR /app

# Serve static files; Render sets PORT at runtime
RUN npm install -g serve

COPY presentation.html index.html

EXPOSE 10000

# Render provides PORT; default for local runs
ENV PORT=10000
CMD ["sh", "-c", "serve -s . -l ${PORT}"]
