# Use the official Alpine Linux image
FROM alpine:latest

# Install nginx and git
RUN apk update && apk add --no-cache nginx git

# Clone the repository
RUN git clone https://github.com/younginnovations/internship-challenges /tmp/internship-challenges
