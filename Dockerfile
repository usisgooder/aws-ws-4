FROM node:18-alpine

# Create app directory
WORKDIR /react-docker-example/

# Install app dependencies
COPY public/ /react-docker-example/public
COPY src/ /react-docker-example/src
COPY package.json /react-docker-example/
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]
