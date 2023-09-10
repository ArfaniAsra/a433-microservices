# menggunakan base image Node.js versi 14
FROM node:14-alpine

# menentukan working directory adalah /app
WORKDIR /app

# menyalin seluruh source code ke working directory
COPY . .

# menentukan agar aplikasi berjalan pada production mode dan menggunakan container item-db sebagai host
ENV NODE_ENV=production DB_HOST=item-db

# menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# ekspos port oleh aplikasi adalah 8080
EXPOSE 8080

# menjalankan server dengan perintah npm start saat container diluncurkan
CMD ["npm", "start"]