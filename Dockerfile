FROM openjdk:8-jre
ADD ./target/docker-spring-boot.jar docker-spring-boot.jar

#COPY --from=BUILD /usr/src/app/target /opt/target
#WORKDIR /opt/target
#ENV _JAVA_OPTIONS '-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005'


EXPOSE 8085
ENTRYPOINT ["java", "-jar", "docker-spring-boot.jar"]