FROM node:8.11.3-slim

RUN apt-get update && apt-get install -yqq --no-install-recommends curl build-essential python-dev nano 



RUN npm -g config set user root
RUN npm install -g ask-cli

COPY deploy.sh /deploy.sh

VOLUME /root

# Generally the current working dir will be used as the repo volume
VOLUME /code
WORKDIR /code

RUN chmod 777 /deploy.sh

ENTRYPOINT ./deploy.sh
