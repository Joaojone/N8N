# Usa a imagem oficial do n8n (Alpine)
FROM n8nio/n8n:latest

# precisamos ser root para instalar pacotes
USER root

# instala ffmpeg (e opcionalmente bash)
RUN apk add --no-cache ffmpeg bash

# volta para o usuário padrão do n8n
USER node

EXPOSE 5678
CMD ["n8n"]
