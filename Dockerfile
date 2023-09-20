FROM caddy:latest

LABEL \
	org.opencontainers.image.title="superbitok-tg-landing" \
	org.opencontainers.image.authors="Superbitok Team <pokupkabitka@ale.sh>" \
	org.opencontainers.image.url="https://супербиток.сука.сайт/" \
	org.opencontainers.image.source="https://github.com/Keroosha/superbitok-tg-landing"

COPY ./Caddyfile /etc/caddy/Caddyfile
COPY ./dist /var/www/html
