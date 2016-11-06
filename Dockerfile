FROM tomcat:8.0
# Debian 8 - jessie

# Install jre
RUN apt-get update && apt-get install openjdk-7-jdk -y

# Copy and Deploy .war :
COPY application /tmp/application
RUN jar -cf /usr/local/tomcat/webapps/demo.war /tmp/application

#Start Tomcat
/usr/local/tomcat/bin/catalina.sh start

#/usr/local/tomcat/bin/catalina.sh stop

