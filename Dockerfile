FROM node:18

WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

EXPOSE 1337/tcp
CMD ["/bin/bash", "-c", "npm run develop"]
