# Dockerfile
FROM node:18-alpine

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos de configuração
COPY package.json package-lock.json ./

# Instale as dependências
RUN npm install --legacy-peer-deps

# Copie o código do projeto
COPY . .

# Inicie o servidor Next.js
CMD ["npm", "run", "dev"]