FROM node:buster
MAINTAINER dhawkins@resultsgeneration.com

WORKDIR /meshcentral
ENV NODE_ENV=production
RUN apt update && apt install -y build-essential && apt clean
RUN npm install meshcentral 
RUN npm install otplib
RUN npm install @davedoesdev/fido2-lib

ENTRYPOINT node "./node_modules/meshcentral"
