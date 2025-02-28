FROM eclipse-temurin:17-jdk

ARG JAR_FILE=blog-eureka-server-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} blog-eureka-server.jar

ENTRYPOINT ["java", "-jar", "/blog-eureka-server.jar"]