FROM eclipse-temurin:17-jdk

WORKDIR /app

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/Suwayomi/Suwayomi-Server/releases/latest/download/suwayomi-server.jar -O suwayomi-server.jar

EXPOSE 4567

CMD ["java", "-jar", "suwayomi-server.jar"]
