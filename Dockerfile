# Use a imagem oficial do OpenJDK como base
FROM openjdk:11-jre-slim

# Crie um diretório para a aplicação
WORKDIR /app

# Copie o código fonte para o container
COPY src /app/src

# Compile a aplicação
RUN javac /app/src/main/java/com/example/App.java

# Defina o comando padrão para executar a aplicação
CMD ["java", "com.example.App"]
