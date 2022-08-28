FROM node:10.15.0-alpine
EXPOSE 3300 3300

WORKDIR /home/app

COPY package.json /home/app/
COPY package-lock.json /home/app/

RUN npm ci

COPY . /home/app

RUN npm run build

CMD ./scripts/start.sh
