FROM tomcat:10.1-jdk21-temurin
RUN sed -i 's/port="8005"/port="-1"/' /usr/local/tomcat/conf/server.xml
COPY ministock.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
