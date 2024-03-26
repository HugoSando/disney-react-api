FROM node:20.11.1-alpine3.19

COPY . . 

RUN npm install

RUN npm run build

ENTRYPOINT [ "npm", "run", "preview", "--", "--host", "0.0.0.0"]