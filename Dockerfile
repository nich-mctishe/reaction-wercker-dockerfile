FROM node:8.6.0

MAINTAINER nichheadlong@gmail.com

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6 && \
  echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list && \
  apt-get update && \
  apt-get install -y mongodb-org-shell

RUN curl https://install.meteor.com/ | sh

RUN npm install -g reaction-cli

RUN meteor npm install --save bcrypt

EXPOSE 3000
