#
# Builder stage.
# This state compile our TypeScript to get the JavaScript code
#
FROM node:14 AS builder

WORKDIR /usr/src/server

COPY package*.json ./
COPY tsconfig*.json ./
COPY ./src ./src
RUN npm ci --quiet && npm run build

#
# Production stage.
# This state compile get back the JavaScript code from builder stage
# It will also install the production package only
#
FROM node:14-alpine

WORKDIR /server
ENV NODE_ENV=production

# Install PM2 production process manager for Node.js
RUN npm install pm2 -g

COPY package*.json ./
RUN npm ci --quiet --only=production

## We just need the build to execute the command
COPY --from=builder /usr/src/server/dist ./dist

EXPOSE 4000
CMD [ "pm2-runtime", "dist/server.js" ]