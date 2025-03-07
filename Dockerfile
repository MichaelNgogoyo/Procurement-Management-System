FROM alpine:3.18

# Install Docker and docker-compose
RUN apk add --no-cache \
    docker \
    docker-cli \
    docker-cli-buildx \
    docker-cli-compose \
    bash \
    curl

# Create app directory
WORKDIR /app

# Copy only necessary files
COPY docker-compose.yml .
COPY Modernprocore-UI/ ./Modernprocore-UI/
COPY modernprocure/ ./modernprocure/
COPY .dockerignore .

# Set permissions
RUN chmod -R 755 /app

# Expose ports
EXPOSE 8080 8081 5432

# Start docker-compose
CMD ["docker", "compose", "up"] 