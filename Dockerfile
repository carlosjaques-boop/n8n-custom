# Usa a tag 'alpine' explícita para garantir que o comando 'apk' exista
FROM n8nio/n8n:alpine

# Muda para root para ter permissão de instalar
USER root

# Instala Python 3 e PIP usando o gerenciador do Alpine (apk)
RUN apk add --update --no-cache python3 py3-pip

# Instala suas bibliotecas
RUN pip3 install --break-system-packages htmldocx python-docx

# Devolve o controle para o usuário padrão do n8n (segurança)
USER node
