# imagem do dockerhub
FROM node:14.17.0-slim

#definir usuario que criará os arquivos (cat /etc/passwd)
USER node

#diretorio de trabalho
WORKDIR /home/node/app

#copia o json das dependêcias
COPY package*.json ./

#instala as depedências
RUN npm install

# manter container executando
# CMD ["tail", "-f", "/dev/null"]

# manter container executando
CMD [ "/home/node/app/start.sh" ]