FROM node:14.16.0-alpine3.13

ENV ANGULAR_HOME=/app

RUN mkdir -p $ANGULAR_HOME

WORKDIR $ANGULAR_HOME

COPY . $ANGULAR_HOME

# install dependencies
RUN npm install -g serve
RUN npm install -g @angular/cli

RUN npm install
RUN npm run build

EXPOSE 3000

ENTRYPOINT ["./docker-entrypoint.sh"]
