FROM tomcat:9.0.45-jdk11-adoptopenjdk-hotspot
RUN mv webapps webapps2 && \
    mv  webapps.dist/ webapps
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD target/addressbook.war /usr/local/tomcat/webapps/
EXPOSE 8083
# this is dockerfile
# this is updated by ANUSHA
#this is updated second time
