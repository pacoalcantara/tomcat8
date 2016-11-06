FROM tomcat:8.0
# Debian 8 - jessie

# Install jre
RUN apt-get update && apt-get install openjdk-7-jdk -y

# Copy and Deploy .war :
RUN /usr/local/tomcat/bin/catalina.sh stop
COPY application /tmp/application
# This step needs actual cd to folder to work
RUN cd /tmp/application && jar -cf application.war *
RUN mv /tmp/application/application.war /usr/local/tomcat/webapps/
RUN chmod 755 /usr/local/tomcat/webapps/application.war
RUN /usr/local/tomcat/bin/catalina.sh start



