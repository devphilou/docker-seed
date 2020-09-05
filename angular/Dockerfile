#
# Builder stage.
# This state compile our TypeScript to get the JavaScript code
#
FROM node:14 AS builder

WORKDIR /usr/src/client

COPY package*.json ./
COPY tsconfig*.json ./
COPY angular.json ./
COPY ./src ./src
RUN npm ci --quiet && npm run build --prod


#
# Production stage.
# This state compile get back the JavaScript code from builder stage
# It will also install the production package only
#
FROM node:14-alpine

WORKDIR /client
ENV NODE_ENV=production

RUN npm install http-server -g

COPY package*.json ./
RUN npm ci --quiet --only=production

## We just need the build to execute the command
COPY --from=builder /usr/src/client/dist ./dist

EXPOSE 8080
CMD [ "http-server", "dist/my-app" ]