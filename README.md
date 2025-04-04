# Dockerized HTML Page

This project demonstrates how to serve a simple HTML page using Docker and Nginx.

## Prerequisites
- Docker installed on your system
- Basic knowledge of the command line

## Project Structure
```
project-folder/
├── index.html
├── Dockerfile
└── README.md
```

## Dockerfile
```dockerfile
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

##Make sure you are in your project directory
C:\Users\UserName\Desktop\project-folder

## How to Build and Run the Container

## 1. Build the Docker Image
docker build -t my-html-page .

### 2. Run the Docker Container
docker run -d -p 8080:80 my-html-page

### 3. Open in Browser
Go to: [http://localhost:8080](http://localhost:8080)

## Managing the Container

### Check Running Containers
docker ps

### Stop the Container
docker stop <container_id>

### Remove the Container
docker rm <container_id>

## Rebuilding After Changes
docker build -t my-html-page .
docker run -d -p 8080:80 my-html-page

## Additional Notes
  docker logs <container_id>

Enjoy your Dockerized HTML page! 🚀

