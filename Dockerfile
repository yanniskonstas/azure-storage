FROM node:12.13.1-alpine
 
WORKDIR /Users/yanniskonstas/dev/code/node/bootstrapping-microservices/azure-storage
COPY package*.json ./
RUN npm install --only=production
COPY ./src ./src
EXPOSE 3000
CMD npm start