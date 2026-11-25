FROM busybox:1.38.0-glibc

LABEL org.opencontainers.image.source="https://github.com/Keroosha/superbitok-tg-landing"

COPY index.htm /www/index.htm
COPY index_files/ /www/index_files/
RUN ln -s index.htm /www/index.html

USER 65532:65532
EXPOSE 8080
ENTRYPOINT ["httpd", "-f", "-p", "8080", "-h", "/www"]
