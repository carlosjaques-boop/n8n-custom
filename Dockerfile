# Vamos usar uma versão específica para garantir estabilidade (Alpine)
FROM n8nio/n8n:1.76.1

# Troca para root para instalar pacotes
USER root

# No Alpine Linux, o comando é apk (e não apt-get)
# Instala o Python 3 e o gerenciador pip
RUN apk add --update --no-cache python3 py3-pip

# Instala as bibliotecas que você precisa
RUN pip3 install --break-system-packages htmldocx python-docx

# Volta para o usuário de segurança do n8n
USER node
