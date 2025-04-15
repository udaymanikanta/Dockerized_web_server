# Dockerized_web_server
# Dockerized Web Server with Dynamic Content via Volumes

## 💡 Project Overview
This project demonstrates dynamic web content updates using Docker volumes.

## 📁 Project Structure
- `Dockerfile` - Base image and setup
- `html/` - Static content (dynamically updated)
- `update_content.sh` - Script for updates + backup
- `docker-compose.yml` - Service configuration
- `.github/workflows` - CI/CD automation

## 🚀 Getting Started
```bash
docker-compose up --build
./update_content.sh
