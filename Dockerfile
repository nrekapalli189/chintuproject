FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/customerwebapp-1.0-SNAPSHOT.war $PROJECT_HOME/customerwebapp.war

WORKDIR $PROJECT_HOME

CMD ["java" ,"-war","./customerwebapp.war"]
