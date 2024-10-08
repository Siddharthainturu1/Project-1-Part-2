# Docker Nginx Static Site

This project contains a Dockerfile that sets up an Nginx server on an Ubuntu base, installs Bootstrap, and serves static content. The site is deployed on an EC2 instance.

## Steps to Build and Deploy

1. **Build Docker Image**
    ```bash
    sudo docker build -t nginx-static-site .
    ```

2. **Run Docker Container**
    ```bash
    sudo docker run -d -p 80:80 nginx-static-site
    ```

3. Access the site via the EC2 public IP: `http://your-ec2-public-ip`.

## Dockerfile Explanation

- The Dockerfile installs Nginx, Node.js, and Bootstrap.
- Static content is copied from the `static-content` folder into `/var/www/html/` for Nginx to serve.


