# Utiliza la imagen base oficial de pgAdmin
FROM dpage/pgadmin4:latest

# Cambiamos a root para poder instalar paquetes
USER root

# Usamos Alpine Package Keeper (apk) ya que es una imagen basada en Alpine
RUN apk update && \
    apk add --no-cache zstd

# Regresamos al usuario sin privilegios
USER pgadmin

# Expón el puerto del UI
EXPOSE 80

