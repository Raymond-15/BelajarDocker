# 1. Gunakan base image Node.js versi LTS
FROM node:18-alpine

# 2. Tentukan direktori kerja di dalam container
WORKDIR /app

# 3. Copy file package.json (jika ada) dan install dependency
COPY package*.json ./
RUN npm install

# 4. Copy seluruh kode aplikasi ke dalam container
COPY . .

# 5. Buka port yang digunakan aplikasi
EXPOSE 3000

# 6. Perintah untuk menjalankan aplikasi
CMD ["node", "app.js"]