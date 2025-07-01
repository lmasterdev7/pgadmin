# 🐘 Basado en la imagen oficial de pgAdmin
FROM dpage/pgadmin4:latest

# 👑 Cambiamos a root para instalar la librería faltante
USER root

# 🧱 Instalamos libzstd y limpiamos
RUN apt-get update && \
    apt-get install -y libzstd1 && \
    rm -rf /var/lib/apt/lists/*

# 🔐 Volvemos al usuario pgadmin
USER pgadmin

# 📍 Puerto por defecto
EXPOSE 80

# 🏁 Comando de inicio ya está definido por la imagen base (no necesitas cambiar nada)
