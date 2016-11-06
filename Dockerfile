FROM tomcat:8.0
# Debian 8 - jessie

# Install jre
RUN apt-get update && apt-get install openjdk-7-jdk -y

# Copy and Deploy .war :
RUN /usr/local/tomcat/bin/catalina.sh stop

COPY application /tmp/application
RUN jar -cf /usr/local/tomcat/webapps/demo.war /tmp/application/*
RUN chmod 755 /usr/local/tomcat/webapps/demo.war

#Start Tomcat
RUN /usr/local/tomcat/bin/catalina.sh start



