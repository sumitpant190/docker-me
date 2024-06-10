# Docker Nginx Server Setup with Alpine Linux

## Project Description

This project provides a Dockerfile that automates the following tasks:

1. **Use the Alpine Linux Image**: The base image for the Docker container is Alpine Linux, a lightweight Linux distribution.
2. **Setup Nginx Server**: The Nginx web server is installed and configured to serve static files.
3. **Clone Repository**: The specified repository containing internship challenges is cloned.
4. **Copy Content**: A specific folder from the cloned repository is copied to the Nginx document root folder.
5. **Expose Port**: The container exposes port 9000 and maps it to the default Nginx port (80).
6. **Run Nginx**: The Nginx server is started and serves the specified HTML file.

When the Docker container is run, the HTML file is accessible from the browser at [http://localhost:9000/site/index.html](http://localhost:9000/site/index.html).

**Configuration File for Nginx**
Ensure that the configuration file for Nginx (nginx.conf) is kept within the directory of the Dockerfile. This file is copied to the container during the build process and is necessary for configuring the Nginx server.

## Steps to Build and Run the Docker Container

### 1. Build the Docker Image

To build the Docker image, use the following command:

```sh
docker build -t nginx-server .
```

### 2. Run the Container

To run the Docker container and map port 9000 on the host to port 80 in the container, use the following command:

```sh
docker run -d -p 9000:80 nginx-server
```



