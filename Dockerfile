# Usa a imagem oficial do Node.js
FROM node:18

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o package.json e o package-lock.json para o container
COPY package*.json ./

# Instala as dependências dentro do container
RUN npm install

# Copia o código da aplicação
COPY . .

# Expõe a porta que o serviço vai rodar (porta 3000)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "src/index.js"]
