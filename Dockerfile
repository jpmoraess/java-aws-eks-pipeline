FROM gradle:8.13.0-jdk21
RUN mkdir /tmp/layer
ADD . /tmp/layer
WORKDIR /tmp/layer
RUN gradle clean build
RUN rm -r /tmp/layer/build/libs/*plain*.jar
RUN ls -lsah /tmp/layer/build/libs/
RUN mv /tmp/layer/build/libs/*.jar /tmp/app.jar

FROM eclipse-temurin:21.0.7_6-jdk-alpine
COPY --from=0 /tmp/app.jar /tmp
ENV TZ=America/Sao_Paulo
RUN ls /tmp
ENTRYPOINT ["java", "-jar", "/tmp/app.jar"]
EXPOSE 8080