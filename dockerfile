FROM java:8
COPY C:\Users\19293\Desktop\azure\dotnetdemo-infra\dockerfile  /usr/share
ARG WEBCONTEXT=simplewebappdev

RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.20/bin/apache-tomcat-8.0.20.tar.gz
RUN tar xzf apache-tomcat-8.0.20.tar.gzCOPY simplewebapp.war apache-tomcat-8.0.20/webapps/${WEBCONTEXT}
EXPOSE 8080
CMD apache-tomcat-8.0.20/bin/startup.sh && tail -f apache-tomcat-8.0.20/logs/catalina.out