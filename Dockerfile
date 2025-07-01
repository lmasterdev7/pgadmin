FROM dpage/pgadmin4:latest

USER root

# Usamos apk en lugar de apt-get
RUN apk update && \
    apk add --no-cache zstd

USER pgadmin

EXPOSE 80

