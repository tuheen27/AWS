# PowerShell build script for Docker container

Write-Host "Building DevOps Workflow Docker image..." -ForegroundColor Green

# Build the Docker image
docker build -t devops-workflow:latest .

Write-Host "Build completed!" -ForegroundColor Green
Write-Host ""
Write-Host "To run the container:" -ForegroundColor Yellow
Write-Host "docker run -p 5000:5000 devops-workflow:latest" -ForegroundColor Cyan
Write-Host ""
Write-Host "Or use docker-compose:" -ForegroundColor Yellow
Write-Host "docker-compose up -d" -ForegroundColor Cyan
