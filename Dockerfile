FROM eclipse-temurin:17-jdk

WORKDIR /app

RUN apt-get update && apt-get install -y wget

# ✅ URL corregida: se usa una versión específica (ajustable)
RUN wget https://github.com/Suwayomi/Suwayomi-Server/releases/download/v2.0.1727/Suwayomi-Server-v2.0.1727.jar -O suwayomi-server.jar


EXPOSE 4567

CMD ["java", "-jar", "suwayomi-server.jar"]
