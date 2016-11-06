FROM tomcat:8.0
# Debian 8 - jessie

# Install jre
RUN apt-get update && apt-get install openjdk-7-jdk -y
