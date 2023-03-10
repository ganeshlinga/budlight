FROM openjdk:17
LABEL maintainer="javaguides.net"
ADD budlight-0.0.1-SNAPSHOT.jar  jenkinsaks.azurecr.io/budlight.jar
ENTRYPOINT ["java","-jar","budlight.jar"]