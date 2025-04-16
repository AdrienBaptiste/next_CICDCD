# Étape 1 : Build l’app Next.js
FROM node:18 AS builder

WORKDIR /app

# Copie des dépendances en premier pour mieux profiter du cache
COPY package*.json ./
RUN npm install

# Ensuite on copie le reste des fichiers
COPY . .

# Build de l’app Next.js
RUN npm run build

# Étape 2 : Image finale
FROM node:18

WORKDIR /app

# Copie du résultat du build depuis l’étape précédente
COPY --from=builder /app ./

EXPOSE 3000

CMD [ "npm", "run", "start" ]
