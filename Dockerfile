# Base image
FROM nginx

# Copy index.html file
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
