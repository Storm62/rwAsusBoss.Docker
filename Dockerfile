FROM tomcat:9.0

MAINTAINER Storm62&Fiksik

RUN apt-get update && apt-get -y upgrade

RUN sudo apt-get install python

WORKDIR /usr/local/tomcat

ENV TZ=Russian/Moscow

ADD tasks.json /usr/local/tomcat
ADD ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080
