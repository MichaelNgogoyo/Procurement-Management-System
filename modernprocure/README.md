# Modern Procure

A modern procurement management system built with Vue.js frontend and Spring Boot backend.

## Project Structure

```
Tedros Procure/
├── Modernprocore-UI/     # Vue.js frontend
├── modernprocure/        # Spring Boot backend
└── docker-compose.yml    # Docker composition file
```

## Prerequisites

- Docker and Docker Compose
- Node.js 16+ (for local development)
- Java 17 (for local development)
- PostgreSQL (for local development)

## Quick Start with Docker

1. Clone the repository:
```bash
git clone <repository-url>
cd Tedros-Procure
```

2. Start the application:
```bash
docker-compose up --build
```

The services will be available at:
- Frontend: http://localhost:8080
- Backend API: http://localhost:8081
- Database: localhost:5432

## Development Setup

### Frontend (Vue.js)

1. Navigate to the frontend directory:
```bash
cd Modernprocore-UI
```

2. Install dependencies:
```bash
yarn install
```

3. Run development server:
```bash
yarn serve
```

### Backend (Spring Boot)

1. Navigate to the backend directory:
```bash
cd modernprocure
```

2. Run the application:
```bash
./mvnw spring-boot:run
```

## Environment Variables

### Frontend
- `NODE_ENV` - Node environment
- `VUE_APP_API_ENDPOINT` - Backend API endpoint
- `VUE_APP_CLIENT_ID` - OAuth client ID
- `VUE_APP_CLIENT_SECRET` - OAuth client secret

### Backend
- `SPRING_DATASOURCE_URL` - Database connection URL
- `SPRING_DATASOURCE_USERNAME` - Database username
- `SPRING_DATASOURCE_PASSWORD` - Database password
- `SERVER_PORT` - Server port (default: 8081)
- `AUTH_CLIENT_ID` - OAuth client ID
- `AUTH_CLIENT_SECRET` - OAuth client secret
- `AUTH_TOKEN_URL` - OAuth token URL

## Contributing

1. Create a new branch for your feature
2. Commit your changes
3. Push to your branch
4. Create a Pull Request

## License

[Add your license here] 