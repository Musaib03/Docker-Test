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
```

## Make sure You are in correct directory
C:\Users\Usename\Desktop\project-folder

## Make sure you Docker desktop is running

## How to Build and Run the Container

### 1. Build the Docker Image
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
If you modify `index.html`, you need to rebuild and restart:
```
docker build -t my-html-page .
docker run -d -p 8080:80 my-html-page
```

Correct Workflow for Your Dockerfile
### Build the Image Locally: Since your Dockerfile is designed to create a custom image, you need to build it locally. Run the following command in the directory containing your Dockerfile:

docker build -t my-html-page .


### Run the Container Locally: After building the image, you can run it using:

docker run -d -p 80:80 my-html-page

### Tag the Image: 
docker tag my-html-page Musaib0/my-html-page:latest

### Push the Image:
docker push Musaib0/my-html-page:latest

### Pull the Image:
docker pull Musaib0/my-html-page:latest

## Additional Notes
- If the container fails to start, check logs:
  ```
  docker logs <container_id>
  ```
- If you get a permission error, try running Docker with admin privileges.

Enjoy your Dockerized HTML page! 🚀

