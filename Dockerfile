FROM node:8-jessie-slim

EXPOSE 4200

RUN mkdir -p /var/app
WORKDIR /var/app

ADD . .

RUN npm install -g @angular/cli

RUN yarn install 

RUN chmod 775 "./start.sh"

CMD "./start.sh"