# Use the official Alpine Linux image
FROM alpine:latest

# Install nginx and git
RUN apk update && apk add --no-cache nginx git

# Clone the repository
RUN git clone https://github.com/younginnovations/internship-challenges /tmp/internship-challenges

# Copy the 'site' folder from the cloned repository to the nginx document root
RUN cp -r /tmp/internship-challenges/devops/docker-me/ /usr/share/nginx/html/

# Copy the custom nginx.conf to the nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

