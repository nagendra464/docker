FROM tomcat:8.5.37-jre8
MAINTAINER nagendra <nagendra.bheemuni@gmail.com>
RUN apt-get update
RUN apt-get install maven -y
RUN apt-get install git -y
RUN apt-get install default-jdk -y
RUN ["apt-get", "-y", "install", "vim"]
ADD https://login464.s3.us-east-2.amazonaws.com/mahaLogin-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
