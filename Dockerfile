FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y 
RUN apt install default-jdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.76/bin/apache-tomcat-9.0.76.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.75.tar.gz
EXPOSE 443
CMD ["/apache-tomcat-9.0.75/bin/catalina.sh", "run"]
# Dummy text to test 
COPY target/aws-coe*.war /apache-tomcat-9.0.75/webapps/aws-coe.war
