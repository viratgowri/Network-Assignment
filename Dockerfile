# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy your static HTML file into the container (if you have a custom index.html)
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground (default behavior for Nginx container)
CMD ["nginx", "-g", "daemon off;"]
