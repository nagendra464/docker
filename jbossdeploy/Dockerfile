FROM nagendra464/jboss
MAINTAINER nagendra.bheemuni@gmail.com
ADD https://login464.s3.us-east-2.amazonaws.com/mahaLogin-1.0-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/
EXPOSE 8080
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
