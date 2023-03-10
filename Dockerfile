FROM openjdk:17
LABEL maintainer="javaguides.net"
ADD budlight.jar  jenkinsaks.azurecr.io/budlight.jar
ENTRYPOINT ["java","-jar","budlight.jar"]