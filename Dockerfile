# syntaxdocker/dockerfile:1
# testing webhook
FROM node:14
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production --verbose
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000
