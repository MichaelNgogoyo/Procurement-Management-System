FROM docker:20.10.16-dind

# Install docker-compose and other dependencies
RUN apk add --no-cache docker-compose bash

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
CMD ["docker-compose", "up"] 