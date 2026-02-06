FROM n8nio/n8n:latest

USER root

# Atualiza e instala Python no sistema Debian/Ubuntu
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Instala as bibliotecas (o flag --break-system-packages é obrigatório nas versões novas)
RUN pip3 install --break-system-packages htmldocx python-docx

USER node
