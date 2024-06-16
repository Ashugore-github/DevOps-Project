# syntaxdocker/dockerfile:1
# testing webhook
# testing webhook for 2nd time 
FROM node:14
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production --verbose
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000
