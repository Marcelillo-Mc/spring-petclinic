# 1. Imagen base usando Eclipse Temurin Alpine Java
FROM eclipse-temurin:25-alpine

# 2. Etiqueta del mantenedor (Creador del archivo)
LABEL maintainer="user@udemedellin.edu.co"

# 3. Copiar el archivo Jar de Spring PetClinic desde el directorio target
COPY /target/*.jar /home/spring-petclinic.jar

# 4. Exponer el puerto en el que corre la aplicación
EXPOSE 8080

# 4. Comando para ejecutar la aplicación cuando el contenedor inicie
CMD ["java", "-jar", "/home/spring-petclinic.jar"]
