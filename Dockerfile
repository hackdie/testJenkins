FROM node:8.1.3

#install nodejs and npm
RUN apt-get update
RUN apt-get install -y python-software-properties
RUN apt-get install -y nodejs
RUN apt-get install -y npm

ENV NODE_ENV production

#copy files from instance
COPY . /src
RUN cd src/ && npm install
RUN npm update
EXPOSE 3000
CMD ["nodejs", "/src/app.js"]