# USAMOS A TAG 'latest-debian' PARA GARANTIR QUE É DEBIAN
# Isso habilita o comando apt-get com 100% de certeza
FROM n8nio/n8n:2.4.8

USER root

# Instala Python no Debian
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Instala as bibliotecas ignorando o bloqueio de sistema (necessário no Debian recente)
RUN pip3 install --break-system-packages htmldocx python-docx

USER node
