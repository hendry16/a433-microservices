# image
FROM node:14-alpine

# working directory
WORKDIR /app

# copy semua file ke /app workdir
COPY . .

# variable environment
ENV NODE_ENV=production DB_HOST=item-db

# install dependency di production
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080
EXPOSE 8080

# menjalankan aplikasi
CMD ["npm", "start"]