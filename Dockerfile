# Eu usei uma imagem oficial do nginx como imagem pai
FROM nginx:latest

# Eu defini o diretório de trabalho no contêiner como /app
WORKDIR /app

# Eu copiei o conteúdo do diretório atual para o contêiner em /app
COPY . /app

# Eu sobrescrevi o site padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Eu copiei os arquivos estáticos do meu site para o novo diretório
COPY . /usr/share/nginx/html

# Eu expus a porta 80 para o host do Docker, para que pudéssemos acessar o servidor web a partir do host
EXPOSE 80
