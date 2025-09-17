#Build Stage
FROM  nginx:alpine

# Remove the default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your site content into nginx's html directory
COPY . /usr/share/nginx/html

# Expose port 80 (Cloud Run automatically maps ports)
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]