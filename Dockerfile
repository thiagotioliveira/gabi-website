# Usar Amazon Corretto 21 como base
FROM amazoncorretto:21-alpine-jdk

# Definir diretório de trabalho
WORKDIR /app

# Copiar o arquivo JAR para o contêiner
COPY target/*.jar app.jar

# Expor a porta 3000
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
