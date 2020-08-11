FROM tomcat:9.0

MAINTAINER Storm62&Fiksik

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
#COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD ROOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
