FROM node:bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

# Copia o arquivo de configuração e a pasta vendor antes de instalar as dependências
COPY ["package.json", "./"]
COPY vendor/ ./vendor/

RUN npm install

COPY . .

CMD [ "node", "src/server.js" ]
