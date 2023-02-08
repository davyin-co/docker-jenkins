# Introduce
Based on offical jenkins image, with ansible & docker support.

## docker-compose.yml example
```
version: '3'
services:
  jenkins:
    image: sparkpos/jenkins
    container_name: jenkins
    environment:
      - JAVA_OPTS="-Djava.awt.headless=true"
      - VIRTUAL_HOST=jenkins.drupalagile.com,jenkins.dev2.drupalagile.com
      - VIRTUAL_PORT=8080
      - HTTP_PROXY=v2ray:5080
      - HTTPS_PROXY=v2ray:5080
    ports:
      - "50000:50000"
      - "8080:8080"
    restart: always
    #mem_limit: 2G
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - /app/jenkins/data:/var/jenkins_home
  ```
