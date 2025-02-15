FROM tomcat:latest
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
EXPOSE 80
ENTRYPOINT ["java", "-jar", "./webapp.war"]
