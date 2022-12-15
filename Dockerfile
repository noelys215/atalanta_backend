FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A * wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

COPY ./package*.json ./

ENV NODE_ENV=production
ENV MONGODB_URI=mongodb+srv://admin:Casa1992%21@cluster0.jiwerh0.mongodb.net/atalanta?retryWrites=true&w=majority
ENV JWT_SECRET=atalanta2022
ENV PORT=5000

RUN npm install

# Copy app source code
COPY . .

EXPOSE 5000

CMD [ "npm","run","start" ]