# Usa a imagem oficial do n8n como base
FROM n8nio/n8n:latest

# Troca para o usuário root para ter permissão de instalar coisas
USER root

# Garante que o Python e o PIP estão instalados
RUN apk add --update --no-cache python3 py3-pip

# Instala as bibliotecas que você precisa
# O flag --break-system-packages é necessário nas versões novas do Linux Alpine
RUN pip3 install --break-system-packages htmldocx python-docx

# Volta para o usuário padrão do n8n (segurança)
USER node
