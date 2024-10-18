# Use the official Nginx image from Docker Hub as a base image
FROM nginx:latest

# Copy a custom index.html file (if you want to customize your Nginx app)
# Uncomment and replace `./index.html` with your actual file if needed
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

