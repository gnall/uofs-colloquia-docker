# https://hub.docker.com/_/amazoncorretto
FROM docker.io/amazoncorretto:17

# Set the working directory inside the container
WORKDIR /app

# Copy the local directory contents into the container
COPY . .

# Install any necessary packages (if needed)

# Set executable permissions for entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Compile Java file using the entrypoint.sh script
ENTRYPOINT ["/app/entrypoint.sh"]
