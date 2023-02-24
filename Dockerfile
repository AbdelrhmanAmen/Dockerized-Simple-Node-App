FROM node:18.14.2-alpine3.17
WORKDIR /usr/app
COPY index.js .
CMD ["node","index.js"]
