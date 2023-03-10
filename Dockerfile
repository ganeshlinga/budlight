FROM openjdk:8
LABEL maintainer="javaguides.net"
ADD target/budlight-0.0.1-SNAPSHOT.jar  budlightregistry.azurecr.io/budlight.jar
ENTRYPOINT ["java","-jar","budlight.jar"]