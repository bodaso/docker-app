FROM node:argon

RUN apt-get update && apt-get install -y zip
# install latest NPM
RUN curl -L https://npmjs.org/install.sh | sh

RUN npm install -g nodemon mocha

# use changes to package.json to force Docker not to use the cache
# when we change our application's nodejs dependencies:
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /src/app && cp -a /tmp/node_modules /src/app/

WORKDIR /src/app

ADD . /src/app

EXPOSE 3000

CMD [ "npm", "start" ]