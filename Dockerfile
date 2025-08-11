FROM tomcat:jre17
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/java-web-app*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
