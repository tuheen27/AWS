# DevOps Workflow Dashboard

A Flask-based web application that provides a comprehensive DevOps workflow dashboard with CI/CD pipeline visualization, deployment controls, and real-time monitoring.

## Features

- **CI/CD Pipeline Visualization**: Interactive pipeline status display
- **Deployment Controls**: Deploy, Rollback, and Emergency Stop functionality
- **Real-time Activity Logs**: Live system monitoring and activity tracking
- **System Metrics**: Performance monitoring dashboard
- **Responsive Design**: Modern UI with gradient styling

## Docker Deployment

### Prerequisites
- Docker installed on your system
- Docker Compose (optional, for easier management)

### Building the Docker Image

#### Option 1: Using Docker directly
```bash
# Build the image
docker build -t devops-workflow:latest .

# Run the container
docker run -p 5000:5000 devops-workflow:latest
```

#### Option 2: Using Docker Compose
```bash
# Build and run with docker-compose
docker-compose up -d

# Stop the container
docker-compose down
```

#### Option 3: Using build scripts
```bash
# For Linux/Mac
chmod +x build.sh
./build.sh

# For Windows PowerShell
./build.ps1
```

### Accessing the Application

Once the container is running, access the application at:
- **URL**: http://localhost:5000
- **Health Check**: http://localhost:5000/health

### Docker Image Details

- **Base Image**: Python 3.11 slim
- **Port**: 5000
- **Health Check**: Included for container orchestration
- **Security**: Runs with non-root user
- **Environment**: Production-ready configuration

## Local Development

If you want to run without Docker:

```bash
# Install dependencies
pip install -r requirements.txt

# Run the application
python app.py
```

## Project Structure

```
├── app.py              # Main Flask application
├── templates/
│   └── index.html      # Frontend dashboard
├── requirements.txt    # Python dependencies
├── Dockerfile         # Docker configuration
├── docker-compose.yml # Docker Compose configuration
├── .dockerignore      # Docker ignore rules
├── build.sh           # Linux/Mac build script
├── build.ps1          # Windows PowerShell build script
└── README.md          # This file
```