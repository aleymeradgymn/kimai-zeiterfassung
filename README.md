----------------
Description
==================

This is a Docker Container for the Time Tracking Tool Kimai. This image is Based on Apache and PHP7.2.
The Database Configuration can be set when the Kimai Container ist fully started. You can choose which Kimai Version you want to install with the Environment.

```bash
KIMAI_VERSION=1.3.1
```


----------------
Docker Plain Example
==================
```bash
docker run --name kimai.example.de -e "KIMAI_VERSION=1.3.1" -d aleymeradgymn/kimai-zeiterfassung
```



Docker Compose Example
==================
Docker Compose Example with Traefik as Reverse Proxy
```bash
version: "3"
services:
  kimai.example.de:
    container_name: kimai.example.de
    environment:
      - KIMAI_VERSION=1.3.1
    expose:
      - 80/tcp
    image: aleymeradgymn/kimai-zeiterfassung
    labels:
      traefik.enable: true
      traefik.frontend.rule: 'Host:kimai.example.de, timetrack.example.com'
      traefik.port: 80
    network_mode: bridge
    restart: unless-stopped
```
