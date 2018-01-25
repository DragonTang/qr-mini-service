FROM node:latest
MAINTAINER Elvis

RUN npm config set registry https://registry.npm.taobao.org
RUN npm install -g pm2
RUN npm install -g cnpm
WORKDIR /var/workspace
COPY . /var/workspace
RUN cnpm install 
EXPOSE 3302
CMD ['npm', 'run', 'start']
