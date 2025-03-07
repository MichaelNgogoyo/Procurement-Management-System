FROM docker:20.10.16-dind

# Install docker-compose
RUN apk add --no-cache docker-compose

# Copy the entire project
COPY . .

# Expose ports
EXPOSE 8080 8081 5432

# Start docker-compose
CMD ["docker-compose", "up"] 