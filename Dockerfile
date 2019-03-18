FROM node:8-jessie-slim

EXPOSE 4200

RUN mkdir -p /var/app
WORKDIR /var/app

ADD . .

RUN npm install -g @angular/cli

RUN yarn install 

CMD "ng serve --host 0.0.0.0"