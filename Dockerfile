# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Instala o ffmpeg dentro do container
USER root
RUN apt-get update \
 && apt-get install -y ffmpeg \
 && rm -rf /var/lib/apt/lists/*

# Volta para o usuário padrão do n8n
USER node
