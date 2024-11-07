# Użycie obrazu JDK jako bazowego
FROM openjdk:17-jdk-slim

# Ustaw zmienną środowiskową dla Javy
ENV JAVA_OPTS=""

# Skopiuj plik JAR do kontenera
COPY target/demoDockerCompose-0.0.1-SNAPSHOT.jar app.jar

# Uruchom aplikację
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app.jar"]