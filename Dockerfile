# Use a basic Java image
FROM openjdk:17-jdk-slim

# Define the working directory inside the container
WORKDIR /app

# Copy the JAR file
COPY target/ludy-*.jar ludy.jar

# Exposer le port sur lequel l’application écoute
EXPOSE 8080

# Définir la commande d’exécution de l’application
CMD ["java", "-jar", "ludy.jar"]