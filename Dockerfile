FROM eclipse-temurin:17-jdk

WORKDIR /app

RUN apt-get update && apt-get install -y wget

# ✅ URL corregida: se usa una versión específica (ajustable)
RUN wget https://github.com/Suwayomi/Suwayomi-Server/releases/download/v1.0.0-alpha.16/suwayomi-server.jar -O suwayomi-server.jar

EXPOSE 4567

CMD ["java", "-jar", "suwayomi-server.jar"]
