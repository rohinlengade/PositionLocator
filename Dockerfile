FROM nginx:1.27-alpine
COPY config.template.js /usr/share/nginx/html/
COPY --chmod=755 40-config.sh /docker-entrypoint.d/
COPY route-generator.html /usr/share/nginx/html/index.html
EXPOSE 80