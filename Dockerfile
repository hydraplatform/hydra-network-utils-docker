from python:3.7

MAINTAINER james.tomlinson@manchester.ac.uk

COPY . /app
WORKDIR /app

RUN chmod 755 install.sh && ./install.sh

CMD ["hydra-network-utils", "--help"]