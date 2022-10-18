# Crea una imagen
FROM amazoncorretto:19-alpine-jdk

# Lo copio en la carpeta app, se crea si no existe. Dentro de la imagen mete esta clase
# Copia Helloworld.java en la carpeta app
# COPY HelloWorld.java /app/  //No voy a copiar la imagen

# Trabaja en la carpeta app
WORKDIR /app/

# Compilar HelloWorld.java -> HelloWorld.class
# RUN javac HelloWorld.java


# Los contenedores siempre necesitan un punto de entrada ENTRYPOINT/CMD, estará ejecutandose 
# hasta que el proceso que le indique ejecutandose.
ENTRYPOINT ["javac", "HelloWorld.java"]


