FROM node:20-alpine

ENV NODE_ENV=production

USER node

WORKDIR /home/node/app

COPY --chown=node:node package*json ./

RUN npm ci --omit=dev

COPY --chown=node:node . .

EXPOSE 3000

CMD ["node","server.js"]
