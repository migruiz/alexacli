FROM node:8.11.3-slim

RUN apt-get update && apt-get install -yqq --no-install-recommends build-essential python-dev curl

RUN curl -O https://bootstrap.pypa.io/get-pip.py || travis_terminate 1
RUN python get-pip.py --user || travis_terminate 1
RUN /root/.local/bin/pip install awscli --upgrade --user || travis_terminate 1

RUN npm -g config set user root || travis_terminate 1
RUN npm install -g ask-cli || travis_terminate 1



VOLUME /root

# Generally the current working dir will be used as the repo volume
VOLUME /code
WORKDIR /code

ENTRYPOINT ["/usr/local/bin/ask"]
