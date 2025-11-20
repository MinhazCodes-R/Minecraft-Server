FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /minecraft

# Expose the Minecraft port
EXPOSE 25565

# Default memory settings
ENV MEMORY_MAX=8G
ENV MEMORY_MIN=2G
ENV EULA=true

# Start the Minecraft server
CMD ["sh", "-c", "java -Xmx${MEMORY_MAX} -Xms${MEMORY_MIN} -jar server.jar nogui"]

