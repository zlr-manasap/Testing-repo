# Use the official nginx image as base
FROM nginx:alpine

# Copy the HTML file to nginx's default document root
COPY cokpit.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start nginx (default command)
CMD ["nginx", "-g", "daemon off;"]