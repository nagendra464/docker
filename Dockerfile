FROM tomcat:8.5.37-jre8
MAINTAINER nagendra <nagendra.bheemuni@gmail.com>
RUN apt-get update
ADD https://devops-project.s3.us-east-2.amazonaws.com/jobs/test/11/target/mahaLogin-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
