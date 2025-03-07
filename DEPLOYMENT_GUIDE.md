# ModernProcure Deployment Guide

## Project Structure
The project is split into two separate repositories:
1. Frontend: ModernProcure-Front-end-UI
2. Backend: ModernProcure-BackEnd-Java

## Frontend Setup

### 1. Initialize Frontend Repository
```bash
cd Modernprocore-UI
rm -rf .git
git init
git add .
git commit -m "Initial commit: Frontend setup"
git remote add origin https://github.com/MichaelNgogoyo/ModernProcure-Front-end-UI.git
git push -u origin main
```

### 2. Frontend Docker Configuration
- Uses nginx for serving static files
- Configured for production build
- Health checks implemented
- Environment variables properly set

### 3. Frontend Environment Variables
Required environment variables:
```
NODE_ENV=production
VUE_APP_API_ENDPOINT=${API_URL}
VUE_APP_CLIENT_ID=${CLIENT_ID}
VUE_APP_CLIENT_SECRET=${CLIENT_SECRET}
```

## Backend Setup

### 1. Initialize Backend Repository
```bash
cd modernprocure
rm -rf .git
git init
git add .
git commit -m "Initial commit: Backend setup"
git remote add origin https://github.com/MichaelNgogoyo/ModernProcure-BackEnd-Java.git
git push -u origin main
```

### 2. Backend Docker Configuration
- Uses OpenJDK 17
- Maven for building
- Spring Boot application
- Health checks implemented
- Environment variables properly set

### 3. Backend Environment Variables
Required environment variables:
```
SPRING_DATASOURCE_URL=${DATABASE_URL}
SPRING_DATASOURCE_USERNAME=${DB_USERNAME}
SPRING_DATASOURCE_PASSWORD=${DB_PASSWORD}
AUTH_TOKEN_URL=${AUTH_TOKEN_URL}
AUTH_CLIENT_ID=${CLIENT_ID}
AUTH_CLIENT_SECRET=${CLIENT_SECRET}
SERVER_PORT=8081
SPRING_PROFILES_ACTIVE=prod
```

## Railway Deployment

### 1. Database Setup
- PostgreSQL database
- Persistent volume configuration
- Health checks implemented

### 2. Service Configuration
- Frontend service on port 8080
- Backend service on port 8081
- Database service on port 5432

### 3. Network Configuration
- Internal network for service communication
- Proper port exposure
- Health check endpoints configured

### 4. Deployment Steps
1. Push code to respective repositories
2. Set up environment variables in Railway
3. Deploy services
4. Monitor health checks
5. Verify connections

## Troubleshooting

### Common Issues
1. Database Connection Issues
   - Verify DATABASE_URL format
   - Check credentials
   - Ensure database is running

2. Frontend-Backend Communication
   - Verify API_URL is correct
   - Check CORS configuration
   - Ensure services are on same network

3. Health Check Failures
   - Check service logs
   - Verify port configurations
   - Ensure services are running

### Logs and Monitoring
- Use Railway dashboard for logs
- Monitor health check status
- Check service metrics 