FROM node:latest


MAINTAINER Elvis
HEALTHCHECK --interval=5s --timeout=3s CMD curl --fail http://localhost:10003/ || exit 1
RUN npm config set registry https://registry.npm.taobao.org
RUN npm install -g cnpm
WORKDIR /var/workspace
COPY . /var/workspace
RUN cnpm install
EXPOSE 10003
ENTRYPOINT ["npm", "run", "start-pro", "daemon off;"]
