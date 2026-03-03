FROM node:20-alpine AS builder
WORKDIR /app
COPY /app/package.json .
RUN npm install
COPY app/ .
EXPOSE 3000
CMD [ "node", "index.js" ]


# # Stage 1: Build
# FROM node:20-alpine AS builder
# WORKDIR /app
# COPY app/package.json .
# RUN npm install

# # Stage 2: Run
# FROM node:20-alpine
# WORKDIR /app
# COPY --from=builder /app/node_modules ./node_modules
# COPY app/ .
# EXPOSE 3000
# CMD ["node", "index.js"]