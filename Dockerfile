# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Troca para root para poder instalar pacotes
USER root

# Instala ffmpeg
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Volta para o usuário padrão do n8n
USER node

# Expõe a porta do n8n
EXPOSE 5678

# Comando padrão
CMD ["n8n"]
