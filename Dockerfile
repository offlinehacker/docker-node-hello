# VERSION 0.2
# DOCKER-VERSION 0.3.4
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:gasi/docker-node-hello.git
# 3. Build container: docker build .

FROM    ubuntu

# Enable EPEL for Node.js
RUN apt-get update
# Install Node.js and npm
RUN apt-get install -y nodejs npm

# App
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["node", "/src/index.js"]
