FROM ubuntu

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
RUN echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get -y update && apt-get upgrade
RUN apt-get -y install mongodb-10gen
RUN apt-get install -y python-software-properties python g++ make software-properties-common bzip2
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get -y install nodejs
RUN npm install -g forever


ADD ./ mongodb-s3-backup
RUN cd mongodb-s3-backup && npm install
CMD cd mongodb-s3-backup && forever ./bin/mongodb_s3_backup.js config.js
