FROM openjdk:17
LABEL maintainer="javaguides.net"
ARG APP_NAME="budlight"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE="/build/libs/${APP_NAME}-${APP_VERSION}.jar"
COPY ${JAR_FILE} budlight.jar
ENTRYPOINT ["java","-jar","budlight.jar"]