# Dockerfile for static HTML site
# Use a small, maintained nginx image
FROM nginx:stable-alpine

# Metadata
LABEL maintainer="cokpit-ai@example.com"

# Copy the single HTML file to nginx's default content directory
COPY cokpit.html /usr/share/nginx/html/index.html

# Expose default HTTP port for nginx
EXPOSE 80

# Use the default nginx command from the base image
# (no CMD specified so it inherits the base image's CMD)