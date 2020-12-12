FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install && \
    adduser -D user1
COPY . .
EXPOSE 3001
USER user1

CMD [ "npm", "start" ]
