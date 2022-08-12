# imagem do dockerhub
FROM node:14.17.0-slim

#diretorio de trabalho
WORKDIR /home/node/app

#manter container executando
CMD ["tail", "-f", "dev/null"]