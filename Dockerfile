# Use Node.js image to build the application
FROM node:16-alpine AS builder
WORKDIR /app
COPY . .
RUN npm install

# Deploy with a minimal Node.js image
FROM node:16-alpine
WORKDIR /app
COPY --from=builder /app .
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
