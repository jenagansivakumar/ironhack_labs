# Use a lightweight web server image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the frontend files to the container
COPY . .

# Expose the port nginx will run on
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
