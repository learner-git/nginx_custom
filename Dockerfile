# Base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /app

# Copy the script into the container
COPY script.sh /app/script.sh

# Copy files to container
COPY index.html /usr/share/nginx/html/index_org.html
COPY style.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Define environment variable
#ENV MY_SECRET project1

RUN chmod 777 /docker-entrypoint.sh
RUN chmod +x /app/script.sh

#ENTRYPOINT ["/app/script.sh"]
CMD ["sh", "/app/script.sh"]