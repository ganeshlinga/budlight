FROM openjdk:17
LABEL maintainer="javaguides.net"
WORKDIR /opt/app
COPY ./ /opt/app
RUN mvn clean install -DskipTests
COPY --from=build /opt/app/target/*.jar budlight.jar
ENV PORT 8081
EXPOSE $PORT
ENTRYPOINT ["java","-jar","-Xmx1024M","-Dserver.port=${PORT}","budlight.jar"]
