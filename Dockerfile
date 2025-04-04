# Use an official Nginx image as the base
FROM nginx:latest

# Copy the HTML file into the Nginx web server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
