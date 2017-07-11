FROM ubuntu:latest

#install nodejs and npm
RUN apt-get update
RUN apt-get install -y python-software-properties
RUN apt-get install -y nodejs
RUN apt-get install -y npm

#copy files from instance
COPY ./src
RUN cd src/ && npm install
RUN npm update
EXPOSE 3000
CMD ["nodejs", "/src/app.js"]