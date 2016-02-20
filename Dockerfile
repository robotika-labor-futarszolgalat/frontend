FROM ubuntu:trusty

EXPOSE 5000

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y python
RUN apt-get install -y git
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN npm install -g bower
RUN npm install -g gulp-cli

CMD cd /frontend && npm install && bower install --allow-root && npm install gulp && gulp serve

