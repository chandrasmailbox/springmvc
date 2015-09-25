# This is a comment
FROM centos
FROM java:8
FROM tomcat
FROM maven
MAINTAINER Chandra Reddy <chandrasmailbox@gmail.com>

# Install Tomcat
#RUN apt-get update && apt-get install tomcat7

# Add your webapp file into your docker image into Tomcat's webapps directory
# Your webapp file must be at the same location as your Dockerfile
CMD mvn clean install
ADD ./target/AngularSpringApp.war /usr/local/tomcat/webapps/

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin
EXPOSE 8080
