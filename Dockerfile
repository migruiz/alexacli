FROM node:8.11.3-slim

RUN apt-get update && apt-get install -yqq --no-install-recommends curl build-essential python-dev nano 



RUN npm -g config set user root
RUN npm install -g ask-cli



